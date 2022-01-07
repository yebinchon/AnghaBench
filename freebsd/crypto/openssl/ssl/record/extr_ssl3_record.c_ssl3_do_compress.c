
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int compress; } ;
struct TYPE_5__ {int length; int data; int input; } ;
typedef TYPE_1__ SSL3_RECORD ;
typedef TYPE_2__ SSL ;


 int COMP_compress_block (int ,int ,int,int ,int) ;
 scalar_t__ SSL3_RT_MAX_COMPRESSED_OVERHEAD ;

int ssl3_do_compress(SSL *ssl, SSL3_RECORD *wr)
{

    int i;


    i = COMP_compress_block(ssl->compress, wr->data,
                            (int)(wr->length + SSL3_RT_MAX_COMPRESSED_OVERHEAD),
                            wr->input, (int)wr->length);
    if (i < 0)
        return 0;
    else
        wr->length = i;

    wr->input = wr->data;

    return 1;
}
