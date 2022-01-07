
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int errno ;
 int mips_receive_wait ;
 unsigned int mips_request (char,int ,unsigned int,int*,int ,int *) ;
 int store_unsigned_integer (char*,int,unsigned int) ;

__attribute__((used)) static int
mips_store_word (CORE_ADDR addr, unsigned int val, char *old_contents)
{
  int err;
  unsigned int oldcontents;

  oldcontents = mips_request ('D', addr, val, &err,
         mips_receive_wait, ((void*)0));
  if (err)
    {

      oldcontents = mips_request ('I', addr, val, &err,
      mips_receive_wait, ((void*)0));
      if (err)
 return errno;
    }
  if (old_contents != ((void*)0))
    store_unsigned_integer (old_contents, 4, oldcontents);
  return 0;
}
