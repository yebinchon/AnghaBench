
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;
struct kinfo_file {scalar_t__ kf_fd; int kf_path; } ;


 scalar_t__ KF_FD_TYPE_TEXT ;
 int free (struct kinfo_file*) ;
 struct kinfo_file* kinfo_getfile_core (struct procstat_core*,int*) ;
 int strncpy (char*,int ,size_t) ;

__attribute__((used)) static int
procstat_getpathname_core(struct procstat_core *core, char *pathname,
    size_t maxlen)
{
 struct kinfo_file *files;
 int cnt, i, result;

 files = kinfo_getfile_core(core, &cnt);
 if (files == ((void*)0))
  return (-1);
 result = -1;
 for (i = 0; i < cnt; i++) {
  if (files[i].kf_fd != KF_FD_TYPE_TEXT)
   continue;
  strncpy(pathname, files[i].kf_path, maxlen);
  result = 0;
  break;
 }
 free(files);
 return (result);
}
