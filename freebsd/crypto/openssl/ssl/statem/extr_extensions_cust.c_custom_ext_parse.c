
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int custom_ext_methods ;
struct TYPE_10__ {int ext_flags; scalar_t__ (* parse_cb ) (TYPE_3__*,unsigned int,unsigned int,unsigned char const*,size_t,int *,size_t,int*,int ) ;int parse_arg; int context; } ;
typedef TYPE_2__ custom_ext_method ;
typedef int X509 ;
struct TYPE_11__ {scalar_t__ server; TYPE_1__* cert; } ;
struct TYPE_9__ {int custext; } ;
typedef TYPE_3__ SSL ;
typedef int ENDPOINT ;


 int ENDPOINT_BOTH ;
 int ENDPOINT_CLIENT ;
 int ENDPOINT_SERVER ;
 unsigned int SSL_EXT_CLIENT_HELLO ;
 int SSL_EXT_FLAG_RECEIVED ;
 int SSL_EXT_FLAG_SENT ;
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ;
 unsigned int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ;
 unsigned int SSL_EXT_TLS1_3_SERVER_HELLO ;
 int SSL_F_CUSTOM_EXT_PARSE ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_3__*,int,int ,int ) ;
 int TLS1_AD_UNSUPPORTED_EXTENSION ;
 TYPE_2__* custom_ext_find (int *,int ,unsigned int,int *) ;
 int extension_is_relevant (TYPE_3__*,int ,unsigned int) ;
 scalar_t__ stub1 (TYPE_3__*,unsigned int,unsigned int,unsigned char const*,size_t,int *,size_t,int*,int ) ;

int custom_ext_parse(SSL *s, unsigned int context, unsigned int ext_type,
                     const unsigned char *ext_data, size_t ext_size, X509 *x,
                     size_t chainidx)
{
    int al;
    custom_ext_methods *exts = &s->cert->custext;
    custom_ext_method *meth;
    ENDPOINT role = ENDPOINT_BOTH;

    if ((context & (SSL_EXT_CLIENT_HELLO | SSL_EXT_TLS1_2_SERVER_HELLO)) != 0)
        role = s->server ? ENDPOINT_SERVER : ENDPOINT_CLIENT;

    meth = custom_ext_find(exts, role, ext_type, ((void*)0));

    if (!meth)
        return 1;


    if (!extension_is_relevant(s, meth->context, context))
        return 1;

    if ((context & (SSL_EXT_TLS1_2_SERVER_HELLO
                    | SSL_EXT_TLS1_3_SERVER_HELLO
                    | SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS)) != 0) {




        if ((meth->ext_flags & SSL_EXT_FLAG_SENT) == 0) {
            SSLfatal(s, TLS1_AD_UNSUPPORTED_EXTENSION, SSL_F_CUSTOM_EXT_PARSE,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }
    }






    if ((context & SSL_EXT_CLIENT_HELLO) != 0)
        meth->ext_flags |= SSL_EXT_FLAG_RECEIVED;


    if (!meth->parse_cb)
        return 1;

    if (meth->parse_cb(s, ext_type, context, ext_data, ext_size, x, chainidx,
                       &al, meth->parse_arg) <= 0) {
        SSLfatal(s, al, SSL_F_CUSTOM_EXT_PARSE, SSL_R_BAD_EXTENSION);
        return 0;
    }

    return 1;
}
