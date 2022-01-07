
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int humanize_number (char*,int,int ,char*,int ,int) ;

__attribute__((used)) static const char *
fmtsize(int64_t rawsz)
{
 static char buf[5];

 humanize_number(buf, sizeof(buf), rawsz, "", HN_AUTOSCALE,
     HN_B | HN_NOSPACE | HN_DECIMAL);
 return (buf);
}
