
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int target_read_memory (int ,char*,int) ;

__attribute__((used)) static int
partial_memory_read (CORE_ADDR memaddr, char *myaddr, int len, int *errnoptr)
{
  int nread;
  int errcode;


  errcode = target_read_memory (memaddr, myaddr, len);
  if (errcode == 0)
    {

      nread = len;
    }
  else
    {

      for (errcode = 0, nread = 0; len > 0 && errcode == 0; nread++, len--)
 {
   errcode = target_read_memory (memaddr++, myaddr++, 1);
 }

      if (errcode != 0)
 {
   nread--;
 }
    }
  if (errnoptr != ((void*)0))
    {
      *errnoptr = errcode;
    }
  return (nread);
}
