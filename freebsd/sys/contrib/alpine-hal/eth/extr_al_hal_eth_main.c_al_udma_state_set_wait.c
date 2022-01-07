
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int name; } ;
typedef enum al_udma_state { ____Placeholder_al_udma_state } al_udma_state ;


 int ETIMEDOUT ;
 int UDMA_DISABLE ;
 int UDMA_IDLE ;
 int UDMA_NORMAL ;
 int al_udelay (int) ;
 int al_udma_state_get (struct al_udma*) ;
 int al_udma_state_set (struct al_udma*,int) ;
 int* al_udma_states_name ;
 int al_warn (char*,int ,int) ;

__attribute__((used)) static int al_udma_state_set_wait(struct al_udma *dma, enum al_udma_state new_state)
{
 enum al_udma_state state;
 enum al_udma_state expected_state = new_state;
 int count = 1000;
 int rc;

 rc = al_udma_state_set(dma, new_state);
 if (rc != 0) {
  al_warn("[%s] warn: failed to change state, error %d\n", dma->name, rc);
  return rc;
 }

 if ((new_state == UDMA_NORMAL) || (new_state == UDMA_DISABLE))
  expected_state = UDMA_IDLE;

 do {
  state = al_udma_state_get(dma);
  if (state == expected_state)
   break;
  al_udelay(1);
  if (count-- == 0) {
   al_warn("[%s] warn: dma state didn't change to %s\n",
     dma->name, al_udma_states_name[new_state]);
   return -ETIMEDOUT;
  }
 } while (1);
 return 0;
}
