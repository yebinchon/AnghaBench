
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int ldns_buffer_printf (int *,char*,long long) ;
 int ldns_buffer_status (int *) ;
 int* ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_status
ldns_rdf2buffer_str_tsigtime(ldns_buffer *output,const ldns_rdf *rdf)
{

 uint64_t tsigtime = 0;
 uint8_t *data = ldns_rdf_data(rdf);
 uint64_t d0, d1, d2, d3, d4, d5;

 if (ldns_rdf_size(rdf) < 6) {
  return LDNS_STATUS_WIRE_RDATA_ERR;
 }
 d0 = data[0];
 d1 = data[1];
 d2 = data[2];
 d3 = data[3];
 d4 = data[4];
 d5 = data[5];
 tsigtime = (d0<<40) | (d1<<32) | (d2<<24) | (d3<<16) | (d4<<8) | d5;

 ldns_buffer_printf(output, "%llu ", (long long)tsigtime);

 return ldns_buffer_status(output);
}
