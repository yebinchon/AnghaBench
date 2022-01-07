
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct fio_timeval {int ftv_usec; int ftv_sec; } ;


 int remote_fileio_to_fio_long (int ,int ) ;
 int remote_fileio_to_fio_time (int ,int ) ;

__attribute__((used)) static void
remote_fileio_to_fio_timeval (struct timeval *tv, struct fio_timeval *ftv)
{
  remote_fileio_to_fio_time (tv->tv_sec, ftv->ftv_sec);
  remote_fileio_to_fio_long (tv->tv_usec, ftv->ftv_usec);
}
