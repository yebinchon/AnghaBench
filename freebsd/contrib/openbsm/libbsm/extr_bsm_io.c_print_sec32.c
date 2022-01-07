
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ time_t ;
typedef int FILE ;


 int AU_OFLAG_RAW ;
 int ctime_r (scalar_t__*,char*) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
print_sec32(FILE *fp, u_int32_t sec, int oflags)
{
 time_t timestamp;
 char timestr[26];

 if (oflags & AU_OFLAG_RAW)
  fprintf(fp, "%u", sec);
 else {
  timestamp = (time_t)sec;
  ctime_r(&timestamp, timestr);
  timestr[24] = '\0';
  fprintf(fp, "%s", timestr);
 }
}
