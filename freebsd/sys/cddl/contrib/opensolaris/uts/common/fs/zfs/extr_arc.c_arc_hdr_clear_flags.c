
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int arc_flags_t ;
struct TYPE_5__ {int b_flags; } ;
typedef TYPE_1__ arc_buf_hdr_t ;


 int ASSERT (int) ;
 scalar_t__ HDR_EMPTY (TYPE_1__*) ;
 int HDR_LOCK (TYPE_1__*) ;
 scalar_t__ MUTEX_HELD (int ) ;

__attribute__((used)) static inline void
arc_hdr_clear_flags(arc_buf_hdr_t *hdr, arc_flags_t flags)
{
 ASSERT(MUTEX_HELD(HDR_LOCK(hdr)) || HDR_EMPTY(hdr));
 hdr->b_flags &= ~flags;
}
