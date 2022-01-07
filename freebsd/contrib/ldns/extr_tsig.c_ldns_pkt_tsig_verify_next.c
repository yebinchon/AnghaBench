
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_FREE (int *) ;
 int LDNS_RDF_TYPE_DNAME ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_id (int *) ;
 int ldns_pkt_set_id (int *,int ) ;
 int ldns_pkt_set_tsig (int *,int *) ;
 int * ldns_pkt_tsig (int *) ;
 int ldns_rdf2native_int16 (int *) ;
 scalar_t__ ldns_rdf_compare (int *,int *) ;
 int ldns_rdf_deep_free (int *) ;
 int * ldns_rdf_new_frm_str (int ,char const*) ;
 int ldns_rr_rd_count (int *) ;
 int * ldns_rr_rdf (int *,int) ;
 scalar_t__ ldns_tsig_mac_new (int **,int *,size_t,char const*,int *,int *,int *,int *,int *,int *,int const*,int) ;
 int * ldns_tsig_prepare_pkt_wire (int const*,size_t,size_t*) ;

bool
ldns_pkt_tsig_verify_next(ldns_pkt *pkt, const uint8_t *wire, size_t wirelen, const char* key_name,
 const char *key_data, const ldns_rdf *orig_mac_rdf, int tsig_timers_only)
{
 ldns_rdf *fudge_rdf;
 ldns_rdf *algorithm_rdf;
 ldns_rdf *time_signed_rdf;
 ldns_rdf *orig_id_rdf;
 ldns_rdf *error_rdf;
 ldns_rdf *other_data_rdf;
 ldns_rdf *pkt_mac_rdf;
 ldns_rdf *my_mac_rdf;
 ldns_rdf *key_name_rdf = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_DNAME, key_name);
 uint16_t pkt_id, orig_pkt_id;
 ldns_status status;

 uint8_t *prepared_wire = ((void*)0);
 size_t prepared_wire_size = 0;

 ldns_rr *orig_tsig = ldns_pkt_tsig(pkt);

 if (!orig_tsig || ldns_rr_rd_count(orig_tsig) <= 6) {
  ldns_rdf_deep_free(key_name_rdf);
  return 0;
 }
 algorithm_rdf = ldns_rr_rdf(orig_tsig, 0);
 time_signed_rdf = ldns_rr_rdf(orig_tsig, 1);
 fudge_rdf = ldns_rr_rdf(orig_tsig, 2);
 pkt_mac_rdf = ldns_rr_rdf(orig_tsig, 3);
 orig_id_rdf = ldns_rr_rdf(orig_tsig, 4);
 error_rdf = ldns_rr_rdf(orig_tsig, 5);
 other_data_rdf = ldns_rr_rdf(orig_tsig, 6);


 ldns_pkt_set_tsig(pkt, ((void*)0));

 pkt_id = ldns_pkt_id(pkt);
 orig_pkt_id = ldns_rdf2native_int16(orig_id_rdf);
 ldns_pkt_set_id(pkt, orig_pkt_id);

 prepared_wire = ldns_tsig_prepare_pkt_wire(wire, wirelen, &prepared_wire_size);

 status = ldns_tsig_mac_new(&my_mac_rdf, prepared_wire, prepared_wire_size,
   key_data, key_name_rdf, fudge_rdf, algorithm_rdf,
   time_signed_rdf, error_rdf, other_data_rdf, orig_mac_rdf, tsig_timers_only);

 LDNS_FREE(prepared_wire);

 if (status != LDNS_STATUS_OK) {
  ldns_rdf_deep_free(key_name_rdf);
  return 0;
 }

 ldns_pkt_set_tsig(pkt, orig_tsig);
 ldns_pkt_set_id(pkt, pkt_id);

 ldns_rdf_deep_free(key_name_rdf);

 if (ldns_rdf_compare(pkt_mac_rdf, my_mac_rdf) == 0) {
  ldns_rdf_deep_free(my_mac_rdf);
  return 1;
 } else {
  ldns_rdf_deep_free(my_mac_rdf);
  return 0;
 }
}
