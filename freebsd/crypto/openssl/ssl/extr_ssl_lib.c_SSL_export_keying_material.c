
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ version; TYPE_2__* method; } ;
struct TYPE_7__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_6__ {int (* export_keying_material ) (TYPE_3__*,unsigned char*,size_t,char const*,size_t,unsigned char const*,size_t,int) ;} ;
typedef TYPE_3__ SSL ;


 scalar_t__ DTLS1_BAD_VER ;
 scalar_t__ TLS1_VERSION ;
 int stub1 (TYPE_3__*,unsigned char*,size_t,char const*,size_t,unsigned char const*,size_t,int) ;

int SSL_export_keying_material(SSL *s, unsigned char *out, size_t olen,
                               const char *label, size_t llen,
                               const unsigned char *context, size_t contextlen,
                               int use_context)
{
    if (s->version < TLS1_VERSION && s->version != DTLS1_BAD_VER)
        return -1;

    return s->method->ssl3_enc->export_keying_material(s, out, olen, label,
                                                       llen, context,
                                                       contextlen, use_context);
}
