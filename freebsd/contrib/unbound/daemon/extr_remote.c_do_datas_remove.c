
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
typedef int buf ;
typedef int RES ;


 int perform_data_remove (int *,struct local_zones*,char*) ;
 int ssl_printf (int *,char*,...) ;
 scalar_t__ ssl_read_line (int *,char*,int) ;

__attribute__((used)) static void
do_datas_remove(RES* ssl, struct local_zones* zones)
{
 char buf[2048];
 int num = 0;
 while(ssl_read_line(ssl, buf, sizeof(buf))) {
  if(buf[0] == 0x04 && buf[1] == 0)
   break;
  if(!perform_data_remove(ssl, zones, buf)) {
   if(!ssl_printf(ssl, "error for input line: %s\n", buf))
    return;
  }
  else
   num++;
 }
 (void)ssl_printf(ssl, "removed %d datas\n", num);
}
