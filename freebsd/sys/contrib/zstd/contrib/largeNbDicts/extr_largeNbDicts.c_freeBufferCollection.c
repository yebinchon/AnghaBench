
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int slices; int buffer; } ;
typedef TYPE_1__ buffer_collection_t ;


 int freeBuffer (int ) ;
 int freeSliceCollection (int ) ;

__attribute__((used)) static void freeBufferCollection(buffer_collection_t bc)
{
    freeBuffer(bc.buffer);
    freeSliceCollection(bc.slices);
}
