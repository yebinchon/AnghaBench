
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int logprintf (char*,...) ;

__attribute__((used)) static void
hexdump(const char *p, const char *ref, size_t l, size_t offset)
{
 size_t i, j;
 char sep;

 if (p == ((void*)0)) {
  logprintf("(null)\n");
  return;
 }
 for(i=0; i < l; i+=16) {
  logprintf("%04x", (unsigned)(i + offset));
  sep = ' ';
  for (j = 0; j < 16 && i + j < l; j++) {
   if (ref != ((void*)0) && p[i + j] != ref[i + j])
    sep = '_';
   logprintf("%c%02x", sep, 0xff & (int)p[i+j]);
   if (ref != ((void*)0) && p[i + j] == ref[i + j])
    sep = ' ';
  }
  for (; j < 16; j++) {
   logprintf("%c  ", sep);
   sep = ' ';
  }
  logprintf("%c", sep);
  for (j=0; j < 16 && i + j < l; j++) {
   int c = p[i + j];
   if (c >= ' ' && c <= 126)
    logprintf("%c", c);
   else
    logprintf(".");
  }
  logprintf("\n");
 }
}
