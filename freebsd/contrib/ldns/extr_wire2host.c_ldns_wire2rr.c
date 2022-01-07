
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef scalar_t__ ldns_pkt_section ;


 scalar_t__ LDNS_SECTION_QUESTION ;
 int LDNS_STATUS_CHECK_GOTO (int ,int ) ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_PACKET_OVERFLOW ;
 int ldns_read_uint16 (int const*) ;
 int ldns_read_uint32 (int const*) ;
 int ldns_rr_free (int *) ;
 int * ldns_rr_new () ;
 int ldns_rr_set_class (int *,int ) ;
 int ldns_rr_set_owner (int *,int *) ;
 int ldns_rr_set_question (int *,int) ;
 int ldns_rr_set_ttl (int *,int ) ;
 int ldns_rr_set_type (int *,int ) ;
 int ldns_wire2dname (int **,int const*,size_t,size_t*) ;
 int ldns_wire2rdf (int *,int const*,size_t,size_t*) ;
 int status_error ;

ldns_status
ldns_wire2rr(ldns_rr **rr_p, const uint8_t *wire, size_t max,
             size_t *pos, ldns_pkt_section section)
{
 ldns_rdf *owner = ((void*)0);
 ldns_rr *rr = ldns_rr_new();
 ldns_status status;

 status = ldns_wire2dname(&owner, wire, max, pos);
 LDNS_STATUS_CHECK_GOTO(status, status_error);

 ldns_rr_set_owner(rr, owner);

 if (*pos + 4 > max) {
  status = LDNS_STATUS_PACKET_OVERFLOW;
  goto status_error;
 }

 ldns_rr_set_type(rr, ldns_read_uint16(&wire[*pos]));
 *pos = *pos + 2;

 ldns_rr_set_class(rr, ldns_read_uint16(&wire[*pos]));
 *pos = *pos + 2;

 if (section != LDNS_SECTION_QUESTION) {
  if (*pos + 4 > max) {
   status = LDNS_STATUS_PACKET_OVERFLOW;
   goto status_error;
  }
  ldns_rr_set_ttl(rr, ldns_read_uint32(&wire[*pos]));

  *pos = *pos + 4;
  status = ldns_wire2rdf(rr, wire, max, pos);

  LDNS_STATUS_CHECK_GOTO(status, status_error);
        ldns_rr_set_question(rr, 0);
 } else {
        ldns_rr_set_question(rr, 1);
    }

 *rr_p = rr;
 return LDNS_STATUS_OK;

status_error:
 ldns_rr_free(rr);
 return status;
}
