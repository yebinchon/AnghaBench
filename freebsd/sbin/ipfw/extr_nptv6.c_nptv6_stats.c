
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const* uintmax_t ;
typedef scalar_t__ uint8_t ;
struct ipfw_nptv6_stats {scalar_t__ dropped; scalar_t__ ex2in; scalar_t__ in2ex; } ;
struct TYPE_2__ {scalar_t__ use_set; } ;


 int EX_OSERR ;
 TYPE_1__ co ;
 int err (int ,char*) ;
 scalar_t__ nptv6_get_stats (char const*,scalar_t__,struct ipfw_nptv6_stats*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
nptv6_stats(const char *name, uint8_t set)
{
 struct ipfw_nptv6_stats stats;

 if (nptv6_get_stats(name, set, &stats) != 0)
  err(EX_OSERR, "Error retrieving stats");

 if (co.use_set != 0 || set != 0)
  printf("set %u ", set);
 printf("nptv6 %s\n", name);
 printf("\t%ju packets translated (internal to external)\n",
     (uintmax_t)stats.in2ex);
 printf("\t%ju packets translated (external to internal)\n",
     (uintmax_t)stats.ex2in);
 printf("\t%ju packets dropped due to some error\n",
     (uintmax_t)stats.dropped);
}
