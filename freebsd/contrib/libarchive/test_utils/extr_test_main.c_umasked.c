
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int umask (int) ;

mode_t umasked(mode_t expected_mode)
{
 mode_t mode = umask(0);
 umask(mode);
 return expected_mode & ~mode;
}
