
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {size_t num_pairs; int* srcdest_pairs; int max_len; scalar_t__ removed; } ;
typedef TYPE_1__ cdg_link_t ;


 int free (int*) ;
 scalar_t__ malloc (int) ;
 int* memcpy (int*,int*,int) ;

__attribute__((used)) static void set_next_srcdest_pair(cdg_link_t * link, uint32_t srcdest)
{
 uint32_t new_size = 0, start_size = 2;
 uint32_t *tmp = ((void*)0), *tmp2 = ((void*)0);

 if (link->num_pairs == 0) {
  link->srcdest_pairs =
      (uint32_t *) malloc(start_size * sizeof(uint32_t));
  link->srcdest_pairs[link->num_pairs] = srcdest;
  link->max_len = start_size;
  link->removed = 0;
 } else if (link->num_pairs == link->max_len) {
  new_size = link->max_len << 1;
  tmp = (uint32_t *) malloc(new_size * sizeof(uint32_t));
  tmp =
      memcpy(tmp, link->srcdest_pairs,
      link->max_len * sizeof(uint32_t));
  tmp2 = link->srcdest_pairs;
  link->srcdest_pairs = tmp;
  link->srcdest_pairs[link->num_pairs] = srcdest;
  free(tmp2);
  link->max_len = new_size;
 } else {
  link->srcdest_pairs[link->num_pairs] = srcdest;
 }
 link->num_pairs++;
}
