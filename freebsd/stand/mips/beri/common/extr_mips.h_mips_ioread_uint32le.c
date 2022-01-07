
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vaddr_t ;
typedef int uint32_t ;


 int byteswap32 (int ) ;
 int mips_ioread_uint32 (int ) ;

__attribute__((used)) static inline uint32_t
mips_ioread_uint32le(vaddr_t vaddr)
{

 return (byteswap32(mips_ioread_uint32(vaddr)));
}
