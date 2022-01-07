
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct teap_attr_pac_type {int pac_type; int length; int type; } ;


 int PAC_TYPE_PAC_TYPE ;
 int be_to_host16 (int ) ;

__attribute__((used)) static int eap_teap_pac_type(u8 *pac, size_t len, u16 type)
{
 struct teap_attr_pac_type *tlv;

 if (!pac || len != sizeof(*tlv))
  return 0;

 tlv = (struct teap_attr_pac_type *) pac;

 return be_to_host16(tlv->type) == PAC_TYPE_PAC_TYPE &&
  be_to_host16(tlv->length) == 2 &&
  be_to_host16(tlv->pac_type) == type;
}
