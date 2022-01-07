
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct dcons_buf {int dummy; } ;


 int DCONS_BUF_SIZE ;
 int VTOP (char*) ;
 int * dcons_buffer ;
 int dcons_init (struct dcons_buf*,int,int ) ;
 int dcons_paddr ;
 int dcons_started ;
 int fw_enable () ;
 scalar_t__ round_page (int ) ;
 int sc ;
 int setenv (char*,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
dconsole_init(int arg)
{
    char buf[16], *dbuf;
    int size;

    if (dcons_started && arg == 0)
 return 0;
    dcons_started = 1;

    size = DCONS_BUF_SIZE;
    dbuf = (char *)round_page((vm_offset_t)&dcons_buffer[0]);
    dcons_paddr = VTOP(dbuf);
    sprintf(buf, "0x%08x", dcons_paddr);
    setenv("dcons.addr", buf, 1);

    dcons_init((struct dcons_buf *)dbuf, size, sc);
    sprintf(buf, "%d", size);
    setenv("dcons.size", buf, 1);
    fw_enable();
    return(0);
}
