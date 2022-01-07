
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int FSHTTY ;
 int NOFILE ;
 int OLDSTD ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int SHDIAG ;
 int SHIN ;
 int SHOUT ;
 int S_ISSOCK (int ) ;
 int _PATH_DEVNULL ;
 int fix_yp_bugs () ;
 scalar_t__ fstat (int,struct stat*) ;
 int nlsclose () ;
 int nlsinit () ;
 int xclose (int) ;
 int xopen (int ,int) ;

void
closem(void)
{
    int f, num_files;
    num_files = NOFILE;
    for (f = 0; f < num_files; f++)
 if (f != SHIN && f != SHOUT && f != SHDIAG && f != OLDSTD &&
     f != FSHTTY
     )
   {
     xclose(f);




   }





}
