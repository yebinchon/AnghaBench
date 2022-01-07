
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;


 scalar_t__ cvmx_twsix_read_ia (int,int ,int ,int,int,int*) ;

__attribute__((used)) static inline int64_t cvmx_twsix_read_ia8(int twsi_id, uint8_t dev_addr, uint8_t internal_addr, int num_bytes)
{
    uint64_t data;
    if (num_bytes < 1 || num_bytes > 7)
        return -1;
    if (cvmx_twsix_read_ia(twsi_id,dev_addr,internal_addr,num_bytes, 1, &data) < 0)
        return -1;
    return data;
}
