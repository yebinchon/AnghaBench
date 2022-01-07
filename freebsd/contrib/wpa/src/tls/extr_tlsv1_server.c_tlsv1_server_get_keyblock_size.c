
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash_size; int key_material_len; int iv_size; } ;
struct tlsv1_server {scalar_t__ state; TYPE_1__ rl; } ;


 scalar_t__ CLIENT_HELLO ;
 scalar_t__ SERVER_HELLO ;

int tlsv1_server_get_keyblock_size(struct tlsv1_server *conn)
{
 if (conn->state == CLIENT_HELLO || conn->state == SERVER_HELLO)
  return -1;

 return 2 * (conn->rl.hash_size + conn->rl.key_material_len +
      conn->rl.iv_size);
}
