
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int ND_RA_FLAG_RTPREF_MASK ;

__attribute__((used)) static const char *
get_rtpref(u_int v)
{
 static const char *rtpref_str[] = {
  "medium",
  "high",
  "rsv",
  "low"
 };

 return rtpref_str[((v & ND_RA_FLAG_RTPREF_MASK) >> 3) & 0xff];
}
