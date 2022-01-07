
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_BITMAP ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_TYPE_NOT_IN_BITMAP ;
 int assert (int) ;
 int* ldns_rdf_data (int *) ;
 scalar_t__ ldns_rdf_get_type (int *) ;
 int ldns_rdf_size (int *) ;

ldns_status
ldns_nsec_bitmap_set_type(ldns_rdf* bitmap, ldns_rr_type type)
{
 uint8_t* dptr;
 uint8_t* dend;






 uint8_t window = type >> 8;
 uint8_t subtype = type & 0xff;

 if (! bitmap) {
  return 0;
 }
 assert(ldns_rdf_get_type(bitmap) == LDNS_RDF_TYPE_BITMAP);

 dptr = ldns_rdf_data(bitmap);
 dend = ldns_rdf_data(bitmap) + ldns_rdf_size(bitmap);




 while (dptr < dend && dptr[0] <= window) {

  if (dptr[0] == window && subtype / 8 < dptr[1] &&
    dptr + dptr[1] + 2 <= dend) {

   dptr[2 + subtype / 8] |= (0x80 >> (subtype % 8));
   return LDNS_STATUS_OK;
  }
  dptr += dptr[1] + 2;
 }
 return LDNS_STATUS_TYPE_NOT_IN_BITMAP;
}
