
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEB (int ) ;
 int O_RDONLY ;
 int errx (int,char*) ;
 int isolation_protocol () ;
 scalar_t__ open (char*,int ) ;
 int printf (char*,...) ;
 int rd_port ;

int
main(int argc, char **argv)
{
    int num_pnp_devs;







    printf("Checking for Plug-n-Play devices...\n");


    for (rd_port = 0x80; (rd_port < 0xff); rd_port += 0x10) {
 DEB(printf("Trying Read_Port at %x...\n", (rd_port << 2) | 0x3) );
 num_pnp_devs = isolation_protocol();
 if (num_pnp_devs)
     break;
    }
    if (!num_pnp_devs) {
 printf("No Plug-n-Play devices were found\n");
 return (0);
    }
    return (0);
}
