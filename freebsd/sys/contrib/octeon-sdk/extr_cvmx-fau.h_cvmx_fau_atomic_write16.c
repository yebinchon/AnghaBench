
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int cvmx_fau_reg_16_t ;


 int __cvmx_fau_store_address (int,int ) ;
 int cvmx_write64_int16 (int ,int ) ;

__attribute__((used)) static inline void cvmx_fau_atomic_write16(cvmx_fau_reg_16_t reg, int16_t value)
{
    cvmx_write64_int16(__cvmx_fau_store_address(1, reg), value);
}
