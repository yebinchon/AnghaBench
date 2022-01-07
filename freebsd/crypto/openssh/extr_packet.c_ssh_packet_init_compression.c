
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int * compression_buffer; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int * sshbuf_new () ;

__attribute__((used)) static int
ssh_packet_init_compression(struct ssh *ssh)
{
 if (!ssh->state->compression_buffer &&
    ((ssh->state->compression_buffer = sshbuf_new()) == ((void*)0)))
  return SSH_ERR_ALLOC_FAIL;
 return 0;
}
