
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int ssh_packet_close_internal (struct ssh*,int) ;

void
ssh_packet_close(struct ssh *ssh)
{
 ssh_packet_close_internal(ssh, 1);
}
