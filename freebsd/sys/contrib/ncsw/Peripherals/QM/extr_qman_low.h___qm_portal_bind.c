
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int t_Error ;
struct TYPE_2__ {int bound; } ;
struct qm_portal {TYPE_1__ config; } ;


 int E_BUSY ;
 int E_OK ;

__attribute__((used)) static __inline__ t_Error __qm_portal_bind(struct qm_portal *portal, uint8_t iface)
{
    t_Error ret = E_BUSY;
    if (!(portal->config.bound & iface)) {
        portal->config.bound |= iface;
        ret = E_OK;
    }
    return ret;
}
