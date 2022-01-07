
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;

void
ldns_rdf_free(ldns_rdf *rd)
{
 if (rd) {
  LDNS_FREE(rd);
 }
}
