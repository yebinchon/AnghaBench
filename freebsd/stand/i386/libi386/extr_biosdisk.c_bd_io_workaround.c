
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int caddr_t ;
typedef int bdinfo_t ;


 int BD_RD ;
 int bd_edd_io (int *,int,int,int ,int ) ;

__attribute__((used)) static void
bd_io_workaround(bdinfo_t *bd)
{
 uint8_t buf[8 * 1024];

 bd_edd_io(bd, 0xffffffff, 1, (caddr_t)buf, BD_RD);
}
