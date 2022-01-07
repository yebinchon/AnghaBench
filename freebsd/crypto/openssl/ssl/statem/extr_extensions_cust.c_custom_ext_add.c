
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t meths_count; TYPE_3__* meths; } ;
typedef TYPE_2__ custom_ext_methods ;
struct TYPE_12__ {int ext_flags; int (* add_cb ) (TYPE_4__*,int ,int,unsigned char const**,size_t*,int *,size_t,int*,int ) ;int add_arg; int ext_type; int (* free_cb ) (TYPE_4__*,int ,int,unsigned char const*,int ) ;int context; } ;
typedef TYPE_3__ custom_ext_method ;
typedef int X509 ;
typedef int WPACKET ;
struct TYPE_13__ {TYPE_1__* cert; } ;
struct TYPE_10__ {TYPE_2__ custext; } ;
typedef TYPE_4__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_CLIENT_HELLO ;
 int SSL_EXT_FLAG_RECEIVED ;
 int SSL_EXT_FLAG_SENT ;
 int SSL_EXT_TLS1_2_SERVER_HELLO ;
 int SSL_EXT_TLS1_3_CERTIFICATE ;
 int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ;
 int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 int SSL_EXT_TLS1_3_SERVER_HELLO ;
 int SSL_F_CUSTOM_EXT_ADD ;
 int SSL_R_CALLBACK_FAILED ;
 int SSLfatal (TYPE_4__*,int,int ,int ) ;
 int WPACKET_close (int *) ;
 int WPACKET_memcpy (int *,unsigned char const*,size_t) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int ossl_assert (int) ;
 int should_add_extension (TYPE_4__*,int ,int,int) ;
 int stub1 (TYPE_4__*,int ,int,unsigned char const**,size_t*,int *,size_t,int*,int ) ;
 int stub2 (TYPE_4__*,int ,int,unsigned char const*,int ) ;

int custom_ext_add(SSL *s, int context, WPACKET *pkt, X509 *x, size_t chainidx,
                   int maxversion)
{
    custom_ext_methods *exts = &s->cert->custext;
    custom_ext_method *meth;
    size_t i;
    int al;

    for (i = 0; i < exts->meths_count; i++) {
        const unsigned char *out = ((void*)0);
        size_t outlen = 0;

        meth = exts->meths + i;

        if (!should_add_extension(s, meth->context, context, maxversion))
            continue;

        if ((context & (SSL_EXT_TLS1_2_SERVER_HELLO
                        | SSL_EXT_TLS1_3_SERVER_HELLO
                        | SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS
                        | SSL_EXT_TLS1_3_CERTIFICATE
                        | SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST)) != 0) {

            if (!(meth->ext_flags & SSL_EXT_FLAG_RECEIVED))
                continue;
        }




        if ((context & SSL_EXT_CLIENT_HELLO) == 0 && meth->add_cb == ((void*)0))
            continue;

        if (meth->add_cb != ((void*)0)) {
            int cb_retval = meth->add_cb(s, meth->ext_type, context, &out,
                                         &outlen, x, chainidx, &al,
                                         meth->add_arg);

            if (cb_retval < 0) {
                SSLfatal(s, al, SSL_F_CUSTOM_EXT_ADD, SSL_R_CALLBACK_FAILED);
                return 0;
            }
            if (cb_retval == 0)
                continue;
        }

        if (!WPACKET_put_bytes_u16(pkt, meth->ext_type)
                || !WPACKET_start_sub_packet_u16(pkt)
                || (outlen > 0 && !WPACKET_memcpy(pkt, out, outlen))
                || !WPACKET_close(pkt)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CUSTOM_EXT_ADD,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        if ((context & SSL_EXT_CLIENT_HELLO) != 0) {



            if (!ossl_assert((meth->ext_flags & SSL_EXT_FLAG_SENT) == 0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CUSTOM_EXT_ADD,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }





            meth->ext_flags |= SSL_EXT_FLAG_SENT;
        }
        if (meth->free_cb != ((void*)0))
            meth->free_cb(s, meth->ext_type, context, out, meth->add_arg);
    }
    return 1;
}
