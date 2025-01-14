
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int Channel ;


 int * channel_lookup (struct ssh*,int) ;
 int channel_parse_id (struct ssh*,char const*,char const*) ;
 int ssh_packet_disconnect (struct ssh*,char*,char const*,int) ;

__attribute__((used)) static Channel *
channel_from_packet_id(struct ssh *ssh, const char *where, const char *what)
{
 int id = channel_parse_id(ssh, where, what);
 Channel *c;

 if ((c = channel_lookup(ssh, id)) == ((void*)0)) {
  ssh_packet_disconnect(ssh,
      "%s packet referred to nonexistent channel %d", what, id);
 }
 return c;
}
