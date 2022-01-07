
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_rdev; } ;
typedef int dev_t ;


 int NODEV ;
 int _PATH_DEVNULL ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static dev_t
get_devnull(void)
{
 struct stat st;

 if (stat(_PATH_DEVNULL, &st) != 0)
  return NODEV;

 return st.st_rdev;
}
