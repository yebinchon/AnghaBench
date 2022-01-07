
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EC_CMD_HELLO ;
 int ec_command (int ,int*,int,int*,int) ;

int ec_hello(void)
{
 uint8_t data_in[4];
 uint8_t data_out[4];

 data_in[0] = 0x40;
 data_in[1] = 0x30;
 data_in[2] = 0x20;
 data_in[3] = 0x10;

 ec_command(EC_CMD_HELLO, data_in, 4,
     data_out, 4);

 return (0);
}
