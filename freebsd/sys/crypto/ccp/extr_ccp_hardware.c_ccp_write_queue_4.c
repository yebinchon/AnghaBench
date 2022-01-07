
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ccp_softc {int dummy; } ;


 int CMD_Q_STATUS_INCR ;
 int ccp_write_4 (struct ccp_softc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
ccp_write_queue_4(struct ccp_softc *sc, unsigned queue, uint32_t offset,
    uint32_t value)
{
 ccp_write_4(sc, (CMD_Q_STATUS_INCR * (1 + queue)) + offset, value);
}
