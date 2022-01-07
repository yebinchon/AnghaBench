
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;


 int cvmx_twsix_write_ia (int,int ,int ,int,int,int ) ;

__attribute__((used)) static void cvmx_retry_i2c_write(int twsi_id, uint8_t dev_addr, uint16_t internal_addr, int num_bytes, int ia_width_bytes, uint64_t data)
{
    int tries = 3;
    int r;
    do {
        r = cvmx_twsix_write_ia(twsi_id, dev_addr, internal_addr, num_bytes, ia_width_bytes, data);
    } while (tries-- > 0 && r < 0);
}
