
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; } ;
struct pt_sec_posix_status {struct stat stat; } ;


 struct pt_sec_posix_status* malloc (int) ;
 int pte_bad_file ;
 int pte_bad_image ;
 int pte_internal ;
 int pte_nomem ;
 int stat (char const*,struct stat*) ;

int pt_section_mk_status(void **pstatus, uint64_t *psize, const char *filename)
{
 struct pt_sec_posix_status *status;
 struct stat buffer;
 int errcode;

 if (!pstatus || !psize)
  return -pte_internal;

 errcode = stat(filename, &buffer);
 if (errcode < 0)
  return -pte_bad_file;

 if (buffer.st_size < 0)
  return -pte_bad_image;

 status = malloc(sizeof(*status));
 if (!status)
  return -pte_nomem;

 status->stat = buffer;

 *pstatus = status;
 *psize = (uint64_t) buffer.st_size;

 return 0;
}
