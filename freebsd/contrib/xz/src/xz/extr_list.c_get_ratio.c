
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int buf ;


 int snprintf (char*,int,char*,double const) ;

__attribute__((used)) static const char *
get_ratio(uint64_t compressed_size, uint64_t uncompressed_size)
{
 if (uncompressed_size == 0)
  return "---";

 const double ratio = (double)(compressed_size)
   / (double)(uncompressed_size);
 if (ratio > 9.999)
  return "---";

 static char buf[16];
 snprintf(buf, sizeof(buf), "%.3f", ratio);
 return buf;
}
