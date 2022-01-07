
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cell; } ;
typedef TYPE_1__ _BIG5EncodingInfo ;



__attribute__((used)) static __inline int
_citrus_BIG5_check2(_BIG5EncodingInfo *ei, unsigned int c)
{

 return ((ei->cell[c & 0xFF] & 0x2) ? 1 : 0);
}
