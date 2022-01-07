
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int conn ;
 char* find_value (int ,int) ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static void
convert_sff_connector(char *buf, size_t size, uint8_t value)
{
 const char *x;

 if ((x = find_value(conn, value)) == ((void*)0)) {
  if (value >= 0x0D && value <= 0x1F)
   x = "Unallocated";
  else if (value >= 0x24 && value <= 0x7F)
   x = "Unallocated";
  else
   x = "Vendor specific";
 }

 snprintf(buf, size, "%s", x);
}
