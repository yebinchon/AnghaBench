
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; scalar_t__ st_mtime; } ;
struct pt_section {struct pt_sec_posix_status* status; } ;
struct TYPE_2__ {scalar_t__ st_size; scalar_t__ st_mtime; } ;
struct pt_sec_posix_status {TYPE_1__ stat; } ;


 int fstat (int,struct stat*) ;
 int pte_bad_file ;
 int pte_bad_image ;
 int pte_internal ;

__attribute__((used)) static int check_file_status(struct pt_section *section, int fd)
{
 struct pt_sec_posix_status *status;
 struct stat stat;
 int errcode;

 if (!section)
  return -pte_internal;

 errcode = fstat(fd, &stat);
 if (errcode)
  return -pte_bad_file;

 status = section->status;
 if (!status)
  return -pte_internal;

 if (stat.st_size != status->stat.st_size)
  return -pte_bad_image;

 if (stat.st_mtime != status->stat.st_mtime)
  return -pte_bad_image;

 return 0;
}
