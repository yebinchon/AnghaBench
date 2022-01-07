
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int32_t ;


 unsigned long NO_DISK_SECTORS ;
 int current_line_number ;
 unsigned long secsize ;
 unsigned long strtoul (char const*,char**,int ) ;
 int warnx (char*,int ,...) ;

__attribute__((used)) static u_int32_t
str2sectors(const char *str)
{
 char *end;
 unsigned long val;

 val = strtoul(str, &end, 0);
 if (str == end || *end == '\0') {
  warnx("ERROR line %d: unexpected size: \'%s\'",
      current_line_number, str);
  return NO_DISK_SECTORS;
 }

 if (*end == 'K')
  val *= 1024UL / secsize;
 else if (*end == 'M')
  val *= 1024UL * 1024UL / secsize;
 else if (*end == 'G')
  val *= 1024UL * 1024UL * 1024UL / secsize;
 else {
  warnx("ERROR line %d: unexpected modifier: %c "
      "(not K/M/G)", current_line_number, *end);
  return NO_DISK_SECTORS;
 }

 return val;
}
