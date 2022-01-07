
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int index_list_size; int record_count; } ;
typedef TYPE_1__ lzma_index ;


 int LZMA_VLI_C (int) ;
 int index_size_unpadded (int ,int ) ;

extern uint32_t
lzma_index_padding_size(const lzma_index *i)
{
 return (LZMA_VLI_C(4) - index_size_unpadded(
   i->record_count, i->index_list_size)) & 3;
}
