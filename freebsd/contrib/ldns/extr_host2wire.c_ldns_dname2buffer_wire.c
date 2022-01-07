
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_dname2buffer_wire_compress (int *,int const*,int *) ;

ldns_status
ldns_dname2buffer_wire(ldns_buffer *buffer, const ldns_rdf *name)
{
 return ldns_dname2buffer_wire_compress(buffer, name, ((void*)0));
}
