
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t* srcdest_pairs; } ;
typedef TYPE_1__ cdg_link_t ;



__attribute__((used)) static inline uint32_t get_next_srcdest_pair(cdg_link_t * link, uint32_t index)
{
 return link->srcdest_pairs[index];
}
