
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,...) ;
 int ldns_buffer_status (int *) ;
 int * ldns_rdf_data (int ) ;
 size_t ldns_rdf_size (int ) ;
 int ldns_rr_get_type (int const*) ;
 size_t ldns_rr_rd_count (int const*) ;
 int ldns_rr_rdf (int const*,size_t) ;

__attribute__((used)) static ldns_status
ldns_rr2buffer_str_rfc3597(ldns_buffer *output, const ldns_rr *rr)
{
 size_t total_rdfsize = 0;
 size_t i, j;

 ldns_buffer_printf(output, "TYPE%u\t", ldns_rr_get_type(rr));
 for (i = 0; i < ldns_rr_rd_count(rr); i++) {
  total_rdfsize += ldns_rdf_size(ldns_rr_rdf(rr, i));
 }
 if (total_rdfsize == 0) {
  ldns_buffer_printf(output, "\\# 0\n");
  return ldns_buffer_status(output);
 }
 ldns_buffer_printf(output, "\\# %d ", total_rdfsize);
 for (i = 0; i < ldns_rr_rd_count(rr); i++) {
  for (j = 0; j < ldns_rdf_size(ldns_rr_rdf(rr, i)); j++) {
   ldns_buffer_printf(output, "%.2x",
     ldns_rdf_data(ldns_rr_rdf(rr, i))[j]);
  }
 }
 ldns_buffer_printf(output, "\n");
 return ldns_buffer_status(output);
}
