
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
typedef int * gss_OID ;
struct TYPE_4__ {int length; scalar_t__ value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int krb5_mechanism ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int ntlm_mechanism ;
 scalar_t__ parse_header (TYPE_1__* const,int *) ;
 int spnego_mechanism ;

__attribute__((used)) static OM_uint32
choose_mech(const gss_buffer_t input, gss_OID mech_oid)
{
 OM_uint32 status;






 status = parse_header(input, mech_oid);
 if (status == GSS_S_COMPLETE)
  return (GSS_S_COMPLETE);





 if (input->length > 8 &&
     memcmp((const char *)input->value, "NTLMSSP\x00", 8) == 0)
 {
  *mech_oid = ntlm_mechanism;
  return (GSS_S_COMPLETE);
 } else if (input->length != 0 &&
     ((const char *)input->value)[0] == 0x6E)
 {

  *mech_oid = krb5_mechanism;
  return (GSS_S_COMPLETE);
 } else if (input->length == 0) {






  *mech_oid = spnego_mechanism;
  return (GSS_S_COMPLETE);
 }
 return (status);
}
