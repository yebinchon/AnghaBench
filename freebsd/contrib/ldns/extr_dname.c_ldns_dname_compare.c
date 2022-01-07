
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_DNAME_NORMALIZE (int) ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int assert (int) ;
 size_t ldns_dname_label_count (int const*) ;
 int* ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;

int
ldns_dname_compare(const ldns_rdf *dname1, const ldns_rdf *dname2)
{
 size_t lc1, lc2, lc1f, lc2f;
 size_t i;
 int result = 0;
 uint8_t *lp1, *lp2;





        if (!dname1 && !dname2) {
                return 0;
        }
        if (!dname1 || !dname2) {
                return -1;
        }




 assert(ldns_rdf_get_type(dname1) == LDNS_RDF_TYPE_DNAME);
 assert(ldns_rdf_get_type(dname2) == LDNS_RDF_TYPE_DNAME);

 lc1 = ldns_dname_label_count(dname1);
 lc2 = ldns_dname_label_count(dname2);

 if (lc1 == 0 && lc2 == 0) {
  return 0;
 }
 if (lc1 == 0) {
  return -1;
 }
 if (lc2 == 0) {
  return 1;
 }
 lc1--;
 lc2--;

 while (1) {

  lc1f = lc1;
  lp1 = ldns_rdf_data(dname1);
  while (lc1f > 0) {
   lp1 += *lp1 + 1;
   lc1f--;
  }


  lc2f = lc2;
  lp2 = ldns_rdf_data(dname2);
  while (lc2f > 0) {
   lp2 += *lp2 + 1;
   lc2f--;
  }


  for (i = 1; i < (size_t)(*lp1 + 1); i++) {
   if (i > *lp2) {

    result = 1;
    goto done;
   }
   if (LDNS_DNAME_NORMALIZE((int) *(lp1 + i)) <
       LDNS_DNAME_NORMALIZE((int) *(lp2 + i))) {
       result = -1;
       goto done;
   } else if (LDNS_DNAME_NORMALIZE((int) *(lp1 + i)) >
       LDNS_DNAME_NORMALIZE((int) *(lp2 + i))) {
       result = 1;
       goto done;
   }
  }
  if (*lp1 < *lp2) {

   result = -1;
   goto done;
  }
  if (lc1 == 0 && lc2 > 0) {
   result = -1;
   goto done;
  } else if (lc1 > 0 && lc2 == 0) {
   result = 1;
   goto done;
  } else if (lc1 == 0 && lc2 == 0) {
   result = 0;
   goto done;
  }
  lc1--;
  lc2--;
 }

 done:
 return result;
}
