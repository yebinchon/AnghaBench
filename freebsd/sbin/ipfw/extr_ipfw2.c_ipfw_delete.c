
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rt ;
struct TYPE_5__ {int set; int start_rule; int end_rule; scalar_t__ new_set; int flags; } ;
typedef TYPE_1__ ipfw_range_tlv ;
struct TYPE_6__ {int use_set; int do_dynamic; scalar_t__ do_force; scalar_t__ do_quiet; scalar_t__ do_pipe; scalar_t__ do_nat; } ;


 int EX_DATAERR ;
 int EX_OK ;
 int EX_UNAVAILABLE ;
 int IPFW_RCFLAG_ALL ;
 int IPFW_RCFLAG_DYNAMIC ;
 int IPFW_RCFLAG_RANGE ;
 int IPFW_RCFLAG_SET ;
 int IP_FW_NAT_DEL ;
 int IP_FW_XDEL ;
 int NEED1 (char*) ;
 scalar_t__ _substrcmp (char*,char*) ;
 TYPE_4__ co ;
 int do_cmd (int ,int*,int) ;
 int do_range_cmd (int ,TYPE_1__*) ;
 int errx (int ,char*) ;
 int exit (int) ;
 int ipfw_delete_pipe (scalar_t__,int) ;
 scalar_t__ isdigit (char) ;
 int memset (TYPE_1__*,int ,int) ;
 int strtol (char*,char**,int) ;
 int warn (char*,int) ;
 int warnx (char*,int,...) ;

void
ipfw_delete(char *av[])
{
 ipfw_range_tlv rt;
 char *sep;
 int i, j;
 int exitval = EX_OK;
 int do_set = 0;

 av++;
 NEED1("missing rule specification");
 if ( *av && _substrcmp(*av, "set") == 0) {



  if (co.use_set)
   errx(EX_DATAERR, "invalid syntax");
  do_set = 1;
  av++;
 }


 while (*av && isdigit(**av)) {
  i = strtol(*av, &sep, 10);
  j = i;
  if (*sep== '-')
   j = strtol(sep + 1, ((void*)0), 10);
  av++;
  if (co.do_nat) {
   exitval = do_cmd(IP_FW_NAT_DEL, &i, sizeof i);
   if (exitval) {
    exitval = EX_UNAVAILABLE;
    if (co.do_quiet)
     continue;
    warn("nat %u not available", i);
   }
  } else if (co.do_pipe) {
   exitval = ipfw_delete_pipe(co.do_pipe, i);
  } else {
   memset(&rt, 0, sizeof(rt));
   if (do_set != 0) {
    rt.set = i & 31;
    rt.flags = IPFW_RCFLAG_SET;
   } else {
    rt.start_rule = i & 0xffff;
    rt.end_rule = j & 0xffff;
    if (rt.start_rule == 0 && rt.end_rule == 0)
     rt.flags |= IPFW_RCFLAG_ALL;
    else
     rt.flags |= IPFW_RCFLAG_RANGE;
    if (co.use_set != 0) {
     rt.set = co.use_set - 1;
     rt.flags |= IPFW_RCFLAG_SET;
    }
   }
   if (co.do_dynamic == 2)
    rt.flags |= IPFW_RCFLAG_DYNAMIC;
   i = do_range_cmd(IP_FW_XDEL, &rt);
   if (i != 0) {
    exitval = EX_UNAVAILABLE;
    if (co.do_quiet)
     continue;
    warn("rule %u: setsockopt(IP_FW_XDEL)",
        rt.start_rule);
   } else if (rt.new_set == 0 && do_set == 0 &&
       co.do_dynamic != 2) {
    exitval = EX_UNAVAILABLE;
    if (co.do_quiet)
     continue;
    if (rt.start_rule != rt.end_rule)
     warnx("no rules rules in %u-%u range",
         rt.start_rule, rt.end_rule);
    else
     warnx("rule %u not found",
         rt.start_rule);
   }
  }
 }
 if (exitval != EX_OK && co.do_force == 0)
  exit(exitval);
}
