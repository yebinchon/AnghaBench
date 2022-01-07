
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int EIO ;
 char* alloca (long) ;
 int errno ;
 int get_memory_read_packet_size () ;
 int getpkt (char*,long,int ) ;
 int hex2bin (char*,char*,int) ;
 int hexnumstr (char*,int ) ;
 scalar_t__ isxdigit (char) ;
 int min (int,int) ;
 int putpkt (char*) ;
 scalar_t__ remote_address_masked (scalar_t__) ;

int
remote_read_bytes (CORE_ADDR memaddr, char *myaddr, int len)
{
  char *buf;
  int max_buf_size;
  long sizeof_buf;
  int origlen;


  max_buf_size = get_memory_read_packet_size ();
  sizeof_buf = max_buf_size + 1;
  buf = alloca (sizeof_buf);

  origlen = len;
  while (len > 0)
    {
      char *p;
      int todo;
      int i;

      todo = min (len, max_buf_size / 2);



      memaddr = remote_address_masked (memaddr);
      p = buf;
      *p++ = 'm';
      p += hexnumstr (p, (ULONGEST) memaddr);
      *p++ = ',';
      p += hexnumstr (p, (ULONGEST) todo);
      *p = '\0';

      putpkt (buf);
      getpkt (buf, sizeof_buf, 0);

      if (buf[0] == 'E'
   && isxdigit (buf[1]) && isxdigit (buf[2])
   && buf[3] == '\0')
 {




   errno = EIO;
   return 0;
 }




      p = buf;
      if ((i = hex2bin (p, myaddr, todo)) < todo)
 {


   return i + (origlen - len);
 }
      myaddr += todo;
      memaddr += todo;
      len -= todo;
    }
  return origlen;
}
