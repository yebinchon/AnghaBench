
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; } ;
struct quotafile {scalar_t__ dev; } ;


 int stat (char const*,struct stat*) ;

int
quota_check_path(const struct quotafile *qf, const char *path)
{
 struct stat st;

 if (stat(path, &st) == -1)
  return (-1);
 return (st.st_dev == qf->dev);
}
