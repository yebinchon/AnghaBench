
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int dir_inside1 ;
 int dir_inside2 ;
 int dir_outside ;
 int dir_target ;
 int file_inside1 ;
 int file_inside2 ;
 int file_outside ;
 int kq ;
 int rmdir (int ) ;
 int target ;
 int unlink (int ) ;

void
cleanup(void)
{
 (void)unlink(file_inside1);
 (void)unlink(file_inside2);
 (void)unlink(file_outside);
 (void)rmdir(dir_inside1);
 (void)rmdir(dir_inside2);
 (void)rmdir(dir_outside);
 (void)rmdir(dir_target);
 (void)close(kq);
 (void)close(target);
}
