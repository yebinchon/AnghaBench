
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int response; } ;
struct TYPE_7__ {int * text; int status; } ;
typedef TYPE_1__ TS_STATUS_INFO ;
typedef TYPE_2__ TS_RESP_CTX ;
typedef int ASN1_UTF8STRING ;


 int ASN1_INTEGER_set (int ,int) ;
 int ASN1_STRING_set (int *,char const*,int ) ;
 int ASN1_UTF8STRING_free (int *) ;
 int * ASN1_UTF8STRING_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_RESP_CTX_SET_STATUS_INFO ;
 int TS_RESP_set_status_info (int ,TYPE_1__*) ;
 int TS_STATUS_INFO_free (TYPE_1__*) ;
 TYPE_1__* TS_STATUS_INFO_new () ;
 int TSerr (int ,int ) ;
 int * sk_ASN1_UTF8STRING_new_null () ;
 int sk_ASN1_UTF8STRING_push (int *,int *) ;
 int strlen (char const*) ;

int TS_RESP_CTX_set_status_info(TS_RESP_CTX *ctx,
                                int status, const char *text)
{
    TS_STATUS_INFO *si = ((void*)0);
    ASN1_UTF8STRING *utf8_text = ((void*)0);
    int ret = 0;

    if ((si = TS_STATUS_INFO_new()) == ((void*)0))
        goto err;
    if (!ASN1_INTEGER_set(si->status, status))
        goto err;
    if (text) {
        if ((utf8_text = ASN1_UTF8STRING_new()) == ((void*)0)
            || !ASN1_STRING_set(utf8_text, text, strlen(text)))
            goto err;
        if (si->text == ((void*)0)
            && (si->text = sk_ASN1_UTF8STRING_new_null()) == ((void*)0))
            goto err;
        if (!sk_ASN1_UTF8STRING_push(si->text, utf8_text))
            goto err;
        utf8_text = ((void*)0);
    }
    if (!TS_RESP_set_status_info(ctx->response, si))
        goto err;
    ret = 1;
 err:
    if (!ret)
        TSerr(TS_F_TS_RESP_CTX_SET_STATUS_INFO, ERR_R_MALLOC_FAILURE);
    TS_STATUS_INFO_free(si);
    ASN1_UTF8STRING_free(utf8_text);
    return ret;
}
