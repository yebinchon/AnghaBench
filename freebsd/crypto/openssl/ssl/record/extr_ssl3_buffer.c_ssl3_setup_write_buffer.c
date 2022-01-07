
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {size_t numwpipes; } ;
struct TYPE_13__ {int options; TYPE_10__ rlayer; } ;
struct TYPE_12__ {unsigned char* buf; size_t len; } ;
typedef TYPE_1__ SSL3_BUFFER ;
typedef TYPE_2__ SSL ;


 int DTLS1_RT_HEADER_LENGTH ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 TYPE_1__* RECORD_LAYER_get_wbuf (TYPE_10__*) ;
 int SSL3_ALIGN_PAYLOAD ;
 int SSL3_RT_HEADER_LENGTH ;
 scalar_t__ SSL3_RT_MAX_COMPRESSED_OVERHEAD ;
 size_t SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD ;
 int SSL_AD_NO_ALERT ;
 int SSL_F_SSL3_SETUP_WRITE_BUFFER ;
 scalar_t__ SSL_IS_DTLS (TYPE_2__*) ;
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ ssl_allow_compression (TYPE_2__*) ;
 size_t ssl_get_max_send_fragment (TYPE_2__*) ;

int ssl3_setup_write_buffer(SSL *s, size_t numwpipes, size_t len)
{
    unsigned char *p;
    size_t align = 0, headerlen;
    SSL3_BUFFER *wb;
    size_t currpipe;

    s->rlayer.numwpipes = numwpipes;

    if (len == 0) {
        if (SSL_IS_DTLS(s))
            headerlen = DTLS1_RT_HEADER_LENGTH + 1;
        else
            headerlen = SSL3_RT_HEADER_LENGTH;





        len = ssl_get_max_send_fragment(s)
            + SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD + headerlen + align;

        if (ssl_allow_compression(s))
            len += SSL3_RT_MAX_COMPRESSED_OVERHEAD;

        if (!(s->options & SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS))
            len += headerlen + align + SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD;
    }

    wb = RECORD_LAYER_get_wbuf(&s->rlayer);
    for (currpipe = 0; currpipe < numwpipes; currpipe++) {
        SSL3_BUFFER *thiswb = &wb[currpipe];

        if (thiswb->buf != ((void*)0) && thiswb->len != len) {
            OPENSSL_free(thiswb->buf);
            thiswb->buf = ((void*)0);
        }

        if (thiswb->buf == ((void*)0)) {
            p = OPENSSL_malloc(len);
            if (p == ((void*)0)) {
                s->rlayer.numwpipes = currpipe;





                SSLfatal(s, SSL_AD_NO_ALERT,
                         SSL_F_SSL3_SETUP_WRITE_BUFFER, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            memset(thiswb, 0, sizeof(SSL3_BUFFER));
            thiswb->buf = p;
            thiswb->len = len;
        }
    }

    return 1;
}
