
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
typedef int ttl ;
struct pkt {int exten; int refid; int rootdisp; int rootdelay; int precision; int ppoll; int stratum; int li_vn_mode; int xmt; int rec; int org; } ;
struct TYPE_16__ {int sa; } ;
struct interface {int last_ttl; TYPE_2__ sin; struct interface* mclink; int sent; int notsent; int fd; } ;
typedef TYPE_2__ sockaddr_u ;
struct TYPE_15__ {int member_0; } ;
struct TYPE_17__ {int member_1; TYPE_1__ member_0; } ;
typedef TYPE_3__ l_fp ;
typedef struct interface endpt ;
typedef int cttl ;


 int AF (TYPE_2__*) ;


 int DPRINTF (int,char*) ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_HOPS ;
 int IP_MULTICAST_TTL ;
 scalar_t__ IS_IPV4 (TYPE_2__*) ;
 int IS_MCAST (TYPE_2__*) ;
 int LOG_ERR ;
 scalar_t__ MIN_V4_PKT_LEN ;
 int PKT_LEAP (int ) ;
 int PKT_MODE (int ) ;
 int PKT_VERSION (int ) ;
 int SOCKLEN (TYPE_2__*) ;
 int io_completion_port_sendto (struct interface*,int ,struct pkt*,size_t,TYPE_2__*) ;
 struct interface* mc4_list ;
 struct interface* mc6_list ;
 int msyslog (int ,char*,int ) ;
 int packets_notsent ;
 int packets_sent ;
 int record_raw_stats (TYPE_2__*,TYPE_2__*,int *,int *,int *,TYPE_3__*,int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,int *) ;
 int sendto (int ,char*,int ,int ,int *,int ) ;
 int setsockopt (int ,int ,int ,void*,int) ;
 int simulate_server (TYPE_2__*,struct interface*,struct pkt*) ;
 int stoa (TYPE_2__*) ;

void
sendpkt(
 sockaddr_u * dest,
 struct interface * ep,
 int ttl,
 struct pkt * pkt,
 int len
 )
{
 endpt * src;
 int ismcast;
 int cc;
 int rc;
 u_char cttl;
 l_fp fp_zero = { { 0 }, 0 };

 ismcast = IS_MCAST(dest);
 if (!ismcast)
  src = ep;
 else
  src = (IS_IPV4(dest))
     ? mc4_list
     : mc6_list;

 if (((void*)0) == src) {




  DPRINTF(2, ("%ssendpkt(dst=%s, ttl=%d, len=%d): no interface - IGNORED\n",
       ismcast ? "\tMCAST\t***** " : "",
       stoa(dest), ttl, len));
  return;
 }

 do {
  DPRINTF(2, ("%ssendpkt(%d, dst=%s, src=%s, ttl=%d, len=%d)\n",
       ismcast ? "\tMCAST\t***** " : "", src->fd,
       stoa(dest), stoa(&src->sin), ttl, len));
  cc = sendto(src->fd, (char *)pkt, (u_int)len, 0,
       &dest->sa, SOCKLEN(dest));

  if (cc == -1) {
   src->notsent++;
   packets_notsent++;
  } else {
   src->sent++;
   packets_sent++;
  }
  if (ismcast)
   src = src->mclink;
 } while (ismcast && src != ((void*)0));


 record_raw_stats(src ? &src->sin : ((void*)0), dest,
   &pkt->org, &pkt->rec, &pkt->xmt, &fp_zero,
   PKT_MODE(pkt->li_vn_mode),
   PKT_VERSION(pkt->li_vn_mode),
   PKT_LEAP(pkt->li_vn_mode),
   pkt->stratum,
   pkt->ppoll, pkt->precision,
   pkt->rootdelay, pkt->rootdisp, pkt->refid,
   len - MIN_V4_PKT_LEN, (u_char *)&pkt->exten);

 return;
}
