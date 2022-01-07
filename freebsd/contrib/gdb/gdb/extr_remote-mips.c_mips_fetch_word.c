
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int errno ;
 int mips_error (char*,int ,int ) ;
 int mips_receive_wait ;
 unsigned int mips_request (char,int ,int ,int*,int ,int *) ;
 int paddr_nz (int ) ;
 int safe_strerror (int ) ;

__attribute__((used)) static unsigned int
mips_fetch_word (CORE_ADDR addr)
{
  unsigned int val;
  int err;

  val = mips_request ('d', addr, 0, &err, mips_receive_wait, ((void*)0));
  if (err)
    {

      val = mips_request ('i', addr, 0, &err,
     mips_receive_wait, ((void*)0));
      if (err)
 mips_error ("Can't read address 0x%s: %s",
      paddr_nz (addr), safe_strerror (errno));
    }
  return val;
}
