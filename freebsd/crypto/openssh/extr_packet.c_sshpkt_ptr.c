
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;


 size_t sshbuf_len (int ) ;
 int const* sshbuf_ptr (int ) ;

const u_char *
sshpkt_ptr(struct ssh *ssh, size_t *lenp)
{
 if (lenp != ((void*)0))
  *lenp = sshbuf_len(ssh->state->incoming_packet);
 return sshbuf_ptr(ssh->state->incoming_packet);
}
