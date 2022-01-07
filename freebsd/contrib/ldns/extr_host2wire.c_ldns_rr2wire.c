
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_buffer_export (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 size_t ldns_buffer_position (int *) ;
 scalar_t__ ldns_rr2buffer_wire (int *,int const*,int) ;

ldns_status
ldns_rr2wire(uint8_t **dest, const ldns_rr *rr, int section, size_t *result_size)
{
 ldns_buffer *buffer = ldns_buffer_new(LDNS_MAX_PACKETLEN);
 ldns_status status;
 *result_size = 0;
 *dest = ((void*)0);
 if(!buffer) return LDNS_STATUS_MEM_ERR;

 status = ldns_rr2buffer_wire(buffer, rr, section);
 if (status == LDNS_STATUS_OK) {
  *result_size = ldns_buffer_position(buffer);
  *dest = (uint8_t *) ldns_buffer_export(buffer);
 }
 ldns_buffer_free(buffer);
 return status;
}
