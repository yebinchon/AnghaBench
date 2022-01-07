
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;
struct regional {int dummy; } ;
struct edns_data {int dummy; } ;


 int edns_opt_append (struct edns_data*,struct regional*,size_t,size_t,int *) ;
 int log_err (char*) ;
 size_t sldns_read_uint16 (int *) ;

__attribute__((used)) static int
parse_edns_options(uint8_t* rdata_ptr, size_t rdata_len,
 struct edns_data* edns, struct regional* region)
{


 while(rdata_len >= 4) {
  uint16_t opt_code = sldns_read_uint16(rdata_ptr);
  uint16_t opt_len = sldns_read_uint16(rdata_ptr+2);
  rdata_ptr += 4;
  rdata_len -= 4;
  if(opt_len > rdata_len)
   break;
  if(!edns_opt_append(edns, region, opt_code, opt_len,
   rdata_ptr)) {
   log_err("out of memory");
   return 0;
  }
  rdata_ptr += opt_len;
  rdata_len -= opt_len;
 }
 return 1;
}
