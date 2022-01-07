
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_3__ {char* n_bytes; scalar_t__ n_len; } ;
typedef TYPE_1__ netobj ;
typedef int des_block ;
typedef int AUTH ;


 int LOG_ERR ;
 int * authdes_pk_seccreate (char const*,TYPE_1__*,scalar_t__ const,char const*,int const*,int *) ;
 int getpublickey (char const*,char*) ;
 scalar_t__ strlen (char*) ;
 int syslog (int ,char*,char const*) ;

AUTH *
authdes_seccreate(const char *servername, const u_int win,
 const char *timehost, const des_block *ckey)
{
 u_char pkey_data[1024];
 netobj pkey;
 AUTH *dummy;

 if (! getpublickey(servername, (char *) pkey_data)) {
  syslog(LOG_ERR,
      "authdes_seccreate: no public key found for %s",
      servername);
  return (((void*)0));
 }

 pkey.n_bytes = (char *) pkey_data;
 pkey.n_len = (u_int)strlen((char *)pkey_data) + 1;
 dummy = authdes_pk_seccreate(servername, &pkey, win, timehost,
     ckey, ((void*)0));
 return (dummy);
}
