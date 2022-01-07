
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; scalar_t__ rotate; scalar_t__ pseudo; scalar_t__ entropy; scalar_t__ cursor; } ;
typedef TYPE_1__ isc_entropypool_t ;


 int RND_POOLBYTES ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
isc_entropypool_invalidate(isc_entropypool_t *pool) {
 pool->cursor = 0;
 pool->entropy = 0;
 pool->pseudo = 0;
 pool->rotate = 0;
 memset(pool->pool, 0, RND_POOLBYTES);
}
