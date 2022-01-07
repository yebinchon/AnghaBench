
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;



void
restore_my_cleanups (struct cleanup **pmy_chain, struct cleanup *chain)
{
  *pmy_chain = chain;
}
