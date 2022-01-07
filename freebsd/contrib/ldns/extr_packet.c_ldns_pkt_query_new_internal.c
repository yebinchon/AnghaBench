
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
struct TYPE_7__ {int * _tsig_rr; } ;
typedef TYPE_1__ ldns_pkt ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_SECTION_AUTHORITY ;
 int LDNS_SECTION_QUESTION ;
 int ldns_pkt_free (TYPE_1__*) ;
 TYPE_1__* ldns_pkt_new () ;
 int ldns_pkt_push_rr (TYPE_1__*,int ,int *) ;
 int ldns_pkt_set_flags (TYPE_1__*,int ) ;
 int * ldns_rr_new () ;
 int ldns_rr_set_class (int *,int ) ;
 int ldns_rr_set_owner (int *,int *) ;
 int ldns_rr_set_question (int *,int) ;
 int ldns_rr_set_type (int *,int ) ;

__attribute__((used)) static ldns_pkt *
ldns_pkt_query_new_internal(ldns_rdf *rr_name, ldns_rr_type rr_type,
 ldns_rr_class rr_class, uint16_t flags, ldns_rr* authsoa_rr)
{
 ldns_pkt *packet;
 ldns_rr *question_rr;

 packet = ldns_pkt_new();
 if (!packet) {
  return ((void*)0);
 }

 if (!ldns_pkt_set_flags(packet, flags)) {
  return ((void*)0);
 }

 question_rr = ldns_rr_new();
 if (!question_rr) {
  ldns_pkt_free(packet);
  return ((void*)0);
 }

 if (rr_type == 0) {
  rr_type = LDNS_RR_TYPE_A;
 }
 if (rr_class == 0) {
  rr_class = LDNS_RR_CLASS_IN;
 }

 ldns_rr_set_owner(question_rr, rr_name);
 ldns_rr_set_type(question_rr, rr_type);
 ldns_rr_set_class(question_rr, rr_class);
        ldns_rr_set_question(question_rr, 1);
 ldns_pkt_push_rr(packet, LDNS_SECTION_QUESTION, question_rr);

 if (authsoa_rr) {
  ldns_pkt_push_rr(packet, LDNS_SECTION_AUTHORITY, authsoa_rr);
 }

 packet->_tsig_rr = ((void*)0);
 return packet;
}
