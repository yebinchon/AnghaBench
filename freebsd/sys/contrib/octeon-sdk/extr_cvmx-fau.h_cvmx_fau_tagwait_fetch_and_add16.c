
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int16_t ;
typedef int cvmx_fau_tagwait16_t ;
typedef int cvmx_fau_reg_16_t ;


 int __cvmx_fau_atomic_address (int,int ,int ) ;
 int cvmx_read64_int16 (int ) ;

__attribute__((used)) static inline cvmx_fau_tagwait16_t cvmx_fau_tagwait_fetch_and_add16(cvmx_fau_reg_16_t reg, int16_t value)
{
    union
    {
        uint64_t i16;
        cvmx_fau_tagwait16_t t;
    } result;
    result.i16 = cvmx_read64_int16(__cvmx_fau_atomic_address(1, reg, value));
    return result.t;
}
