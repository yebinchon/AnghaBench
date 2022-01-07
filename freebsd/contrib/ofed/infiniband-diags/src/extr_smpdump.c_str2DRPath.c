
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hop_cnt; char* path; } ;
typedef TYPE_1__ DRPath ;


 int DEBUG (char*,...) ;
 scalar_t__ atoi (char*) ;
 char dev_port ;
 char* strchr (char*,char) ;

int str2DRPath(char *str, DRPath * path)
{
 char *s;

 path->hop_cnt = -1;

 DEBUG("DR str: %s", str);
 while (str && *str) {
  if ((s = strchr(str, ',')))
   *s = 0;
  path->path[++path->hop_cnt] = (char)atoi(str);
  if (!s)
   break;
  str = s + 1;
 }
 return path->hop_cnt;
}
