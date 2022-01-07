
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_3__ {int* pool; int cursor; int rotate; } ;
typedef TYPE_1__ isc_entropypool_t ;


 int RND_POOLWORDS ;
 int TAP1 ;
 int TAP2 ;
 int TAP3 ;
 int TAP4 ;
 int TAP5 ;

__attribute__((used)) static inline void
entropypool_add_word(isc_entropypool_t *rp, isc_uint32_t val) {
 val ^= rp->pool[(rp->cursor + TAP1) & (RND_POOLWORDS - 1)];
 val ^= rp->pool[(rp->cursor + TAP2) & (RND_POOLWORDS - 1)];
 val ^= rp->pool[(rp->cursor + TAP3) & (RND_POOLWORDS - 1)];
 val ^= rp->pool[(rp->cursor + TAP4) & (RND_POOLWORDS - 1)];
 val ^= rp->pool[(rp->cursor + TAP5) & (RND_POOLWORDS - 1)];
 if (rp->rotate == 0)
  rp->pool[rp->cursor++] ^= val;
 else
  rp->pool[rp->cursor++] ^=
    ((val << rp->rotate) | (val >> (32 - rp->rotate)));
 if (rp->cursor == RND_POOLWORDS) {
  rp->cursor = 0;
  rp->rotate = (rp->rotate + 7) & 31;
 }
}
