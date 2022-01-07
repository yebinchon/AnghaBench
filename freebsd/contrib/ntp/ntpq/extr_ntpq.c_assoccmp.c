
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct association {scalar_t__ assid; } ;



__attribute__((used)) static int
assoccmp(
 const void *t1,
 const void *t2
 )
{
 const struct association *ass1 = t1;
 const struct association *ass2 = t2;

 if (ass1->assid < ass2->assid)
  return -1;
 if (ass1->assid > ass2->assid)
  return 1;
 return 0;
}
