
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct qm_portal {int dummy; } ;


 int ITPR ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qm_isr_set_iperiod(struct qm_portal *portal, uint16_t iperiod)
{
    qm_out(ITPR, iperiod);
}
