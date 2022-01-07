
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct regional {int dummy; } ;
struct edns_option {size_t opt_len; struct edns_option* next; int * opt_data; int opt_code; } ;


 scalar_t__ regional_alloc (struct regional*,int) ;
 int * regional_alloc_init (struct regional*,int *,size_t) ;

int edns_opt_list_append(struct edns_option** list, uint16_t code, size_t len,
 uint8_t* data, struct regional* region)
{
 struct edns_option** prevp;
 struct edns_option* opt;


 opt = (struct edns_option*)regional_alloc(region, sizeof(*opt));
 if(!opt)
  return 0;
 opt->next = ((void*)0);
 opt->opt_code = code;
 opt->opt_len = len;
 opt->opt_data = ((void*)0);
 if(len > 0) {
  opt->opt_data = regional_alloc_init(region, data, len);
  if(!opt->opt_data)
   return 0;
 }


 prevp = list;
 while(*prevp != ((void*)0)) {
  prevp = &((*prevp)->next);
 }
 *prevp = opt;
 return 1;
}
