
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc64_tte {int tte_data; scalar_t__ tte_vpn; } ;
typedef int kvaddr_t ;


 int SPARC64_TD_V ;
 int SPARC64_TTE_GET_SIZE (struct sparc64_tte*) ;
 scalar_t__ SPARC64_TV_VPN (int ,int ) ;

__attribute__((used)) static __inline int
sparc64_tte_match(struct sparc64_tte *tp, kvaddr_t va)
{

 return (((tp->tte_data & SPARC64_TD_V) != 0) &&
     (tp->tte_vpn == SPARC64_TV_VPN(va, SPARC64_TTE_GET_SIZE(tp))));
}
