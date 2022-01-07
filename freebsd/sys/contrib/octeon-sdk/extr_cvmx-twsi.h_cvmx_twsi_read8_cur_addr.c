
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int cvmx_twsix_read8_cur_addr (int ,int ) ;

__attribute__((used)) static inline int cvmx_twsi_read8_cur_addr(uint8_t dev_addr)
{
    return cvmx_twsix_read8_cur_addr(0, dev_addr);
}
