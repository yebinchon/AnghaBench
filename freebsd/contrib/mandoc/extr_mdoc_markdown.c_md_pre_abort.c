
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int abort () ;

__attribute__((used)) static int
md_pre_abort(struct roff_node *n)
{
 abort();
}
