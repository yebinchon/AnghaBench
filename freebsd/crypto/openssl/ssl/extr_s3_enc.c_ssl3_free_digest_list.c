
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* s3; } ;
struct TYPE_4__ {int * handshake_dgst; int * handshake_buffer; } ;
typedef TYPE_2__ SSL ;


 int BIO_free (int *) ;
 int EVP_MD_CTX_free (int *) ;

void ssl3_free_digest_list(SSL *s)
{
    BIO_free(s->s3->handshake_buffer);
    s->s3->handshake_buffer = ((void*)0);
    EVP_MD_CTX_free(s->s3->handshake_dgst);
    s->s3->handshake_dgst = ((void*)0);
}
