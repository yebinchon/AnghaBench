
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ params; struct TYPE_4__* value; struct TYPE_4__* name; } ;
typedef TYPE_1__ MIME_HEADER ;


 int OPENSSL_free (TYPE_1__*) ;
 int mime_param_free ;
 int sk_MIME_PARAM_pop_free (scalar_t__,int ) ;

__attribute__((used)) static void mime_hdr_free(MIME_HEADER *hdr)
{
    if (hdr == ((void*)0))
        return;
    OPENSSL_free(hdr->name);
    OPENSSL_free(hdr->value);
    if (hdr->params)
        sk_MIME_PARAM_pop_free(hdr->params, mime_param_free);
    OPENSSL_free(hdr);
}
