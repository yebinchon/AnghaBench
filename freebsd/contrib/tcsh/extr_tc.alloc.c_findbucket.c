
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {union overhead* ov_next; } ;


 size_t NBUCKETS ;
 union overhead** nextf ;

__attribute__((used)) static int
findbucket(union overhead *freep, int srchlen)
{
    union overhead *p;
    size_t i;
    int j;

    for (i = 0; i < NBUCKETS; i++) {
 j = 0;
 for (p = nextf[i]; p && j != srchlen; p = p->ov_next) {
     if (p == freep)
  return (i);
     j++;
 }
    }
    return (-1);
}
