
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_buffer ;
typedef int ldns_algorithm ;


 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_algorithm2buffer_str (int *,int ) ;
 char* ldns_buffer_export2str (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int) ;

char *
ldns_pkt_algorithm2str(ldns_algorithm algorithm)
{
 char *str;
 ldns_buffer *buf;

 buf = ldns_buffer_new(10);
 if (!buf) {
  return ((void*)0);
 }

 str = ((void*)0);
 if (ldns_algorithm2buffer_str(buf, algorithm)
     == LDNS_STATUS_OK) {
  str = ldns_buffer_export2str(buf);
 }

 ldns_buffer_free(buf);
 return str;
}
