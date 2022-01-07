
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
 int errx (int,char*,...) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 scalar_t__ gss_unwrap (scalar_t__*,int ,TYPE_1__*,TYPE_1__*,int*,int *) ;
 scalar_t__ gss_wrap (scalar_t__*,int ,int,int ,TYPE_1__*,int*,TYPE_1__*) ;
 int gssapi_err (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
wrapunwrap(gss_ctx_id_t cctx, gss_ctx_id_t sctx, int flags, gss_OID mechoid)
{
    gss_buffer_desc input_token, output_token, output_token2;
    OM_uint32 min_stat, maj_stat;
    gss_qop_t qop_state;
    int conf_state;

    input_token.value = "foo";
    input_token.length = 3;

    maj_stat = gss_wrap(&min_stat, cctx, flags, 0, &input_token,
   &conf_state, &output_token);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_wrap failed: %s",
      gssapi_err(maj_stat, min_stat, mechoid));

    maj_stat = gss_unwrap(&min_stat, sctx, &output_token,
     &output_token2, &conf_state, &qop_state);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_unwrap failed: %s",
      gssapi_err(maj_stat, min_stat, mechoid));

    gss_release_buffer(&min_stat, &output_token);
    gss_release_buffer(&min_stat, &output_token2);





}
