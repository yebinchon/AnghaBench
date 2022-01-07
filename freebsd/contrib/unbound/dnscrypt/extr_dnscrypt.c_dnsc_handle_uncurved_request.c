
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_reply {int max_udp_size; TYPE_1__* c; int nmkey; int client_nonce; int dnsc_cert; int is_dnscrypted; } ;
struct TYPE_2__ {scalar_t__ type; int dnscrypt_buffer; int buffer; int dnscrypt; } ;


 int VERB_ALGO ;
 int comm_point_drop_reply (struct comm_reply*) ;
 scalar_t__ comm_udp ;
 scalar_t__ dnscrypt_server_curve (int ,int ,int ,int ,int,int ) ;
 int sldns_buffer_copy (int ,int ) ;
 int verbose (int ,char*) ;

int
dnsc_handle_uncurved_request(struct comm_reply *repinfo)
{
    if(!repinfo->c->dnscrypt) {
        return 1;
    }
    sldns_buffer_copy(repinfo->c->dnscrypt_buffer, repinfo->c->buffer);
    if(!repinfo->is_dnscrypted) {
        return 1;
    }
 if(dnscrypt_server_curve(repinfo->dnsc_cert,
                             repinfo->client_nonce,
                             repinfo->nmkey,
                             repinfo->c->dnscrypt_buffer,
                             repinfo->c->type == comm_udp,
                             repinfo->max_udp_size) != 0){
  verbose(VERB_ALGO, "dnscrypt: Failed to curve cached missed answer");
  comm_point_drop_reply(repinfo);
  return 0;
 }
    return 1;
}
