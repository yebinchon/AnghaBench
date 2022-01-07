
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int cvmx_fau_reg_64_t ;


 int __cvmx_fau_store_address (int,int ) ;
 int cvmx_write64_int64 (int ,int ) ;

__attribute__((used)) static inline void cvmx_fau_atomic_write64(cvmx_fau_reg_64_t reg, int64_t value)
{
    cvmx_write64_int64(__cvmx_fau_store_address(1, reg), value);
}
