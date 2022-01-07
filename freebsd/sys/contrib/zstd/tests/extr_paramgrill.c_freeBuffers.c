
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int srcBuffer; int * srcPtrs; } ;
typedef TYPE_1__ buffers_t ;


 int free (int ) ;
 int freeNonSrcBuffers (TYPE_1__ const) ;

__attribute__((used)) static void freeBuffers(const buffers_t b) {
    if(b.srcPtrs != ((void*)0)) {
        free(b.srcBuffer);
    }
    freeNonSrcBuffers(b);
}
