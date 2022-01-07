
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * extra; int * samples; } ;
typedef TYPE_1__ sample_queue_t ;
struct TYPE_6__ {int mctx; } ;
typedef TYPE_2__ isc_entropy_t ;


 int REQUIRE (int ) ;
 int RND_EVENTQSIZE ;
 int isc_mem_put (int ,int *,int) ;

__attribute__((used)) static void
samplequeue_release(isc_entropy_t *ent, sample_queue_t *sq) {
 REQUIRE(sq->samples != ((void*)0));
 REQUIRE(sq->extra != ((void*)0));

 isc_mem_put(ent->mctx, sq->samples, RND_EVENTQSIZE * 4);
 isc_mem_put(ent->mctx, sq->extra, RND_EVENTQSIZE * 4);
 sq->samples = ((void*)0);
 sq->extra = ((void*)0);
}
