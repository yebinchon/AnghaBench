
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dname_count_labels (int *) ;
 int dname_remove_labels (int **,size_t*,int) ;
 int dname_strict_subdomain (int *,int,int *,int) ;
 int log_assert (int ) ;

__attribute__((used)) static void
az_nsec3_get_nextcloser(uint8_t* cenm, uint8_t* qname, size_t qname_len,
 uint8_t** nx, size_t* nxlen)
{
 int celabs = dname_count_labels(cenm);
 int qlabs = dname_count_labels(qname);
 int strip = qlabs - celabs -1;
 log_assert(dname_strict_subdomain(qname, qlabs, cenm, celabs));
 *nx = qname;
 *nxlen = qname_len;
 if(strip>0)
  dname_remove_labels(nx, nxlen, strip);
}
