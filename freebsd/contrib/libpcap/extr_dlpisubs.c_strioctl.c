
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strioctl {int ic_cmd; int ic_timout; int ic_len; char* ic_dp; } ;


 int I_STR ;
 int ioctl (int,int ,struct strioctl*) ;

int
strioctl(int fd, int cmd, int len, char *dp)
{
 struct strioctl str;
 int retv;

 str.ic_cmd = cmd;
 str.ic_timout = -1;
 str.ic_len = len;
 str.ic_dp = dp;
 if ((retv = ioctl(fd, I_STR, &str)) < 0)
  return (retv);

 return (str.ic_len);
}
