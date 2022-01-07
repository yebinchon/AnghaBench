
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int VCHIQ_LOG_TRACE ;
 int snprintf (char*,int,char*,...) ;
 int vchiq_log_trace (int ,char*,char const*,char*,...) ;

void vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
 size_t numBytes)
{
 const uint8_t *mem = (const uint8_t *)voidMem;
 size_t offset;
 char lineBuf[100];
 char *s;

 while (numBytes > 0) {
  s = lineBuf;

  for (offset = 0; offset < 16; offset++) {
   if (offset < numBytes)
    s += snprintf(s, 4, "%02x ", mem[offset]);
   else
    s += snprintf(s, 4, "   ");
  }

  for (offset = 0; offset < 16; offset++) {
   if (offset < numBytes) {
    uint8_t ch = mem[offset];

    if ((ch < ' ') || (ch > '~'))
     ch = '.';
    *s++ = (char)ch;
   }
  }
  *s++ = '\0';

  if ((label != ((void*)0)) && (*label != '\0'))
   vchiq_log_trace(VCHIQ_LOG_TRACE,
    "%s: %08x: %s", label, addr, lineBuf);
  else
   vchiq_log_trace(VCHIQ_LOG_TRACE,
    "%08x: %s", addr, lineBuf);

  addr += 16;
  mem += 16;
  if (numBytes > 16)
   numBytes -= 16;
  else
   numBytes = 0;
 }
}
