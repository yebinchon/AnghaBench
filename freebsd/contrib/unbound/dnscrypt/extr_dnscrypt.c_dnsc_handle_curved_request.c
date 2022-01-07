
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnsc_env {int dummy; } ;
struct comm_reply {int is_dnscrypted; int nmkey; int client_nonce; int * dnsc_cert; struct comm_point* c; } ;
struct comm_point {int buffer; int dnscrypt; } ;


 int VERB_ALGO ;
 int comm_point_drop_reply (struct comm_reply*) ;
 int * dnsc_find_cert (struct dnsc_env*,int ) ;
 scalar_t__ dnscrypt_server_uncurve (struct dnsc_env*,int *,int ,int ,int ) ;
 int sldns_buffer_rewind (int ) ;
 int verbose (int ,char*) ;

int
dnsc_handle_curved_request(struct dnsc_env* dnscenv,
                           struct comm_reply* repinfo)
{
    struct comm_point* c = repinfo->c;

    repinfo->is_dnscrypted = 0;
    if( !c->dnscrypt ) {
        return 1;
    }


    verbose(VERB_ALGO, "handle request called on DNSCrypt socket");
    if ((repinfo->dnsc_cert = dnsc_find_cert(dnscenv, c->buffer)) != ((void*)0)) {
        if(dnscrypt_server_uncurve(dnscenv,
                                   repinfo->dnsc_cert,
                                   repinfo->client_nonce,
                                   repinfo->nmkey,
                                   c->buffer) != 0){
            verbose(VERB_ALGO, "dnscrypt: Failed to uncurve");
            comm_point_drop_reply(repinfo);
            return 0;
        }
        repinfo->is_dnscrypted = 1;
        sldns_buffer_rewind(c->buffer);
    }
    return 1;
}
