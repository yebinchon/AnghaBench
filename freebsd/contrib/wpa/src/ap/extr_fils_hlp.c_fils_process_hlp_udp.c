
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct udphdr {int uh_sum; int uh_ulen; int uh_dport; int uh_sport; } ;
struct sta_info {int dummy; } ;
struct iphdr {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int DHCP_CLIENT_PORT ;
 int DHCP_SERVER_PORT ;
 int MSG_DEBUG ;
 int fils_process_hlp_dhcp (struct hostapd_data*,struct sta_info*,int const*,int) ;
 int ntohs (int ) ;
 int wpa_printf (int ,char*,int,int,int,int) ;

__attribute__((used)) static int fils_process_hlp_udp(struct hostapd_data *hapd,
    struct sta_info *sta, const u8 *dst,
    const u8 *pos, size_t len)
{
 const struct iphdr *iph;
 const struct udphdr *udph;
 u16 sport, dport, ulen;

 if (len < sizeof(*iph) + sizeof(*udph))
  return 0;
 iph = (const struct iphdr *) pos;
 udph = (const struct udphdr *) (iph + 1);
 sport = ntohs(udph->uh_sport);
 dport = ntohs(udph->uh_dport);
 ulen = ntohs(udph->uh_ulen);
 wpa_printf(MSG_DEBUG,
     "FILS: HLP request UDP: sport=%u dport=%u ulen=%u sum=0x%x",
     sport, dport, ulen, ntohs(udph->uh_sum));

 if (ulen < sizeof(*udph) || ulen > len - sizeof(*iph))
  return 0;

 if (dport == DHCP_SERVER_PORT && sport == DHCP_CLIENT_PORT) {
  return fils_process_hlp_dhcp(hapd, sta, (const u8 *) (udph + 1),
          ulen - sizeof(*udph));
 }

 return 0;
}
