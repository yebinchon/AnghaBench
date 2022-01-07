
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int slot_sync; int slot_first; int slot_last; } ;
struct TYPE_6__ {int slot_sync; int slot_first; int slot_last; } ;
struct TYPE_8__ {int slot_zero_size; int slot_size; TYPE_2__ slave; TYPE_1__ master; int max_slots_per_side; int max_slots; int version_min; int version; int magic; } ;
typedef TYPE_3__ VCHIQ_SLOT_ZERO_T ;


 int VCHIQ_MAGIC ;
 int VCHIQ_MAX_SLOTS ;
 int VCHIQ_MAX_SLOTS_PER_SIDE ;
 int VCHIQ_SLOT_MASK ;
 int VCHIQ_SLOT_SIZE ;
 int VCHIQ_SLOT_ZERO_SLOTS ;
 int VCHIQ_VERSION ;
 int VCHIQ_VERSION_MIN ;
 int memset (TYPE_3__*,int ,int) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,int) ;

VCHIQ_SLOT_ZERO_T *
vchiq_init_slots(void *mem_base, int mem_size)
{
 int mem_align = (VCHIQ_SLOT_SIZE - (int)mem_base) & VCHIQ_SLOT_MASK;
 VCHIQ_SLOT_ZERO_T *slot_zero =
  (VCHIQ_SLOT_ZERO_T *)((char *)mem_base + mem_align);
 int num_slots = (mem_size - mem_align)/VCHIQ_SLOT_SIZE;
 int first_data_slot = VCHIQ_SLOT_ZERO_SLOTS;


 num_slots -= first_data_slot;

 if (num_slots < 4) {
  vchiq_log_error(vchiq_core_log_level,
   "vchiq_init_slots - insufficient memory %x bytes",
   mem_size);
  return ((void*)0);
 }

 memset(slot_zero, 0, sizeof(VCHIQ_SLOT_ZERO_T));

 slot_zero->magic = VCHIQ_MAGIC;
 slot_zero->version = VCHIQ_VERSION;
 slot_zero->version_min = VCHIQ_VERSION_MIN;
 slot_zero->slot_zero_size = sizeof(VCHIQ_SLOT_ZERO_T);
 slot_zero->slot_size = VCHIQ_SLOT_SIZE;
 slot_zero->max_slots = VCHIQ_MAX_SLOTS;
 slot_zero->max_slots_per_side = VCHIQ_MAX_SLOTS_PER_SIDE;

 slot_zero->master.slot_sync = first_data_slot;
 slot_zero->master.slot_first = first_data_slot + 1;
 slot_zero->master.slot_last = first_data_slot + (num_slots/2) - 1;
 slot_zero->slave.slot_sync = first_data_slot + (num_slots/2);
 slot_zero->slave.slot_first = first_data_slot + (num_slots/2) + 1;
 slot_zero->slave.slot_last = first_data_slot + num_slots - 1;

 return slot_zero;
}
