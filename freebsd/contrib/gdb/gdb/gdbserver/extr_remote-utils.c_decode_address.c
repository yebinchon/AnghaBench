
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int fromhex (char) ;

__attribute__((used)) static void
decode_address (CORE_ADDR *addrp, const char *start, int len)
{
  CORE_ADDR addr;
  char ch;
  int i;

  addr = 0;
  for (i = 0; i < len; i++)
    {
      ch = start[i];
      addr = addr << 4;
      addr = addr | (fromhex (ch) & 0x0f);
    }
  *addrp = addr;
}
