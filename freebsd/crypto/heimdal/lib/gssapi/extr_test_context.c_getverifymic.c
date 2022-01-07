
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
struct TYPE_7__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int errx (int,char*,int ) ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_1__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_1__*,TYPE_1__*,int *) ;
 int gssapi_err (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
getverifymic(gss_ctx_id_t cctx, gss_ctx_id_t sctx, gss_OID mechoid)
{
    gss_buffer_desc input_token, output_token;
    OM_uint32 min_stat, maj_stat;
    gss_qop_t qop_state;

    input_token.value = "bar";
    input_token.length = 3;

    maj_stat = gss_get_mic(&min_stat, cctx, 0, &input_token,
      &output_token);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_get_mic failed: %s",
      gssapi_err(maj_stat, min_stat, mechoid));

    maj_stat = gss_verify_mic(&min_stat, sctx, &input_token,
         &output_token, &qop_state);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_verify_mic failed: %s",
      gssapi_err(maj_stat, min_stat, mechoid));

    gss_release_buffer(&min_stat, &output_token);
}
