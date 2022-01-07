
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_portal {int dummy; } ;


 int CFG ;
 int qm_in (int ) ;

__attribute__((used)) static __inline__ uint8_t qm_dqrr_get_maxfill(struct qm_portal *portal)
{
    return (uint8_t)((qm_in(CFG) & 0x00f00000) >> 20);
}
