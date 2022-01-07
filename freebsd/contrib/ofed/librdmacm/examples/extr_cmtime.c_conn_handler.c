
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 size_t STEP_CONNECT ;
 int * completed ;
 int end_perf (struct node*,size_t) ;

__attribute__((used)) static void conn_handler(struct node *n)
{
 end_perf(n, STEP_CONNECT);
 completed[STEP_CONNECT]++;
}
