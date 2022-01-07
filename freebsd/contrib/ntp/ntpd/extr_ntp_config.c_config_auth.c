
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_char ;
typedef void* keyid_t ;
struct TYPE_10__ {int revoke; int trusted_key_list; scalar_t__ request_key; scalar_t__ control_key; scalar_t__ keys; scalar_t__ cryptosw; scalar_t__ ntp_signd_socket; scalar_t__ keysdir; int crypto_cmd_list; } ;
struct TYPE_11__ {TYPE_3__ auth; } ;
typedef TYPE_4__ config_tree ;
struct TYPE_8__ {int first; int last; } ;
struct TYPE_9__ {int i; TYPE_1__ r; int s; } ;
struct TYPE_12__ {int attr; scalar_t__ type; TYPE_2__ value; struct TYPE_12__* link; } ;
typedef TYPE_5__ attr_val ;


 int CRYPTO_CONF_IDENT ;
 int CRYPTO_CONF_NID ;
 int CRYPTO_CONF_PRIV ;
 int CRYPTO_CONF_PW ;
 int CRYPTO_CONF_RAND ;
 int DPRINTF (int,char*) ;
 TYPE_5__* HEAD_PFIFO (int ) ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int NTP_MAXKEY ;
 int REQUIRE (int) ;
 int TRUE ;



 scalar_t__ T_Integer ;
 scalar_t__ T_Intrange ;


 int auth_prealloc_symkeys (int) ;
 int authtrust (int,int ) ;
 int crypto_config (int,int ) ;
 int crypto_setup () ;
 int cryptosw ;
 void* ctl_auth_keyid ;
 scalar_t__ default_keysdir ;
 scalar_t__ default_ntp_signd_socket ;
 scalar_t__ estrdup (scalar_t__) ;
 int fatal_error (char*,int) ;
 int free (scalar_t__) ;
 int getauthkeys (scalar_t__) ;
 void* info_auth_keyid ;
 scalar_t__ keysdir ;
 int msyslog (int ,char*,int,...) ;
 scalar_t__ ntp_signd_socket ;
 scalar_t__ sys_revoke ;

__attribute__((used)) static void
config_auth(
 config_tree *ptree
 )
{
 attr_val * my_val;
 int first;
 int last;
 int i;
 int count;
 if (ptree->auth.keysdir) {
  if (keysdir != default_keysdir)
   free(keysdir);
  keysdir = estrdup(ptree->auth.keysdir);
 }



 if (ptree->auth.ntp_signd_socket) {
  if (ntp_signd_socket != default_ntp_signd_socket)
   free(ntp_signd_socket);
  ntp_signd_socket = estrdup(ptree->auth.ntp_signd_socket);
 }
 count = 0;
 my_val = HEAD_PFIFO(ptree->auth.trusted_key_list);
 for (; my_val != ((void*)0); my_val = my_val->link) {
  if (T_Integer == my_val->type) {
   first = my_val->value.i;
   if (first > 1 && first <= NTP_MAXKEY)
    count++;
  } else {
   REQUIRE(T_Intrange == my_val->type);
   first = my_val->value.r.first;
   last = my_val->value.r.last;
   if (!(first > last || first < 1 ||
       last > NTP_MAXKEY)) {
    count += 1 + last - first;
   }
  }
 }
 auth_prealloc_symkeys(count);


 if (ptree->auth.keys)
  getauthkeys(ptree->auth.keys);


 if (ptree->auth.control_key)
  ctl_auth_keyid = (keyid_t)ptree->auth.control_key;


 if (ptree->auth.request_key) {
  DPRINTF(4, ("set info_auth_keyid to %08lx\n",
       (u_long) ptree->auth.request_key));
  info_auth_keyid = (keyid_t)ptree->auth.request_key;
 }


 my_val = HEAD_PFIFO(ptree->auth.trusted_key_list);
 for (; my_val != ((void*)0); my_val = my_val->link) {
  if (T_Integer == my_val->type) {
   first = my_val->value.i;
   if (first >= 1 && first <= NTP_MAXKEY) {
    authtrust(first, TRUE);
   } else {
    msyslog(LOG_NOTICE,
     "Ignoring invalid trustedkey %d, min 1 max %d.",
     first, NTP_MAXKEY);
   }
  } else {
   first = my_val->value.r.first;
   last = my_val->value.r.last;
   if (first > last || first < 1 ||
       last > NTP_MAXKEY) {
    msyslog(LOG_NOTICE,
     "Ignoring invalid trustedkey range %d ... %d, min 1 max %d.",
     first, last, NTP_MAXKEY);
   } else {
    for (i = first; i <= last; i++) {
     authtrust(i, TRUE);
    }
   }
  }
 }
}
