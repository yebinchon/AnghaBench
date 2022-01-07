
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;


 int memcpy (char*,int *,int) ;
 char* numtoa (int ) ;

__attribute__((used)) static char *
refid_string(
 u_int32 refid,
 int stratum
 )
{
 if (stratum <= 1) {
  static char junk[5];
  junk[4] = 0;
  memcpy(junk, &refid, 4);
  return junk;
 }

 return numtoa(refid);
}
