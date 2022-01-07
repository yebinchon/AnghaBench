
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int UB_LIBCMD_QUIT ;
 scalar_t__ malloc (int) ;
 int sldns_write_uint32 (int*,int ) ;

uint8_t*
context_serialize_quit(uint32_t* len)
{
 uint32_t* p = (uint32_t*)malloc(sizeof(uint32_t));
 if(!p)
  return ((void*)0);
 *len = sizeof(uint32_t);
 sldns_write_uint32(p, UB_LIBCMD_QUIT);
 return (uint8_t*)p;
}
