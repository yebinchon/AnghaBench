
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adh_reset; int adh_directory; int adh_trail_offset; int adh_trail_name; int * adh_remote; } ;


 TYPE_1__* adhost ;
 int adist_remote_cond ;
 int adist_remote_mtx ;
 int adist_trail ;
 int cv_wait (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pjdlog_debug (int,char*,int ,int ) ;
 int trail_close (int ) ;
 int trail_filefd (int ) ;
 int trail_filename (int ) ;
 int trail_next (int ) ;
 int trail_reset (int ) ;
 int trail_start (int ,int ,int ) ;
 int wait_for_dir () ;
 int wait_for_file_init (int) ;

__attribute__((used)) static bool
read_thread_wait(void)
{
 bool newfile = 0;

 mtx_lock(&adist_remote_mtx);
 if (adhost->adh_reset) {
reset:
  adhost->adh_reset = 0;
  if (trail_filefd(adist_trail) != -1)
   trail_close(adist_trail);
  trail_reset(adist_trail);
  while (adhost->adh_remote == ((void*)0))
   cv_wait(&adist_remote_cond, &adist_remote_mtx);
  trail_start(adist_trail, adhost->adh_trail_name,
      adhost->adh_trail_offset);
  newfile = 1;
 }
 mtx_unlock(&adist_remote_mtx);
 while (trail_filefd(adist_trail) == -1) {
  newfile = 1;
  wait_for_dir();




  mtx_lock(&adist_remote_mtx);
  if (adhost->adh_reset)
   goto reset;
  mtx_unlock(&adist_remote_mtx);
  if (trail_filefd(adist_trail) == -1)
   trail_next(adist_trail);
 }
 if (newfile) {
  pjdlog_debug(1, "Trail file \"%s/%s\" opened.",
      adhost->adh_directory,
      trail_filename(adist_trail));
  (void)wait_for_file_init(trail_filefd(adist_trail));
 }
 return (newfile);
}
