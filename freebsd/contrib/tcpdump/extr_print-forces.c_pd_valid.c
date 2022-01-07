
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ F_TLV_PDAT ;
 scalar_t__ F_TLV_REST ;

__attribute__((used)) static inline int pd_valid(uint16_t pd)
{
 if (pd >= F_TLV_PDAT && pd <= F_TLV_REST)
  return 1;
 return 0;
}
