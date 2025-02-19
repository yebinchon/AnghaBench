
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_key ;
typedef int ldns_buffer ;


 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_OK ;
 char* ldns_buffer_export2str (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_key2buffer_str (int *,int const*) ;

char *
ldns_key2str(const ldns_key *k)
{
 char *result = ((void*)0);
 ldns_buffer *tmp_buffer = ldns_buffer_new(LDNS_MAX_PACKETLEN);

 if (!tmp_buffer) {
  return ((void*)0);
 }
 if (ldns_key2buffer_str(tmp_buffer, k) == LDNS_STATUS_OK) {

  result = ldns_buffer_export2str(tmp_buffer);
 }
 ldns_buffer_free(tmp_buffer);
 return result;
}
