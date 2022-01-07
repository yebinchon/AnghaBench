
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int parse_uint2(const char *pos, size_t len)
{
 char buf[3];
 int ret;

 if (len < 2)
  return -1;
 buf[0] = pos[0];
 buf[1] = pos[1];
 buf[2] = 0x00;
 if (sscanf(buf, "%2d", &ret) != 1)
  return -1;
 return ret;
}
