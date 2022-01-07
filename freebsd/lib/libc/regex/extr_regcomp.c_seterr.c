
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int error; void* end; void* next; } ;


 void* nuls ;

__attribute__((used)) static int
seterr(struct parse *p, int e)
{
 if (p->error == 0)
  p->error = e;
 p->next = nuls;
 p->end = nuls;
 return(0);
}
