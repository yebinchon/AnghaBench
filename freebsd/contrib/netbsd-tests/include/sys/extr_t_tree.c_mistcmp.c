
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mist {int key; } ;



__attribute__((used)) static int
mistcmp(struct mist *a, struct mist *b)
{



 if (b->key > a->key)
  return 1;
 else if (b->key < a->key)
  return (-1);
 else
  return 0;

}
