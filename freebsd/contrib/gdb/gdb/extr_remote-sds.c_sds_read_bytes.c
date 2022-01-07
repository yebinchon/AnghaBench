
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ todo ;
typedef scalar_t__ memaddr ;
typedef int CORE_ADDR ;


 int PBUFSIZ ;
 int min (int,int) ;
 int sds_send (unsigned char*,int) ;

__attribute__((used)) static int
sds_read_bytes (CORE_ADDR memaddr, char *myaddr, int len)
{
  int max_buf_size;
  int origlen, retlen;
  unsigned char buf[PBUFSIZ];
  int todo;
  int i;



  max_buf_size = 150;

  origlen = len;
  while (len > 0)
    {
      todo = min (len, max_buf_size);

      buf[0] = 12;
      buf[1] = 0;
      buf[2] = (int) (memaddr >> 24) & 0xff;
      buf[3] = (int) (memaddr >> 16) & 0xff;
      buf[4] = (int) (memaddr >> 8) & 0xff;
      buf[5] = (int) (memaddr) & 0xff;
      buf[6] = (int) (todo >> 8) & 0xff;
      buf[7] = (int) (todo) & 0xff;
      buf[8] = 1;

      retlen = sds_send (buf, 9);

      if (retlen - 2 != todo)
 {
   return 0;
 }



      for (i = 0; i < todo; i++)
 myaddr[i] = buf[i + 2];

      myaddr += todo;
      memaddr += todo;
      len -= todo;
    }

  return origlen;
}
