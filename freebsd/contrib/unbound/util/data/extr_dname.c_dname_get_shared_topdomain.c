
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t LDNS_MAX_DOMAINLEN ;
 int dname_count_labels (int *) ;
 int dname_lab_cmp (int *,int,int *,int,int*) ;
 int dname_remove_labels (int **,size_t*,int) ;

uint8_t* dname_get_shared_topdomain(uint8_t* d1, uint8_t* d2)
{
 int labs1, labs2, m;
 size_t len = LDNS_MAX_DOMAINLEN;
 labs1 = dname_count_labels(d1);
 labs2 = dname_count_labels(d2);
 (void)dname_lab_cmp(d1, labs1, d2, labs2, &m);
 dname_remove_labels(&d1, &len, labs1-m);
 return d1;
}
