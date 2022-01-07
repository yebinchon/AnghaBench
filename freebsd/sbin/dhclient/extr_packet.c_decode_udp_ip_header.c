
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct udphdr {int uh_sum; int uh_sport; int uh_ulen; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct ip {int ip_src; int ip_len; } ;
typedef int ssize_t ;


 int IPPROTO_UDP ;
 int checksum (unsigned char*,int,int) ;
 int debug (char*,...) ;
 int memcpy (int *,int *,int) ;
 int note (char*,int,int) ;
 int ntohs (int ) ;
 scalar_t__ wrapsum (int) ;

ssize_t
decode_udp_ip_header(unsigned char *buf, int bufix, struct sockaddr_in *from,
    unsigned char *data, int buflen)
{
 struct ip *ip;
 struct udphdr *udp;
 u_int32_t ip_len = (buf[bufix] & 0xf) << 2;
 u_int32_t sum, usum;
 static int ip_packets_seen;
 static int ip_packets_bad_checksum;
 static int udp_packets_seen;
 static int udp_packets_bad_checksum;
 static int udp_packets_length_checked;
 static int udp_packets_length_overflow;
 int len = 0;

 ip = (struct ip *)(buf + bufix);
 udp = (struct udphdr *)(buf + bufix + ip_len);


 ip_packets_seen++;
 if (wrapsum(checksum(buf + bufix, ip_len, 0)) != 0) {
  ip_packets_bad_checksum++;
  if (ip_packets_seen > 4 && ip_packets_bad_checksum != 0 &&
      (ip_packets_seen / ip_packets_bad_checksum) < 2) {
   note("%d bad IP checksums seen in %d packets",
       ip_packets_bad_checksum, ip_packets_seen);
   ip_packets_seen = ip_packets_bad_checksum = 0;
  }
  return (-1);
 }

 if (ntohs(ip->ip_len) != buflen)
  debug("ip length %d disagrees with bytes received %d.",
      ntohs(ip->ip_len), buflen);

 memcpy(&from->sin_addr, &ip->ip_src, 4);






 if (!data) {
  data = buf + bufix + ip_len + sizeof(*udp);
  len = ntohs(udp->uh_ulen) - sizeof(*udp);
  udp_packets_length_checked++;
  if (len + data > buf + bufix + buflen) {
   udp_packets_length_overflow++;
   if (udp_packets_length_checked > 4 &&
       (udp_packets_length_checked /
       udp_packets_length_overflow) < 2) {
    note("%d udp packets in %d too long - dropped",
        udp_packets_length_overflow,
        udp_packets_length_checked);
    udp_packets_length_overflow =
        udp_packets_length_checked = 0;
   }
   return (-1);
  }
  if (len + data != buf + bufix + buflen)
   debug("accepting packet with data after udp payload.");
 }

 usum = udp->uh_sum;
 udp->uh_sum = 0;

 sum = wrapsum(checksum((unsigned char *)udp, sizeof(*udp),
     checksum(data, len, checksum((unsigned char *)&ip->ip_src,
     2 * sizeof(ip->ip_src),
     IPPROTO_UDP + (u_int32_t)ntohs(udp->uh_ulen)))));

 udp_packets_seen++;
 if (usum && usum != sum) {
  udp_packets_bad_checksum++;
  if (udp_packets_seen > 4 && udp_packets_bad_checksum != 0 &&
      (udp_packets_seen / udp_packets_bad_checksum) < 2) {
   note("%d bad udp checksums in %d packets",
       udp_packets_bad_checksum, udp_packets_seen);
   udp_packets_seen = udp_packets_bad_checksum = 0;
  }
  return (-1);
 }

 memcpy(&from->sin_port, &udp->uh_sport, sizeof(udp->uh_sport));

 return (ip_len + sizeof(*udp));
}
