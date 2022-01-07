
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tbuf ;
struct TYPE_3__ {int type; int r_tty; int r_name; int l_name; scalar_t__ id_num; } ;
typedef TYPE_1__ CTL_MSG ;


 int LOG_DEBUG ;
 int NTYPES ;
 int snprintf (char*,int,char*,int) ;
 int syslog (int ,char*,char const*,char const*,long,int ,int ,int ) ;
 char** types ;

void
print_request(const char *cp, CTL_MSG *mp)
{
 const char *tp;
 char tbuf[80];

 if (mp->type > NTYPES) {
  (void)snprintf(tbuf, sizeof(tbuf), "type %d", mp->type);
  tp = tbuf;
 } else
  tp = types[mp->type];
 syslog(LOG_DEBUG, "%s: %s: id %lu, l_user %s, r_user %s, r_tty %s",
     cp, tp, (long)mp->id_num, mp->l_name, mp->r_name, mp->r_tty);
}
