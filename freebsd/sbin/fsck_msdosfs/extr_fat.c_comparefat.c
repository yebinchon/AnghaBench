
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fatEntry {scalar_t__ next; } ;
struct bootblock {size_t NumClusters; } ;
typedef size_t cl_t ;


 size_t CLUST_FIRST ;
 int FSOK ;
 int clustdiffer (size_t,scalar_t__*,scalar_t__*,int ) ;

int
comparefat(struct bootblock *boot, struct fatEntry *first,
    struct fatEntry *second, u_int fatnum)
{
 cl_t cl;
 int ret = FSOK;

 for (cl = CLUST_FIRST; cl < boot->NumClusters; cl++)
  if (first[cl].next != second[cl].next)
   ret |= clustdiffer(cl, &first[cl].next, &second[cl].next, fatnum);
 return ret;
}
