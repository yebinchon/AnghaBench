
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _stat {scalar_t__ st_size; } ;
struct pt_sec_windows_status {struct _stat stat; } ;


 struct pt_sec_windows_status* malloc (int) ;
 int pt_sec_windows_fstat (char const*,struct _stat*) ;
 int pte_bad_image ;
 int pte_internal ;
 int pte_nomem ;

int pt_section_mk_status(void **pstatus, uint64_t *psize, const char *filename)
{
 struct pt_sec_windows_status *status;
 struct _stat stat;
 int errcode;

 if (!pstatus || !psize)
  return -pte_internal;

 errcode = pt_sec_windows_fstat(filename, &stat);
 if (errcode < 0)
  return errcode;

 if (stat.st_size < 0)
  return -pte_bad_image;

 status = malloc(sizeof(*status));
 if (!status)
  return -pte_nomem;

 status->stat = stat;

 *pstatus = status;
 *psize = stat.st_size;

 return 0;
}
