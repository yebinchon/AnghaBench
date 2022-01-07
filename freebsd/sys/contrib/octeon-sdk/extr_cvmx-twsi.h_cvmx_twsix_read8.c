
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int cvmx_twsix_read_ia8 (int,int ,int ,int) ;

__attribute__((used)) static inline int cvmx_twsix_read8(int twsi_id, uint8_t dev_addr, uint8_t internal_addr)
{
    return cvmx_twsix_read_ia8(twsi_id, dev_addr, internal_addr, 1);
}
