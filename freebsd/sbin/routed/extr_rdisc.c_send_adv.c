
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int icmp_ad_num; int icmp_ad_asize; int icmp_cksum; TYPE_1__* icmp_ad_info; int icmp_ad_life; int icmp_type; } ;
union ad_u {TYPE_2__ ad; } ;
typedef int u_short ;
struct interface {int int_rdisc_int; int int_addr; int int_rdisc_pref; } ;
typedef int naddr ;
typedef int n_long ;
struct TYPE_3__ {int icmp_ad_addr; int icmp_ad_pref; } ;


 int ICMP_ROUTERADVERT ;
 int PREF (int ,struct interface*) ;
 int SIGN_PREF (int ) ;
 int UNSIGN_PREF (int ) ;
 int htonl (int ) ;
 int htons (int) ;
 int in_cksum (int *,int) ;
 int memset (union ad_u*,int ,int) ;
 int send_rdisc (union ad_u*,int,struct interface*,int ,int) ;
 scalar_t__ stopint ;

__attribute__((used)) static void
send_adv(struct interface *ifp,
  naddr dst,
  int type)
{
 union ad_u u;
 n_long pref;


 memset(&u, 0, sizeof(u.ad));

 u.ad.icmp_type = ICMP_ROUTERADVERT;
 u.ad.icmp_ad_num = 1;
 u.ad.icmp_ad_asize = sizeof(u.ad.icmp_ad_info[0])/4;

 u.ad.icmp_ad_life = stopint ? 0 : htons(ifp->int_rdisc_int*3);





 pref = UNSIGN_PREF(ifp->int_rdisc_pref);
 u.ad.icmp_ad_info[0].icmp_ad_pref = htonl(SIGN_PREF(PREF(pref, ifp)));

 u.ad.icmp_ad_info[0].icmp_ad_addr = ifp->int_addr;

 u.ad.icmp_cksum = in_cksum((u_short*)&u.ad, sizeof(u.ad));

 send_rdisc(&u, sizeof(u.ad), ifp, dst, type);
}
