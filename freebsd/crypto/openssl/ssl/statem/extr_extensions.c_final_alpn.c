
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ early_data_ok; } ;
struct TYPE_11__ {int server; TYPE_3__ ext; TYPE_2__* session; } ;
struct TYPE_8__ {int * alpn_selected; } ;
struct TYPE_9__ {TYPE_1__ ext; } ;
typedef TYPE_4__ SSL ;


 int SSL_IS_TLS13 (TYPE_4__*) ;
 int tls_handle_alpn (TYPE_4__*) ;

__attribute__((used)) static int final_alpn(SSL *s, unsigned int context, int sent)
{
    if (!s->server && !sent && s->session->ext.alpn_selected != ((void*)0))
            s->ext.early_data_ok = 0;

    if (!s->server || !SSL_IS_TLS13(s))
        return 1;
    return tls_handle_alpn(s);
}
