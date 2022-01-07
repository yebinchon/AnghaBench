
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int parse_uint4(const char *pos, size_t len)
{
 char buf[5];
 int ret;

 if (len < 4)
  return -1;
 buf[0] = pos[0];
 buf[1] = pos[1];
 buf[2] = pos[2];
 buf[3] = pos[3];
 buf[4] = 0x00;
 if (sscanf(buf, "%4d", &ret) != 1)
  return -1;
 return ret;
}
