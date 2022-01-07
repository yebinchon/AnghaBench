
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbq_opts {int flags; } ;
struct TYPE_2__ {struct cbq_opts cbq_opts; } ;
struct pf_altq {TYPE_1__ pq_u; } ;


 int CBQCLF_BORROW ;
 int CBQCLF_CLEARDSCP ;
 int CBQCLF_CODEL ;
 int CBQCLF_DEFCLASS ;
 int CBQCLF_ECN ;
 int CBQCLF_EFFICIENT ;
 int CBQCLF_FLOWVALVE ;
 int CBQCLF_RED ;
 int CBQCLF_RIO ;
 int CBQCLF_ROOTCLASS ;
 int CBQCLF_WRR ;
 int printf (char*) ;

__attribute__((used)) static int
print_cbq_opts(const struct pf_altq *a)
{
 const struct cbq_opts *opts;

 opts = &a->pq_u.cbq_opts;
 if (opts->flags) {
  printf("cbq(");
  if (opts->flags & CBQCLF_RED)
   printf(" red");
  if (opts->flags & CBQCLF_ECN)
   printf(" ecn");
  if (opts->flags & CBQCLF_RIO)
   printf(" rio");
  if (opts->flags & CBQCLF_CODEL)
   printf(" codel");
  if (opts->flags & CBQCLF_CLEARDSCP)
   printf(" cleardscp");
  if (opts->flags & CBQCLF_FLOWVALVE)
   printf(" flowvalve");
  if (opts->flags & CBQCLF_BORROW)
   printf(" borrow");
  if (opts->flags & CBQCLF_WRR)
   printf(" wrr");
  if (opts->flags & CBQCLF_EFFICIENT)
   printf(" efficient");
  if (opts->flags & CBQCLF_ROOTCLASS)
   printf(" root");
  if (opts->flags & CBQCLF_DEFCLASS)
   printf(" default");
  printf(" ) ");

  return (1);
 } else
  return (0);
}
