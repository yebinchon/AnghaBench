
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * h; scalar_t__ buflen; scalar_t__ buf; } ;
typedef TYPE_1__ BLAKE2B_CTX ;


 int OPENSSL_cleanse (TYPE_1__*,int) ;
 int blake2b_compress (TYPE_1__*,scalar_t__,scalar_t__) ;
 int blake2b_set_lastblock (TYPE_1__*) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int store64 (unsigned char*,int ) ;

int BLAKE2b_Final(unsigned char *md, BLAKE2B_CTX *c)
{
    int i;

    blake2b_set_lastblock(c);

    memset(c->buf + c->buflen, 0, sizeof(c->buf) - c->buflen);
    blake2b_compress(c, c->buf, c->buflen);


    for (i = 0; i < 8; ++i) {
        store64(md + sizeof(c->h[i]) * i, c->h[i]);
    }

    OPENSSL_cleanse(c, sizeof(BLAKE2B_CTX));
    return 1;
}
