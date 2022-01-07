
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DELAY (int) ;
 int PNP_CONFIG_CONTROL ;
 int PNP_MAX_CARDS ;
 int PNP_SERIAL_ISOLATION ;
 int PNP_SET_RD_DATA ;
 int PNP_WAKE ;
 int _PNP_ADDRESS ;
 int dump_resdata (int *,int) ;
 scalar_t__ get_serial (int *) ;
 scalar_t__ logdevs ;
 int outb (int ,int ) ;
 int pnp_write (int ,int) ;
 int rd_port ;
 int send_Initiation_LFSR () ;

int
isolation_protocol()
{
    int csn;
    u_char data[9];

    send_Initiation_LFSR();


    pnp_write(PNP_CONFIG_CONTROL, 0x04);

    for (csn = 1; (csn < PNP_MAX_CARDS); csn++) {

 logdevs = 0 ;
 pnp_write(PNP_WAKE, 0);
 pnp_write(PNP_SET_RD_DATA, rd_port);
 outb(_PNP_ADDRESS, PNP_SERIAL_ISOLATION);
 DELAY(1000);

 if (get_serial(data))
     dump_resdata(data, csn);
 else
     break;
    }
    return csn - 1;
}
