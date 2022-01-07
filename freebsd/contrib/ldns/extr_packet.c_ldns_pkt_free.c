
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _answerfrom; int _edns_data; int _tsig_rr; int _additional; int _authority; int _answer; int _question; struct TYPE_4__* _header; } ;
typedef TYPE_1__ ldns_pkt ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_rdf_deep_free (int ) ;
 int ldns_rr_free (int ) ;
 int ldns_rr_list_deep_free (int ) ;

void
ldns_pkt_free(ldns_pkt *packet)
{
 if (packet) {
  LDNS_FREE(packet->_header);
  ldns_rr_list_deep_free(packet->_question);
  ldns_rr_list_deep_free(packet->_answer);
  ldns_rr_list_deep_free(packet->_authority);
  ldns_rr_list_deep_free(packet->_additional);
  ldns_rr_free(packet->_tsig_rr);
  ldns_rdf_deep_free(packet->_edns_data);
  ldns_rdf_deep_free(packet->_answerfrom);
  LDNS_FREE(packet);
 }
}
