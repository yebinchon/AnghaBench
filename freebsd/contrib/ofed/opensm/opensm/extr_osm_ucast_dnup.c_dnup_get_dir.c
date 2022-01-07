
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dnup_switch_dir_t ;


 int DOWN ;
 int EQUAL ;
 int UP ;

__attribute__((used)) static dnup_switch_dir_t dnup_get_dir(unsigned cur_rank, unsigned rem_rank)
{




 if (!cur_rank && !rem_rank)
  return EQUAL;

 if (cur_rank < rem_rank)
  return DOWN;
 else if (cur_rank > rem_rank)
  return UP;
 else
  return EQUAL;
}
