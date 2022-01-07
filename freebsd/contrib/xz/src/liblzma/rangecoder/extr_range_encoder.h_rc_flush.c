
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * symbols; } ;
typedef TYPE_1__ lzma_range_encoder ;


 int RC_FLUSH ;

__attribute__((used)) static inline void
rc_flush(lzma_range_encoder *rc)
{
 for (size_t i = 0; i < 5; ++i)
  rc->symbols[rc->count++] = RC_FLUSH;
}
