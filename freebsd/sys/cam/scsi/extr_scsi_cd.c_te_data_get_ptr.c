
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ioc_read_toc_entry32 {int data; } ;
struct ioc_read_toc_entry {struct cd_toc_entry* data; } ;
struct cd_toc_entry {int dummy; } ;


 int IOCPARM_LEN (int ) ;
 int panic (char*,int ) ;

__attribute__((used)) static struct cd_toc_entry *
te_data_get_ptr(void *irtep, u_long cmd)
{
 union {
  struct ioc_read_toc_entry irte;



 } *irteup;

 irteup = irtep;
 switch (IOCPARM_LEN(cmd)) {
 case sizeof(irteup->irte):
  return (irteup->irte.data);




 default:
  panic("Unhandled ioctl command %ld", cmd);
 }
}
