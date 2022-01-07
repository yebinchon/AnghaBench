
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ caddr_t ;


 int emit (char*,...) ;
 int pager_close () ;
 int pager_open () ;

void
hexdump(caddr_t region, size_t len)
{
    caddr_t line;
    int x, c;
    char lbuf[80];


    pager_open();
    for (line = region; line < (region + len); line += 16) {
 {sprintf(lbuf, "%08lx  " , (long) line); pager_output(lbuf);};

 for (x = 0; x < 16; x++) {
     if ((line + x) < (region + len)) {
  {sprintf(lbuf, "%02x " , *(uint8_t *)(line + x)); pager_output(lbuf);};
     } else {
  {sprintf(lbuf, "-- "); pager_output(lbuf);};
     }
     if (x == 7)
  {sprintf(lbuf, " "); pager_output(lbuf);};
 }
 {sprintf(lbuf, " |"); pager_output(lbuf);};
 for (x = 0; x < 16; x++) {
     if ((line + x) < (region + len)) {
  c = *(uint8_t *)(line + x);
  if ((c < ' ') || (c > '~'))
      c = '.';
  {sprintf(lbuf, "%c" , c); pager_output(lbuf);};
     } else {
  {sprintf(lbuf, " "); pager_output(lbuf);};
     }
 }
 {sprintf(lbuf, "|\n"); pager_output(lbuf);};
    }
    pager_close();
}
