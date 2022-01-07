
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;
typedef int boolean_t ;


 int ARC_BUFC_DATA ;
 int ARC_BUFC_METADATA ;
 int ASSERT (int) ;
 int arc_flush_state (int ,int ,int ,int ) ;
 int arc_mfu ;
 int arc_mfu_ghost ;
 int arc_mru ;
 int arc_mru_ghost ;
 int spa_load_guid (int *) ;

void
arc_flush(spa_t *spa, boolean_t retry)
{
 uint64_t guid = 0;






 ASSERT(!retry || spa == 0);

 if (spa != ((void*)0))
  guid = spa_load_guid(spa);

 (void) arc_flush_state(arc_mru, guid, ARC_BUFC_DATA, retry);
 (void) arc_flush_state(arc_mru, guid, ARC_BUFC_METADATA, retry);

 (void) arc_flush_state(arc_mfu, guid, ARC_BUFC_DATA, retry);
 (void) arc_flush_state(arc_mfu, guid, ARC_BUFC_METADATA, retry);

 (void) arc_flush_state(arc_mru_ghost, guid, ARC_BUFC_DATA, retry);
 (void) arc_flush_state(arc_mru_ghost, guid, ARC_BUFC_METADATA, retry);

 (void) arc_flush_state(arc_mfu_ghost, guid, ARC_BUFC_DATA, retry);
 (void) arc_flush_state(arc_mfu_ghost, guid, ARC_BUFC_METADATA, retry);
}
