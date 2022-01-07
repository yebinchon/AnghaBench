
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
typedef int RES ;


 int local_zones_add_RR (struct local_zones*,char*) ;
 int ssl_printf (int *,char*,char*) ;

__attribute__((used)) static int
perform_data_add(RES* ssl, struct local_zones* zones, char* arg)
{
 if(!local_zones_add_RR(zones, arg)) {
  ssl_printf(ssl,"error in syntax or out of memory, %s\n", arg);
  return 0;
 }
 return 1;
}
