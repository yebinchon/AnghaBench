
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 size_t STEP_DISCONNECT ;
 int * completed ;
 int end_perf (struct node*,size_t) ;

__attribute__((used)) static void disc_handler(struct node *n)
{
 end_perf(n, STEP_DISCONNECT);
 completed[STEP_DISCONNECT]++;
}
