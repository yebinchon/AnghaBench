
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_eth_fwd_vid_table_entry {int udma_mask; int filter; int control; } ;


 int AL_FIELD_MASK (int,int) ;
 int AL_REG_BIT_VAL_SET (int ,int,int ) ;
 int AL_REG_FIELD_SET (int ,int ,int,int ) ;

__attribute__((used)) static uint32_t al_eth_fwd_vid_entry_to_val(struct al_eth_fwd_vid_table_entry *entry)
{
 uint32_t val = 0;
 AL_REG_BIT_VAL_SET(val, 0, entry->control);
 AL_REG_BIT_VAL_SET(val, 1, entry->filter);
 AL_REG_FIELD_SET(val, AL_FIELD_MASK(5,2), 2, entry->udma_mask);

 return val;
}
