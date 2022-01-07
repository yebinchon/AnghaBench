
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef enum nicestr_unit { ____Placeholder_nicestr_unit } nicestr_unit ;
typedef int buf ;


 int NICESTR_B ;
 int NICESTR_MIB ;
 int NICESTR_TIB ;
 int my_snprintf (char**,size_t*,char*,int ,int ) ;
 int snprintf (char*,size_t,char*,double const) ;
 int uint64_to_nicestr (scalar_t__,int const,int ,int,int) ;

__attribute__((used)) static const char *
progress_sizes(uint64_t compressed_pos, uint64_t uncompressed_pos, bool final)
{

 static char buf[128];
 char *pos = buf;
 size_t left = sizeof(buf);



 const enum nicestr_unit unit_min = final ? NICESTR_B : NICESTR_MIB;
 my_snprintf(&pos, &left, "%s / %s",
   uint64_to_nicestr(compressed_pos,
    unit_min, NICESTR_TIB, 0, 0),
   uint64_to_nicestr(uncompressed_pos,
    unit_min, NICESTR_TIB, 0, 1));




 const double ratio = uncompressed_pos > 0
   ? (double)(compressed_pos) / (double)(uncompressed_pos)
   : 16.0;



 if (ratio > 9.999)
  snprintf(pos, left, " > %.3f", 9.999);
 else
  snprintf(pos, left, " = %.3f", ratio);

 return buf;
}
