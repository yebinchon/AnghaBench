
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t __DCCP_RESET_CODE_LAST ;
 char const** dccp_reset_codes ;

__attribute__((used)) static const char *dccp_reset_code(uint8_t code)
{
 if (code >= __DCCP_RESET_CODE_LAST)
  return "invalid";
 return dccp_reset_codes[code];
}
