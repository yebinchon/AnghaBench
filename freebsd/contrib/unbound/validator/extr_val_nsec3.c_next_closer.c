
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dname_count_labels (int *) ;
 int dname_remove_labels (int **,size_t*,int) ;

__attribute__((used)) static void
next_closer(uint8_t* qname, size_t qnamelen, uint8_t* ce,
 uint8_t** nm, size_t* nmlen)
{
 int strip = dname_count_labels(qname) - dname_count_labels(ce) -1;
 *nm = qname;
 *nmlen = qnamelen;
 if(strip>0)
  dname_remove_labels(nm, nmlen, strip);
}
