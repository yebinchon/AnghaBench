
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int need_reset; } ;
typedef TYPE_1__ lzma_dict ;



__attribute__((used)) static inline void
dict_reset(lzma_dict *dict)
{
 dict->need_reset = 1;
 return;
}
