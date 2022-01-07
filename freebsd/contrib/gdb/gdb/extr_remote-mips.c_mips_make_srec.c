
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int memcpy (char*,unsigned char*,int) ;

__attribute__((used)) static int
mips_make_srec (char *buf, int type, CORE_ADDR memaddr, unsigned char *myaddr,
  int len)
{
  unsigned char checksum;
  int i;





  buf[0] = 'S';
  buf[1] = type;
  buf[2] = len + 4 + 1;



  buf[3] = memaddr >> 24;
  buf[4] = memaddr >> 16;
  buf[5] = memaddr >> 8;
  buf[6] = memaddr;
  memcpy (&buf[7], myaddr, len);




  checksum = 0;
  buf += 2;
  for (i = 0; i < len + 4 + 1; i++)
    checksum += *buf++;

  *buf = ~checksum;

  return len + 8;
}
