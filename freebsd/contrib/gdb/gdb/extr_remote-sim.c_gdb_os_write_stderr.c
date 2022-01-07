
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int host_callback ;


 int fputs_unfiltered (char*,int ) ;
 int gdb_stdtargerr ;

__attribute__((used)) static int
gdb_os_write_stderr (host_callback *p, const char *buf, int len)
{
  int i;
  char b[2];

  for (i = 0; i < len; i++)
    {
      b[0] = buf[i];
      b[1] = 0;
      fputs_unfiltered (b, gdb_stdtargerr);
    }
  return len;
}
