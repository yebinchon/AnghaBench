
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {int* supported_types; size_t num_supported_types; } ;


 unsigned int TNC_SUBTYPE_ANY ;
 unsigned int TNC_VENDORID_ANY ;

__attribute__((used)) static int tncs_supported_type(struct tnc_if_imv *imv, unsigned int type)
{
 size_t i;
 unsigned int vendor, subtype;

 if (imv == ((void*)0) || imv->supported_types == ((void*)0))
  return 0;

 vendor = type >> 8;
 subtype = type & 0xff;

 for (i = 0; i < imv->num_supported_types; i++) {
  unsigned int svendor, ssubtype;
  svendor = imv->supported_types[i] >> 8;
  ssubtype = imv->supported_types[i] & 0xff;
  if ((vendor == svendor || svendor == TNC_VENDORID_ANY) &&
      (subtype == ssubtype || ssubtype == TNC_SUBTYPE_ANY))
   return 1;
 }

 return 0;
}
