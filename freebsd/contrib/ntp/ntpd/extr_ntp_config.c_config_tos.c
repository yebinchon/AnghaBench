
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int orphan_cmds; } ;
typedef TYPE_2__ config_tree ;
struct TYPE_6__ {double d; } ;
struct TYPE_8__ {int attr; TYPE_1__ value; struct TYPE_8__* link; } ;
typedef TYPE_3__ attr_val ;


 TYPE_3__* HEAD_PFIFO (int ) ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int PROTO_BCPOLLBSTEP ;
 int PROTO_BEACON ;
 int PROTO_CEILING ;
 int PROTO_COHORT ;
 int PROTO_FLOOR ;
 int PROTO_MAXCLOCK ;
 int PROTO_MAXDIST ;
 int PROTO_MINCLOCK ;
 int PROTO_MINDISP ;
 int PROTO_MINSANE ;
 int PROTO_ORPHAN ;
 int PROTO_ORPHWAIT ;
 int STRATUM_UNSPEC ;
 int fatal_error (char*,int) ;
 int msyslog (int ,char*,int,int,...) ;
 int proto_config (int,int ,double,int *) ;
 int sys_maxclock ;
 int sys_minclock ;
 int sys_minsane ;

__attribute__((used)) static void
config_tos(
 config_tree *ptree
 )
{
 attr_val * tos;
 int item;
 double val;
 int l_maxclock = sys_maxclock;
 int l_minclock = sys_minclock;
 int l_minsane = sys_minsane;


 tos = HEAD_PFIFO(ptree->orphan_cmds);
 for (; tos != ((void*)0); tos = tos->link) {




  switch(tos->attr) {
  default:
   break;

  case 139:
   val = tos->value.d;
   if (val > 4) {
    msyslog(LOG_WARNING,
     "Using maximum bcpollbstep ceiling %d, %d requested",
     4, (int)val);
    tos->value.d = 4;
   } else if (val < 0) {
    msyslog(LOG_WARNING,
     "Using minimum bcpollbstep floor %d, %d requested",
     0, (int)val);
    tos->value.d = 0;
   }
   break;

  case 137:
   val = tos->value.d;
   if (val > STRATUM_UNSPEC - 1) {
    msyslog(LOG_WARNING,
     "Using maximum tos ceiling %d, %d requested",
     STRATUM_UNSPEC - 1, (int)val);
    tos->value.d = STRATUM_UNSPEC - 1;
   } else if (val < 1) {
    msyslog(LOG_WARNING,
     "Using minimum tos floor %d, %d requested",
     1, (int)val);
    tos->value.d = 1;
   }
   break;

  case 132:
   val = tos->value.d;
   if ((int)tos->value.d < 1)
    tos->value.d = 1;
   l_minclock = (int)tos->value.d;
   break;

  case 134:
   val = tos->value.d;
   if ((int)tos->value.d < 1)
    tos->value.d = 1;
   l_maxclock = (int)tos->value.d;
   break;

  case 130:
   val = tos->value.d;
   if ((int)tos->value.d < 0)
    tos->value.d = 0;
   l_minsane = (int)tos->value.d;
   break;
  }
 }

 if ( ! (l_minsane < l_minclock && l_minclock <= l_maxclock)) {
  msyslog(LOG_ERR,
   "tos error: must have minsane (%d) < minclock (%d) <= maxclock (%d)"
   " - daemon will not operate properly!",
   l_minsane, l_minclock, l_maxclock);
 }


 tos = HEAD_PFIFO(ptree->orphan_cmds);
 for (; tos != ((void*)0); tos = tos->link) {
  switch(tos->attr) {

  default:
   fatal_error("config-tos: attr-token=%d", tos->attr);

  case 139:
   item = PROTO_BCPOLLBSTEP;
   break;

  case 137:
   item = PROTO_CEILING;
   break;

  case 135:
   item = PROTO_FLOOR;
   break;

  case 136:
   item = PROTO_COHORT;
   break;

  case 129:
   item = PROTO_ORPHAN;
   break;

  case 128:
   item = PROTO_ORPHWAIT;
   break;

  case 131:
   item = PROTO_MINDISP;
   break;

  case 133:
   item = PROTO_MAXDIST;
   break;

  case 132:
   item = PROTO_MINCLOCK;
   break;

  case 134:
   item = PROTO_MAXCLOCK;
   break;

  case 130:
   item = PROTO_MINSANE;
   break;

  case 138:
   item = PROTO_BEACON;
   break;

  case 140:
   continue;
  }
  proto_config(item, 0, tos->value.d, ((void*)0));
 }
}
