
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ cvmx_twsix_write_ia (int,int ,int ,int,int,int ) ;

__attribute__((used)) static inline int cvmx_twsix_write8(int twsi_id, uint8_t dev_addr, uint8_t internal_addr, uint8_t data)
{
    if (cvmx_twsix_write_ia(twsi_id,dev_addr,internal_addr, 1, 1,data) < 0)
        return -1;
    return 0;
}
