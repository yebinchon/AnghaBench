
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 size_t STEP_RESOLVE_ROUTE ;
 int * completed ;
 int end_perf (struct node*,size_t) ;

__attribute__((used)) static void route_handler(struct node *n)
{
 end_perf(n, STEP_RESOLVE_ROUTE);
 completed[STEP_RESOLVE_ROUTE]++;
}
