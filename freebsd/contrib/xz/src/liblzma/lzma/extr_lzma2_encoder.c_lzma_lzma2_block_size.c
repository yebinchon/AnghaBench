
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;


 int UINT64_C (int) ;
 int my_max (int,int) ;

extern uint64_t
lzma_lzma2_block_size(const void *options)
{
 const lzma_options_lzma *const opt = options;


 return my_max((uint64_t)(opt->dict_size) * 3, UINT64_C(1) << 20);
}
