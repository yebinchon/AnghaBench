
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t const full; } ;
typedef TYPE_1__ lzma_dict ;



__attribute__((used)) static inline bool
dict_is_distance_valid(const lzma_dict *const dict, const size_t distance)
{
 return dict->full > distance;
}
