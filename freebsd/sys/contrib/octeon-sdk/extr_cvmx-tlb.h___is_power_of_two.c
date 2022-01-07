
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_DPOP (int,int ) ;

__attribute__((used)) static inline int __is_power_of_two(uint64_t v)
{
 int num_of_1s = 0;

 CVMX_DPOP(num_of_1s, v);
 return (num_of_1s == 1 );
}
