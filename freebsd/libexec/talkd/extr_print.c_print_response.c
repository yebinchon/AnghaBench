
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tbuf ;
typedef int abuf ;
struct TYPE_3__ {int type; int answer; int id_num; } ;
typedef TYPE_1__ CTL_RESPONSE ;


 int LOG_DEBUG ;
 int NANSWERS ;
 int NTYPES ;
 char** answers ;
 int ntohl (int ) ;
 int snprintf (char*,int,char*,int) ;
 int syslog (int ,char*,char const*,char const*,char const*,int ) ;
 char** types ;

void
print_response(const char *cp, CTL_RESPONSE *rp)
{
 const char *tp, *ap;
 char tbuf[80], abuf[80];

 if (rp->type > NTYPES) {
  (void)snprintf(tbuf, sizeof(tbuf), "type %d", rp->type);
  tp = tbuf;
 } else
  tp = types[rp->type];
 if (rp->answer > NANSWERS) {
  (void)snprintf(abuf, sizeof(abuf), "answer %d", rp->answer);
  ap = abuf;
 } else
  ap = answers[rp->answer];
 syslog(LOG_DEBUG, "%s: %s: %s, id %d", cp, tp, ap, ntohl(rp->id_num));
}
