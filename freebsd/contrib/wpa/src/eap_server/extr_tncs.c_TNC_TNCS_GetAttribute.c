
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TNC_UInt32 ;
typedef int TNC_Result ;
typedef int TNC_IMVID ;
typedef int TNC_ConnectionID ;
typedef int TNC_BufferReference ;
typedef int TNC_AttributeID ;


 int MSG_DEBUG ;
 int TNC_RESULT_SUCCESS ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static TNC_Result TNC_TNCS_GetAttribute(
 TNC_IMVID imvID,
 TNC_ConnectionID connectionID,
 TNC_AttributeID attribureID,
 TNC_UInt32 bufferLength,
 TNC_BufferReference buffer,
 TNC_UInt32 *pOutValueLength)
{
 wpa_printf(MSG_DEBUG, "TNC: TNC_TNCS_GetAttribute");

 return TNC_RESULT_SUCCESS;
}
