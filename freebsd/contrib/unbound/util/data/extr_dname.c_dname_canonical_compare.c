
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dname_canon_lab_cmp (int *,int,int *,int,int*) ;
 int dname_count_labels (int *) ;

int
dname_canonical_compare(uint8_t* d1, uint8_t* d2)
{
 int labs1, labs2, m;
 labs1 = dname_count_labels(d1);
 labs2 = dname_count_labels(d2);
 return dname_canon_lab_cmp(d1, labs1, d2, labs2, &m);
}
