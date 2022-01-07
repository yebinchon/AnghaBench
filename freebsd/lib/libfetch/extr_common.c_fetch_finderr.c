
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcherr {int num; } ;



__attribute__((used)) static struct fetcherr *
fetch_finderr(struct fetcherr *p, int e)
{
 while (p->num != -1 && p->num != e)
  p++;
 return (p);
}
