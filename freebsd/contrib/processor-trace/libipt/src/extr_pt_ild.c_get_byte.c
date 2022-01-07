
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct pt_ild {size_t* itext; } ;



__attribute__((used)) static inline uint8_t get_byte(const struct pt_ild *ild, uint8_t i)
{
 return ild->itext[i];
}
