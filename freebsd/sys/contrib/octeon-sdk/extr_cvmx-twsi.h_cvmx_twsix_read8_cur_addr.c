
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 scalar_t__ cvmx_twsix_read (int,int ,int,int*) ;

__attribute__((used)) static inline int cvmx_twsix_read8_cur_addr(int twsi_id, uint8_t dev_addr)
{
    uint64_t data;

    if (cvmx_twsix_read(twsi_id,dev_addr, 1, &data) < 0)
        return -1;
    return(data & 0xff);
}
