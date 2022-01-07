
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rt_msghdr {int rtm_type; } ;
struct rt_addrinfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 TYPE_1__* INFO_GATE (struct rt_addrinfo*) ;
 int S_ADDR (TYPE_1__*) ;
 int age (int ) ;
 int rdisc_age (int ) ;
 scalar_t__ rdisc_ok ;
 int rtm_type_name (int ) ;
 int trace_act (char*,int ) ;

__attribute__((used)) static void
rtm_lose(struct rt_msghdr *rtm,
  struct rt_addrinfo *info)
{
 if (INFO_GATE(info) == 0
     || INFO_GATE(info)->sa_family != AF_INET) {
  trace_act("ignore %s without gateway",
     rtm_type_name(rtm->rtm_type));
  return;
 }

 if (rdisc_ok)
  rdisc_age(S_ADDR(INFO_GATE(info)));
 age(S_ADDR(INFO_GATE(info)));
}
