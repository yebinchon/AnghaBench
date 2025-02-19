
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct respip_set {int region; } ;
struct resp_addr {size_t taglen; scalar_t__ taglist; } ;


 int log_err (char*) ;
 int log_warn (char*,char const*) ;
 scalar_t__ regional_alloc_init (int ,int const*,size_t) ;
 struct resp_addr* respip_find_or_create (struct respip_set*,char const*,int) ;

__attribute__((used)) static int
respip_tag_cfg(struct respip_set* set, const char* ipstr,
 const uint8_t* taglist, size_t taglen)
{
 struct resp_addr* node;

 if(!(node=respip_find_or_create(set, ipstr, 1)))
  return 0;
 if(node->taglist) {
  log_warn("duplicate response-address-tag for '%s', overridden.",
   ipstr);
 }
 node->taglist = regional_alloc_init(set->region, taglist, taglen);
 if(!node->taglist) {
  log_err("out of memory");
  return 0;
 }
 node->taglen = taglen;
 return 1;
}
