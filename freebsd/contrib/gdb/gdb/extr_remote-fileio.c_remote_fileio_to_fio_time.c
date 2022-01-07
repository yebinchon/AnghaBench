
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ fio_time_t ;
typedef int LONGEST ;


 int remote_fileio_to_be (int ,char*,int) ;

__attribute__((used)) static void
remote_fileio_to_fio_time (time_t num, fio_time_t fnum)
{
  remote_fileio_to_be ((LONGEST) num, (char *) fnum, 4);
}
