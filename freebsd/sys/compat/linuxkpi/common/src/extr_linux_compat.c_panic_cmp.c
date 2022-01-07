
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 int panic (char*) ;

int
panic_cmp(struct rb_node *one, struct rb_node *two)
{
 panic("no cmp");
}
