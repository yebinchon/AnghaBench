
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct swrap_packet {int dummy; } ;
struct TYPE_2__ {unsigned long pck_snd; unsigned long pck_rcv; } ;
struct socket_info {int family; int type; TYPE_1__ io; struct sockaddr* peername; scalar_t__ myname; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef enum swrap_packet_type { ____Placeholder_swrap_packet_type } swrap_packet_type ;




 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int free (struct swrap_packet*) ;
 char* socket_wrapper_pcap_file () ;
 int swrapGetTimeOfDay (struct timeval*) ;
 int swrap_get_pcap_fd (char const*) ;
 struct swrap_packet* swrap_packet_init (struct timeval*,struct sockaddr_in const*,struct sockaddr_in const*,int ,unsigned char const*,size_t,unsigned long,unsigned long,unsigned char,int,size_t*) ;
 int write (int,struct swrap_packet*,size_t) ;

__attribute__((used)) static void swrap_dump_packet(struct socket_info *si, const struct sockaddr *addr,
         enum swrap_packet_type type,
         const void *buf, size_t len)
{
 const struct sockaddr_in *src_addr;
 const struct sockaddr_in *dest_addr;
 const char *file_name;
 unsigned long tcp_seq = 0;
 unsigned long tcp_ack = 0;
 unsigned char tcp_ctl = 0;
 int unreachable = 0;
 struct timeval tv;
 struct swrap_packet *packet;
 size_t packet_len = 0;
 int fd;

 file_name = socket_wrapper_pcap_file();
 if (!file_name) {
  return;
 }

 switch (si->family) {
 case 147:



  break;
 default:
  return;
 }

 switch (type) {
 case 137:
  if (si->type != SOCK_STREAM) return;

  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)addr;

  tcp_seq = si->io.pck_snd;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x02;

  si->io.pck_snd += 1;

  break;

 case 138:
  if (si->type != SOCK_STREAM) return;

  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)addr;

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x12;

  si->io.pck_rcv += 1;

  break;

 case 136:
  if (si->type != SOCK_STREAM) return;

  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)addr;


  tcp_seq = si->io.pck_snd - 1;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x02;
  unreachable = 1;

  break;

 case 139:
  if (si->type != SOCK_STREAM) return;

  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)addr;

  tcp_seq = si->io.pck_snd;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x10;

  break;

 case 143:
  if (si->type != SOCK_STREAM) return;

  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)addr;

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x02;

  si->io.pck_rcv += 1;

  break;

 case 144:
  if (si->type != SOCK_STREAM) return;

  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)addr;

  tcp_seq = si->io.pck_snd;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x12;

  si->io.pck_snd += 1;

  break;

 case 145:
  if (si->type != SOCK_STREAM) return;

  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)addr;

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x10;

  break;

 case 131:
  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)si->peername;

  tcp_seq = si->io.pck_snd;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x18;

  si->io.pck_snd += len;

  break;

 case 128:
  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)si->peername;

  if (si->type == SOCK_DGRAM) {
   swrap_dump_packet(si, si->peername,
       129,
             buf, len);
   return;
  }

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x14;

  break;

 case 135:
  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)si->peername;

  if (si->type == SOCK_DGRAM) {
   return;
  }

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x14;

  break;

 case 134:
  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)si->peername;

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x18;

  si->io.pck_rcv += len;

  break;

 case 132:
  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)si->peername;

  if (si->type == SOCK_DGRAM) {
   return;
  }

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x14;

  break;

 case 130:
  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)addr;

  si->io.pck_snd += len;

  break;

 case 129:
  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)addr;

  unreachable = 1;

  break;

 case 133:
  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)addr;

  si->io.pck_rcv += len;

  break;

 case 140:
  if (si->type != SOCK_STREAM) return;

  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)si->peername;

  tcp_seq = si->io.pck_snd;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x11;

  si->io.pck_snd += 1;

  break;

 case 141:
  if (si->type != SOCK_STREAM) return;

  dest_addr = (const struct sockaddr_in *)si->myname;
  src_addr = (const struct sockaddr_in *)si->peername;

  tcp_seq = si->io.pck_rcv;
  tcp_ack = si->io.pck_snd;
  tcp_ctl = 0x11;

  si->io.pck_rcv += 1;

  break;

 case 142:
  if (si->type != SOCK_STREAM) return;

  src_addr = (const struct sockaddr_in *)si->myname;
  dest_addr = (const struct sockaddr_in *)si->peername;

  tcp_seq = si->io.pck_snd;
  tcp_ack = si->io.pck_rcv;
  tcp_ctl = 0x10;

  break;
 default:
  return;
 }

 swrapGetTimeOfDay(&tv);

 packet = swrap_packet_init(&tv, src_addr, dest_addr, si->type,
       (const unsigned char *)buf, len,
       tcp_seq, tcp_ack, tcp_ctl, unreachable,
       &packet_len);
 if (!packet) {
  return;
 }

 fd = swrap_get_pcap_fd(file_name);
 if (fd != -1) {
  write(fd, packet, packet_len);
 }

 free(packet);
}
