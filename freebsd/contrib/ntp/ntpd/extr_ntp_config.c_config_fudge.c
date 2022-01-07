
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct refclockstat {int flags; int haveflags; int fudgeval2; int fudgeval1; int fudgetime2; int fudgetime1; } ;
typedef int sockaddr_u ;
struct TYPE_8__ {int fudge; } ;
typedef TYPE_2__ config_tree ;
struct TYPE_7__ {int i; int s; int d; } ;
struct TYPE_9__ {int attr; TYPE_1__ value; struct TYPE_9__* link; } ;
typedef TYPE_3__ attr_val ;
struct TYPE_10__ {int address; } ;
typedef TYPE_4__ address_node ;
struct TYPE_11__ {int options; TYPE_4__* addr; struct TYPE_11__* link; } ;
typedef TYPE_5__ addr_opts_node ;


 int CLK_FLAG1 ;
 int CLK_FLAG2 ;
 int CLK_FLAG3 ;
 int CLK_FLAG4 ;
 int CLK_HAVEFLAG1 ;
 int CLK_HAVEFLAG2 ;
 int CLK_HAVEFLAG3 ;
 int CLK_HAVEFLAG4 ;
 int CLK_HAVETIME1 ;
 int CLK_HAVETIME2 ;
 int CLK_HAVEVAL1 ;
 int CLK_HAVEVAL2 ;
 void* HEAD_PFIFO (int ) ;
 int ISREFCLOCKADR (int *) ;
 int LOG_ERR ;
 int ZERO (struct refclockstat) ;
 int ZERO_SOCK (int *) ;
 int exit (int) ;
 int getnetnum (int ,int *,int,int ) ;
 int memcpy (int *,int ,int ) ;
 int min (int ,int) ;
 int msyslog (int ,char*,int ,...) ;
 int refclock_control (int *,struct refclockstat*,int *) ;
 int stoa (int *) ;
 int strlen (int ) ;
 int t_REF ;
 int token_name (int) ;

__attribute__((used)) static void
config_fudge(
 config_tree *ptree
 )
{
 addr_opts_node *curr_fudge;
 attr_val *curr_opt;
 sockaddr_u addr_sock;
 address_node *addr_node;
 struct refclockstat clock_stat;
 int err_flag;

 curr_fudge = HEAD_PFIFO(ptree->fudge);
 for (; curr_fudge != ((void*)0); curr_fudge = curr_fudge->link) {
  err_flag = 0;




  addr_node = curr_fudge->addr;
  ZERO_SOCK(&addr_sock);
  if (getnetnum(addr_node->address, &addr_sock, 1, t_REF)
      != 1) {
   err_flag = 1;
   msyslog(LOG_ERR,
    "unrecognized fudge reference clock address %s, line ignored",
    addr_node->address);
  } else if (!ISREFCLOCKADR(&addr_sock)) {
   err_flag = 1;
   msyslog(LOG_ERR,
    "inappropriate address %s for the fudge command, line ignored",
    stoa(&addr_sock));
  }


  ZERO(clock_stat);
  curr_opt = HEAD_PFIFO(curr_fudge->options);
  for (; curr_opt != ((void*)0); curr_opt = curr_opt->link) {
   switch (curr_opt->attr) {

   case 129:
    clock_stat.haveflags |= CLK_HAVETIME1;
    clock_stat.fudgetime1 = curr_opt->value.d;
    break;

   case 128:
    clock_stat.haveflags |= CLK_HAVETIME2;
    clock_stat.fudgetime2 = curr_opt->value.d;
    break;

   case 130:
    clock_stat.haveflags |= CLK_HAVEVAL1;
    clock_stat.fudgeval1 = curr_opt->value.i;
    break;

   case 131:
    clock_stat.haveflags |= CLK_HAVEVAL2;
    clock_stat.fudgeval2 = 0;
    memcpy(&clock_stat.fudgeval2,
           curr_opt->value.s,
           min(strlen(curr_opt->value.s), 4));
    break;

   case 135:
    clock_stat.haveflags |= CLK_HAVEFLAG1;
    if (curr_opt->value.i)
     clock_stat.flags |= CLK_FLAG1;
    else
     clock_stat.flags &= ~CLK_FLAG1;
    break;

   case 134:
    clock_stat.haveflags |= CLK_HAVEFLAG2;
    if (curr_opt->value.i)
     clock_stat.flags |= CLK_FLAG2;
    else
     clock_stat.flags &= ~CLK_FLAG2;
    break;

   case 133:
    clock_stat.haveflags |= CLK_HAVEFLAG3;
    if (curr_opt->value.i)
     clock_stat.flags |= CLK_FLAG3;
    else
     clock_stat.flags &= ~CLK_FLAG3;
    break;

   case 132:
    clock_stat.haveflags |= CLK_HAVEFLAG4;
    if (curr_opt->value.i)
     clock_stat.flags |= CLK_FLAG4;
    else
     clock_stat.flags &= ~CLK_FLAG4;
    break;

   default:
    msyslog(LOG_ERR,
     "Unexpected fudge flag %s (%d) for %s",
     token_name(curr_opt->attr),
     curr_opt->attr, addr_node->address);
    exit(curr_opt->attr ? curr_opt->attr : 1);
   }
  }




 }
}
