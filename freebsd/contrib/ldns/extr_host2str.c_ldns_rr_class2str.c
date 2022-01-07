
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_class ;
typedef int ldns_buffer ;


 scalar_t__ LDNS_STATUS_OK ;
 char* ldns_buffer_export2str (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int) ;
 scalar_t__ ldns_rr_class2buffer_str (int *,int const) ;

char *
ldns_rr_class2str(const ldns_rr_class klass)
{
 ldns_buffer *buf;
 char *str;

 buf = ldns_buffer_new(10);
 if (!buf) {
  return ((void*)0);
 }

 str = ((void*)0);
 if (ldns_rr_class2buffer_str(buf, klass) == LDNS_STATUS_OK) {
  str = ldns_buffer_export2str(buf);
 }
 ldns_buffer_free(buf);
 return str;
}
