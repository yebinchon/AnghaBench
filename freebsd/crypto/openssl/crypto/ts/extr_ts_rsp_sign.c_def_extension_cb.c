
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TS_resp_ctx {int dummy; } ;
typedef int X509_EXTENSION ;


 int TS_INFO_UNACCEPTED_EXTENSION ;
 int TS_RESP_CTX_add_failure_info (struct TS_resp_ctx*,int ) ;
 int TS_RESP_CTX_set_status_info (struct TS_resp_ctx*,int ,char*) ;
 int TS_STATUS_REJECTION ;

__attribute__((used)) static int def_extension_cb(struct TS_resp_ctx *ctx, X509_EXTENSION *ext,
                            void *data)
{
    TS_RESP_CTX_set_status_info(ctx, TS_STATUS_REJECTION,
                                "Unsupported extension.");
    TS_RESP_CTX_add_failure_info(ctx, TS_INFO_UNACCEPTED_EXTENSION);
    return 0;
}
