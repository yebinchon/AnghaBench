
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int bound; } ;
struct qm_portal {TYPE_1__ config; } ;


 int ASSERT_COND (int) ;

__attribute__((used)) static __inline__ void __qm_portal_unbind(struct qm_portal *portal, uint8_t iface)
{



    portal->config.bound &= ~iface;
}
