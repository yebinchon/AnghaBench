
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct edns_option {scalar_t__ opt_len; struct edns_option* next; } ;
struct edns_data {struct edns_option* opt_list; int edns_present; } ;



uint16_t
calc_edns_field_size(struct edns_data* edns)
{
 size_t rdatalen = 0;
 struct edns_option* opt;
 if(!edns || !edns->edns_present)
  return 0;
 for(opt = edns->opt_list; opt; opt = opt->next) {
  rdatalen += 4 + opt->opt_len;
 }

 return 1 + 2 + 2 + 4 + 2 + rdatalen;
}
