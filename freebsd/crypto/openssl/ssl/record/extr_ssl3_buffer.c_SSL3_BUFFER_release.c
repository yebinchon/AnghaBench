
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ SSL3_BUFFER ;


 int OPENSSL_free (int *) ;

void SSL3_BUFFER_release(SSL3_BUFFER *b)
{
    OPENSSL_free(b->buf);
    b->buf = ((void*)0);
}
