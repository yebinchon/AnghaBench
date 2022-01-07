
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opie {int opie_n; } ;


 int opiegetsequence (struct opie*) ;

int testgetsequence()
{
  struct opie testin;
  testin.opie_n = 42;

  if (opiegetsequence(&testin) != 42)
    return -1;

  return 0;
}
