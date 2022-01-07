
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vertex_t ;
typedef int uint32_t ;


 int cmp_num_hca ;
 int qsort (int **,int ,int,int ) ;

__attribute__((used)) static inline void sw_list_sort_by_num_hca(vertex_t ** sw_list,
        uint32_t sw_list_size)
{
 qsort(sw_list, sw_list_size, sizeof(vertex_t *), cmp_num_hca);
}
