
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int valid_queues; int queues; } ;


 int CMD_Q_INT_ENABLE_BASE ;
 int FILTER_SCHEDULE_THREAD ;
 int ccp_write_queue_4 (struct ccp_softc*,size_t,int ,int ) ;
 size_t nitems (int ) ;

__attribute__((used)) static int
ccp_intr_filter(void *arg)
{
 struct ccp_softc *sc = arg;
 size_t i;


 for (i = 0; i < nitems(sc->queues); i++) {
  if ((sc->valid_queues & (1 << i)) == 0)
   continue;


  ccp_write_queue_4(sc, i, CMD_Q_INT_ENABLE_BASE, 0);
 }

 return (FILTER_SCHEDULE_THREAD);
}
