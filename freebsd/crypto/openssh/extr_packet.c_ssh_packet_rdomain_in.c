
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {char const* rdomain_in; TYPE_1__* state; } ;
struct TYPE_2__ {int connection_in; } ;


 char const* get_rdomain (int ) ;
 int ssh_packet_connection_is_on_socket (struct ssh*) ;

const char *
ssh_packet_rdomain_in(struct ssh *ssh)
{
 if (ssh->rdomain_in != ((void*)0))
  return ssh->rdomain_in;
 if (!ssh_packet_connection_is_on_socket(ssh))
  return ((void*)0);
 ssh->rdomain_in = get_rdomain(ssh->state->connection_in);
 return ssh->rdomain_in;
}
