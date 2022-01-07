
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef scalar_t__ fio_mode_t ;


 int remote_fileio_mode_to_target (int ) ;
 int remote_fileio_to_be (int ,char*,int) ;

__attribute__((used)) static void
remote_fileio_to_fio_mode (mode_t num, fio_mode_t fnum)
{
  remote_fileio_to_be (remote_fileio_mode_to_target(num), (char *) fnum, 4);
}
