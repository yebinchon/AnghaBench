
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int logprintf (char*,...) ;

__attribute__((used)) static void
wcsdump(const char *e, const wchar_t *w)
{
 logprintf("      %s = ", e);
 if (w == ((void*)0)) {
  logprintf("(null)");
  return;
 }
 logprintf("\"");
 while (*w != L'\0') {
  unsigned int c = *w++;
  if (c >= 32 && c < 127)
   logprintf("%c", c);
  else if (c < 256)
   logprintf("\\x%02X", c);
  else if (c < 0x10000)
   logprintf("\\u%04X", c);
  else
   logprintf("\\U%08X", c);
 }
 logprintf("\"\n");
}
