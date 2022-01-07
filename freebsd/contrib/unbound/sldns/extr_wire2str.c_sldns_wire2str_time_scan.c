
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int tm ;
struct tm {int dummy; } ;


 int memset (struct tm*,int ,int) ;
 int sldns_read_uint32 (int *) ;
 scalar_t__ sldns_serial_arithmetics_gmtime_r (int ,int ,struct tm*) ;
 int sldns_str_print (char**,size_t*,char*,char*) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

int sldns_wire2str_time_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{

 struct tm tm;
 char date_buf[16];
 uint32_t t;
 memset(&tm, 0, sizeof(tm));
 if(*dl < 4) return -1;
 t = sldns_read_uint32(*d);
 date_buf[15]=0;
 if(sldns_serial_arithmetics_gmtime_r(t, time(((void*)0)), &tm) &&
  strftime(date_buf, 15, "%Y%m%d%H%M%S", &tm)) {
  (*d) += 4;
  (*dl) -= 4;
  return sldns_str_print(s, sl, "%s", date_buf);
 }
 return -1;
}
