
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char UCHAR ;
struct TYPE_5__ {unsigned char* data; int* state; int* cksm; int num; } ;
typedef int MD2_INT ;
typedef TYPE_1__ MD2_CTX ;


 int MD2_BLOCK ;
 int OPENSSL_cleanse (TYPE_1__*,int) ;
 int md2_block (TYPE_1__*,unsigned char*) ;

int MD2_Final(unsigned char *md, MD2_CTX *c)
{
    int i, v;
    register UCHAR *cp;
    register MD2_INT *p1, *p2;

    cp = c->data;
    p1 = c->state;
    p2 = c->cksm;
    v = MD2_BLOCK - c->num;
    for (i = c->num; i < MD2_BLOCK; i++)
        cp[i] = (UCHAR) v;

    md2_block(c, cp);

    for (i = 0; i < MD2_BLOCK; i++)
        cp[i] = (UCHAR) p2[i];
    md2_block(c, cp);

    for (i = 0; i < 16; i++)
        md[i] = (UCHAR) (p1[i] & 0xff);
    OPENSSL_cleanse(c, sizeof(*c));
    return 1;
}
