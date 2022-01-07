
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ssh {TYPE_1__* state; } ;
typedef int buf ;
struct TYPE_2__ {int outgoing_packet; } ;


 int DBG (int ) ;
 int debug (char*,int ) ;
 int memset (int *,int ,int) ;
 int sshbuf_put (int ,int *,int) ;
 int sshbuf_reset (int ) ;

int
sshpkt_start(struct ssh *ssh, u_char type)
{
 u_char buf[6];

 DBG(debug("packet_start[%d]", type));
 memset(buf, 0, sizeof(buf));
 buf[sizeof(buf) - 1] = type;
 sshbuf_reset(ssh->state->outgoing_packet);
 return sshbuf_put(ssh->state->outgoing_packet, buf, sizeof(buf));
}
