
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTES_PER_LINE ;
 scalar_t__ NetTrace ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 int min (int,int) ;
 scalar_t__ prettydump ;
 scalar_t__ stdout ;

void
Dump(char direction, unsigned char *buffer, int length)
{

    unsigned char *pThis;
    int offset;

    offset = 0;

    while (length) {

 fprintf(NetTrace, "%c 0x%x\t", direction, offset);
 pThis = buffer;
 if (prettydump) {
     buffer = buffer + min(length, 32/2);
     while (pThis < buffer) {
  fprintf(NetTrace, "%c%.2x",
      (((*pThis)&0xff) == 0xff) ? '*' : ' ',
      (*pThis)&0xff);
  pThis++;
     }
     length -= 32/2;
     offset += 32/2;
 } else {
     buffer = buffer + min(length, 32);
     while (pThis < buffer) {
  fprintf(NetTrace, "%.2x", (*pThis)&0xff);
  pThis++;
     }
     length -= 32;
     offset += 32;
 }
 if (NetTrace == stdout) {
     fprintf(NetTrace, "\r\n");
 } else {
     fprintf(NetTrace, "\n");
 }
 if (length < 0) {
     fflush(NetTrace);
     return;
 }

    }
    fflush(NetTrace);
}
