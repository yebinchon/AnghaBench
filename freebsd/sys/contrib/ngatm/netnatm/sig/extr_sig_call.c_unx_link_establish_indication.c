
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call {int dummy; } ;


 int call_se (struct call*) ;

__attribute__((used)) static void
unx_link_establish_indication(struct call *c)
{
 call_se(c);
}
