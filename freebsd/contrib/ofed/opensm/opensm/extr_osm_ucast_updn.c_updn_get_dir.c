
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int updn_switch_dir_t ;
typedef scalar_t__ uint64_t ;


 int DOWN ;
 int UP ;

__attribute__((used)) static updn_switch_dir_t updn_get_dir(unsigned cur_rank, unsigned rem_rank,
          uint64_t cur_id, uint64_t rem_id)
{




 if (!cur_rank && !rem_rank)
  return UP;

 if (cur_rank < rem_rank)
  return DOWN;
 else if (cur_rank > rem_rank)
  return UP;
 else {

  if (cur_id > rem_id)
   return UP;
  else
   return DOWN;
 }
}
