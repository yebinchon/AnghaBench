
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {int adh_trail_dirfd; int * adh_trail_dirfp; int adh_directory; } ;


 scalar_t__ ENOENT ;
 int EX_CONFIG ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 TYPE_1__* adhost ;
 int dirfd (int *) ;
 scalar_t__ errno ;
 int * fdopendir (int) ;
 void* open (int ,int) ;
 int * opendir (int ) ;
 int pjdlog_exit (int ,char*,int ) ;
 int receiver_directory_create () ;
 int stat (int ,struct stat*) ;

__attribute__((used)) static void
receiver_directory_open(void)
{
 struct stat sb;

 if (stat(adhost->adh_directory, &sb) == -1) {
  if (errno == ENOENT) {
   receiver_directory_create();
  } else {
   pjdlog_exit(EX_CONFIG,
       "Unable to stat directory \"%s\"",
       adhost->adh_directory);
  }
 }
 adhost->adh_trail_dirfp = opendir(adhost->adh_directory);
 if (adhost->adh_trail_dirfp == ((void*)0)) {
  pjdlog_exit(EX_CONFIG, "Unable to open directory \"%s\"",
      adhost->adh_directory);
 }
 adhost->adh_trail_dirfd = dirfd(adhost->adh_trail_dirfp);

}
