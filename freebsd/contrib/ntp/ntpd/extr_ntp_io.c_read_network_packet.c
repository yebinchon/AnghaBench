
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa; } ;
struct recvbuf {int recv_length; int receiver; int recv_time; int fd; struct interface* dstadr; TYPE_1__ recv_srcadr; int recv_space; } ;
struct msghdr {int msg_namelen; int msg_iovlen; int msg_controllen; scalar_t__ msg_flags; void* msg_control; struct iovec* msg_iov; TYPE_1__* msg_name; } ;
struct iovec {int iov_len; int * iov_base; } ;
struct interface {scalar_t__ family; int received; TYPE_1__ sin; scalar_t__ ignore_packets; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int l_fp ;
typedef int from ;
typedef int control ;
typedef int buf ;
typedef int SOCKET ;
typedef int GETSOCKNAME_SOCKLEN_TYPE ;


 scalar_t__ AF_INET6 ;
 int CMSG_BUFSIZE ;
 int DPRINTF (int,char*) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (int ) ;
 scalar_t__ ISREFCLOCKADR (TYPE_1__*) ;
 int LOG_ERR ;
 int PSOCK_ADDR6 (TYPE_1__*) ;
 int RX_BUFF_SIZE ;
 int add_full_recv_buffer (struct recvbuf*) ;
 scalar_t__ errno ;
 int fetch_timestamp (struct recvbuf*,struct msghdr*,int ) ;
 int free_recvbuffs () ;
 int freerecvbuf (struct recvbuf*) ;
 struct recvbuf* get_free_recv_buffer () ;
 int msyslog (int ,char*,int ,int ) ;
 int packets_dropped ;
 int packets_ignored ;
 int packets_received ;
 int receive ;
 void* recvfrom (int ,char*,int,int ,int *,int*) ;
 int recvmsg (int ,struct msghdr*,int ) ;
 int stoa (TYPE_1__*) ;

__attribute__((used)) static inline int
read_network_packet(
 SOCKET fd,
 struct interface * itf,
 l_fp ts
 )
{
 GETSOCKNAME_SOCKLEN_TYPE fromlen;
 int buflen;
 register struct recvbuf *rb;
 rb = get_free_recv_buffer();
 if (((void*)0) == rb || itf->ignore_packets) {
  char buf[RX_BUFF_SIZE];
  sockaddr_u from;

  if (rb != ((void*)0))
   freerecvbuf(rb);

  fromlen = sizeof(from);
  buflen = recvfrom(fd, buf, sizeof(buf), 0,
      &from.sa, &fromlen);
  DPRINTF(4, ("%s on (%lu) fd=%d from %s\n",
   (itf->ignore_packets)
       ? "ignore"
       : "drop",
   free_recvbuffs(), fd, stoa(&from)));
  if (itf->ignore_packets)
   packets_ignored++;
  else
   packets_dropped++;
  return (buflen);
 }

 fromlen = sizeof(rb->recv_srcadr);


 rb->recv_length = recvfrom(fd, (char *)&rb->recv_space,
       sizeof(rb->recv_space), 0,
       &rb->recv_srcadr.sa, &fromlen);
 buflen = rb->recv_length;

 if (buflen == 0 || (buflen == -1 &&
     (EWOULDBLOCK == errno



      ))) {
  freerecvbuf(rb);
  return (buflen);
 } else if (buflen < 0) {
  msyslog(LOG_ERR, "recvfrom(%s) fd=%d: %m",
   stoa(&rb->recv_srcadr), fd);
  DPRINTF(5, ("read_network_packet: fd=%d dropped (bad recvfrom)\n",
       fd));
  freerecvbuf(rb);
  return (buflen);
 }

 DPRINTF(3, ("read_network_packet: fd=%d length %d from %s\n",
      fd, buflen, stoa(&rb->recv_srcadr)));
 if (AF_INET6 == itf->family) {
  DPRINTF(2, ("Got an IPv6 packet, from <%s> (%d) to <%s> (%d)\n",
   stoa(&rb->recv_srcadr),
   IN6_IS_ADDR_LOOPBACK(PSOCK_ADDR6(&rb->recv_srcadr)),
   stoa(&itf->sin),
   !IN6_IS_ADDR_LOOPBACK(PSOCK_ADDR6(&itf->sin))
   ));

  if ( IN6_IS_ADDR_LOOPBACK(PSOCK_ADDR6(&rb->recv_srcadr))
      && !IN6_IS_ADDR_LOOPBACK(PSOCK_ADDR6(&itf->sin))
     ) {
   packets_dropped++;
   DPRINTF(2, ("DROPPING that packet\n"));
   freerecvbuf(rb);
   return buflen;
  }
  DPRINTF(2, ("processing that packet\n"));
 }





 rb->dstadr = itf;
 rb->fd = fd;




 rb->recv_time = ts;
 rb->receiver = receive;

 add_full_recv_buffer(rb);

 itf->received++;
 packets_received++;
 return (buflen);
}
