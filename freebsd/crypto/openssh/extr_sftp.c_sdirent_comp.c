
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int mtime; } ;
struct TYPE_4__ {TYPE_1__ a; int filename; } ;
typedef TYPE_2__ SFTP_DIRENT ;


 int LS_NAME_SORT ;
 int LS_REVERSE_SORT ;
 int LS_SIZE_SORT ;
 int LS_TIME_SORT ;
 int NCMP (int ,int ) ;
 int fatal (char*) ;
 int sort_flag ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
sdirent_comp(const void *aa, const void *bb)
{
 SFTP_DIRENT *a = *(SFTP_DIRENT **)aa;
 SFTP_DIRENT *b = *(SFTP_DIRENT **)bb;
 int rmul = sort_flag & LS_REVERSE_SORT ? -1 : 1;


 if (sort_flag & LS_NAME_SORT)
  return (rmul * strcmp(a->filename, b->filename));
 else if (sort_flag & LS_TIME_SORT)
  return (rmul * (a->a.mtime == b->a.mtime ? 0 : (a->a.mtime < b->a.mtime ? 1 : -1)));
 else if (sort_flag & LS_SIZE_SORT)
  return (rmul * (a->a.size == b->a.size ? 0 : (a->a.size < b->a.size ? 1 : -1)));

 fatal("Unknown ls sort type");
}
