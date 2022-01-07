
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t SFF_8024_ID_LAST ;
 char** sff_8024_id ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static void
convert_sff_identifier(char *buf, size_t size, uint8_t value)
{
 const char *x;

 x = ((void*)0);
 if (value <= SFF_8024_ID_LAST)
  x = sff_8024_id[value];
 else {
  if (value > 0x80)
   x = "Vendor specific";
  else
   x = "Reserved";
 }

 snprintf(buf, size, "%s", x);
}
