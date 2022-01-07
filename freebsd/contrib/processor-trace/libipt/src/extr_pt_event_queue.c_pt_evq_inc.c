
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int evq_max ;

__attribute__((used)) static inline uint8_t pt_evq_inc(uint8_t idx)
{
 idx += 1;
 idx %= evq_max;

 return idx;
}
