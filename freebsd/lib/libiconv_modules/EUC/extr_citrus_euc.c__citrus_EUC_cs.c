
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int _SS2 ;
 unsigned int _SS3 ;

__attribute__((used)) static __inline int
_citrus_EUC_cs(unsigned int c)
{

 c &= 0xff;

 return ((c & 0x80) ? c == _SS3 ? 3 : c == _SS2 ? 2 : 1 : 0);
}
