
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct ag_info {struct ag_info* ag_fine; } ;


 int NUM_AG_SLOTS ;
 void* ag_avail ;
 void* ag_slots ;
 int max_keylen ;
 int rhead ;
 int rn_init () ;
 int rn_inithead (int *,int) ;

void
rtinit(void)
{
 int i;
 struct ag_info *ag;


 max_keylen = sizeof(struct sockaddr_in);
 rn_init();
 rn_inithead(&rhead, 32);


 ag_avail = ag_slots;
 for (ag = ag_slots, i = 1; i < NUM_AG_SLOTS; i++) {
  ag->ag_fine = ag+1;
  ag++;
 }
}
