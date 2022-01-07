
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int remote_write_bytes (int,char*,int) ;

__attribute__((used)) static int
remote_fileio_write_bytes (CORE_ADDR memaddr, char *myaddr, int len)
{
  int ret = 0, written;

  while (len > 0 && (written = remote_write_bytes (memaddr, myaddr, len)) > 0)
    {
      len -= written;
      memaddr += written;
      myaddr += written;
      ret += written;
    }
  return ret;
}
