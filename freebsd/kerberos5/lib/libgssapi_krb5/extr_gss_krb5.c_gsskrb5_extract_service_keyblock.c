
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_keyblock ;
typedef int gss_ctx_id_t ;
typedef int OM_uint32 ;


 int GSS_KRB5_GET_SERVICE_KEYBLOCK_X ;
 int gsskrb5_extract_key (int *,int ,int ,int **) ;

OM_uint32
gsskrb5_extract_service_keyblock(OM_uint32 *minor_status,
     gss_ctx_id_t context_handle,
     krb5_keyblock **keyblock)
{
    return gsskrb5_extract_key(minor_status,
          context_handle,
          GSS_KRB5_GET_SERVICE_KEYBLOCK_X,
          keyblock);
}
