
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {size_t num_supported_types; int * supported_types; } ;
typedef size_t TNC_UInt32 ;
typedef int TNC_Result ;
typedef unsigned long* TNC_MessageTypeList ;
typedef int TNC_MessageType ;
typedef size_t TNC_IMCID ;


 int MSG_DEBUG ;
 size_t TNC_MAX_IMC_ID ;
 int TNC_RESULT_FATAL ;
 int TNC_RESULT_INVALID_PARAMETER ;
 int TNC_RESULT_SUCCESS ;
 int os_free (int *) ;
 int * os_memdup (unsigned long*,size_t) ;
 struct tnc_if_imc** tnc_imc ;
 int wpa_printf (int ,char*,size_t,unsigned long) ;

__attribute__((used)) static TNC_Result TNC_TNCC_ReportMessageTypes(
 TNC_IMCID imcID,
 TNC_MessageTypeList supportedTypes,
 TNC_UInt32 typeCount)
{
 TNC_UInt32 i;
 struct tnc_if_imc *imc;

 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCC_ReportMessageTypes(imcID=%lu "
     "typeCount=%lu)",
     (unsigned long) imcID, (unsigned long) typeCount);

 for (i = 0; i < typeCount; i++) {
  wpa_printf(MSG_DEBUG, "TNC: supportedTypes[%lu] = %lu",
      i, supportedTypes[i]);
 }

 if (imcID >= TNC_MAX_IMC_ID || tnc_imc[imcID] == ((void*)0))
  return TNC_RESULT_INVALID_PARAMETER;

 imc = tnc_imc[imcID];
 os_free(imc->supported_types);
 imc->supported_types = os_memdup(supportedTypes,
      typeCount * sizeof(TNC_MessageType));
 if (imc->supported_types == ((void*)0))
  return TNC_RESULT_FATAL;
 imc->num_supported_types = typeCount;

 return TNC_RESULT_SUCCESS;
}
