
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl_meta; } ;
typedef union al_udma_cdesc {TYPE_1__ al_desc_comp_tx; } volatile al_udma_cdesc ;
typedef scalar_t__ uint32_t ;
struct al_udma_q {int flags; scalar_t__ pkt_crnt_descs; scalar_t__ size; int next_cdesc_idx; int qid; TYPE_2__* udma; union al_udma_cdesc volatile* comp_head_ptr; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ AL_FALSE ;
 int AL_UDMA_Q_FLAGS_NO_COMP_UPDATE ;
 int al_assert (int) ;
 void* al_cdesc_next_update (struct al_udma_q*,union al_udma_cdesc volatile*) ;
 int al_dbg (char*,int ,int ,union al_udma_cdesc volatile*,int ,scalar_t__) ;
 union al_udma_cdesc volatile* al_udma_cdesc_idx_to_ptr (struct al_udma_q*,int ) ;
 scalar_t__ al_udma_new_cdesc (struct al_udma_q*,scalar_t__) ;
 int cdesc_is_last (scalar_t__) ;
 scalar_t__ swap32_from_le (int ) ;
 scalar_t__ unlikely (int) ;

uint32_t al_udma_cdesc_packet_get(
 struct al_udma_q *udma_q,
 volatile union al_udma_cdesc **cdesc)
{
 uint32_t count;
 volatile union al_udma_cdesc *curr;
 uint32_t comp_flags;


 al_assert(!(udma_q->flags & AL_UDMA_Q_FLAGS_NO_COMP_UPDATE));


 curr = udma_q->comp_head_ptr;
 comp_flags = swap32_from_le(curr->al_desc_comp_tx.ctrl_meta);


 if (unlikely(al_udma_new_cdesc(udma_q, comp_flags) == AL_FALSE))
  return 0;

 count = udma_q->pkt_crnt_descs + 1;
 while (!cdesc_is_last(comp_flags)) {
  curr = al_cdesc_next_update(udma_q, curr);
  comp_flags = swap32_from_le(curr->al_desc_comp_tx.ctrl_meta);
  if (unlikely(al_udma_new_cdesc(udma_q, comp_flags)
        == AL_FALSE)) {




   udma_q->pkt_crnt_descs = count;
   udma_q->comp_head_ptr = curr;
   return 0;
  }
  count++;

  al_assert(count <= udma_q->size);
 }

 *cdesc = al_udma_cdesc_idx_to_ptr(udma_q, udma_q->next_cdesc_idx);
 udma_q->pkt_crnt_descs = 0;
 udma_q->comp_head_ptr = al_cdesc_next_update(udma_q, curr);

 al_dbg("udma [%s %d]: packet completed. first desc %p (ixd 0x%x)"
   " descs %d\n", udma_q->udma->name, udma_q->qid, *cdesc,
   udma_q->next_cdesc_idx, count);

 return count;
}
