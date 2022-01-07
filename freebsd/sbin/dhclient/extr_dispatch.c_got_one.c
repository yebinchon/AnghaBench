
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct protocol {int fd; struct interface_info* local; } ;
struct interface_info {int errors; int dead; int name; scalar_t__ noifmedia; } ;
struct iaddr {int len; int iabuf; } ;
struct hardware {int dummy; } ;
struct dhcp_packet {int dummy; } ;
typedef int ssize_t ;


 int bootp_packet_handler (struct interface_info*,struct dhcp_packet*,int,int ,struct iaddr,struct hardware*) ;
 int close (int ) ;
 int errno ;
 int free (struct interface_info*) ;
 int interface_status (struct interface_info*) ;
 int interfaces_invalidated ;
 int memcpy (int ,int *,int) ;
 int receive_packet (struct interface_info*,unsigned char*,int,struct sockaddr_in*,struct hardware*) ;
 int remove_protocol (struct protocol*) ;
 int strerror (int ) ;
 int stub1 (struct interface_info*,struct dhcp_packet*,int,int ,struct iaddr,struct hardware*) ;
 int warning (char*,int ,...) ;

void
got_one(struct protocol *l)
{
 struct sockaddr_in from;
 struct hardware hfrom;
 struct iaddr ifrom;
 ssize_t result;
 union {




  unsigned char packbuf[4095];
  struct dhcp_packet packet;
 } u;
 struct interface_info *ip = l->local;

 if ((result = receive_packet(ip, u.packbuf, sizeof(u), &from,
     &hfrom)) == -1) {
  warning("receive_packet failed on %s: %s", ip->name,
      strerror(errno));
  ip->errors++;
  if ((!interface_status(ip)) ||
      (ip->noifmedia && ip->errors > 20)) {

   warning("Interface %s no longer appears valid.",
       ip->name);
   ip->dead = 1;
   interfaces_invalidated = 1;
   close(l->fd);
   remove_protocol(l);
   free(ip);
  }
  return;
 }
 if (result == 0)
  return;

 if (bootp_packet_handler) {
  ifrom.len = 4;
  memcpy(ifrom.iabuf, &from.sin_addr, ifrom.len);

  (*bootp_packet_handler)(ip, &u.packet, result,
      from.sin_port, ifrom, &hfrom);
 }
}
