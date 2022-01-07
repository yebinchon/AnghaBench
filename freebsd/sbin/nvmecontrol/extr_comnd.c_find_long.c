
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int val; int * name; } ;



__attribute__((used)) static int
find_long(struct option *lopts, int ch)
{
 int i;

 for (i = 0; lopts[i].val != ch && lopts[i].name != ((void*)0); i++)
  continue;
 return (i);
}
