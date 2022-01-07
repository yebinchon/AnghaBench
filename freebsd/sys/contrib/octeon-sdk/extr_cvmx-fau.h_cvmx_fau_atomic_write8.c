
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef int cvmx_fau_reg_8_t ;


 int __cvmx_fau_store_address (int,int ) ;
 int cvmx_write64_int8 (int ,int ) ;

__attribute__((used)) static inline void cvmx_fau_atomic_write8(cvmx_fau_reg_8_t reg, int8_t value)
{
    cvmx_write64_int8(__cvmx_fau_store_address(1, reg), value);
}
