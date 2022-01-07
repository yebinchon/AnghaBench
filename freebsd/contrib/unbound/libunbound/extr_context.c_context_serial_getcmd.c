
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef enum ub_ctx_cmd { ____Placeholder_ub_ctx_cmd } ub_ctx_cmd ;


 int UB_LIBCMD_QUIT ;
 int sldns_read_uint32 (int *) ;

enum ub_ctx_cmd context_serial_getcmd(uint8_t* p, uint32_t len)
{
 uint32_t v;
 if((size_t)len < sizeof(v))
  return UB_LIBCMD_QUIT;
 v = sldns_read_uint32(p);
 return v;
}
