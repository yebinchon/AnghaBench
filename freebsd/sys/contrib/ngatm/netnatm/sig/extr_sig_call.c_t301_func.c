
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call {int dummy; } ;


 int SIGC_T301 ;
 int uni_enq_call (struct call*,int ,int ,int *,int *) ;

__attribute__((used)) static void
t301_func(struct call *c)
{
 uni_enq_call(c, SIGC_T301, 0, ((void*)0), ((void*)0));
}
