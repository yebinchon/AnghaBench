
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {int* supported_types; size_t num_supported_types; } ;


 unsigned int TNC_SUBTYPE_ANY ;
 unsigned int TNC_VENDORID_ANY ;

__attribute__((used)) static int tncc_supported_type(struct tnc_if_imc *imc, unsigned int type)
{
 size_t i;
 unsigned int vendor, subtype;

 if (imc == ((void*)0) || imc->supported_types == ((void*)0))
  return 0;

 vendor = type >> 8;
 subtype = type & 0xff;

 for (i = 0; i < imc->num_supported_types; i++) {
  unsigned int svendor, ssubtype;
  svendor = imc->supported_types[i] >> 8;
  ssubtype = imc->supported_types[i] & 0xff;
  if ((vendor == svendor || svendor == TNC_VENDORID_ANY) &&
      (subtype == ssubtype || ssubtype == TNC_SUBTYPE_ANY))
   return 1;
 }

 return 0;
}
