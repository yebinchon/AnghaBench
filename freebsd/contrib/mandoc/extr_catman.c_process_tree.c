
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* fts_path; int fts_info; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


 int EEXIST ;



 int FTS_NOCHDIR ;
 int FTS_PHYSICAL ;
 int FTS_SKIP ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRWXU ;
 int S_IXGRP ;
 int S_IXOTH ;
 int errno ;
 int fts_close (int *) ;
 int * fts_open (char* const*,int,int *) ;
 TYPE_1__* fts_read (int *) ;
 int fts_set (int *,TYPE_1__*,int ) ;
 int mkdirat (int,char const*,int) ;
 int process_manpage (int,int,char const*) ;
 int warn (char*,...) ;
 int warnx (char*,char const*) ;

int
process_tree(int srv_fd, int dstdir_fd)
{
 FTS *ftsp;
 FTSENT *entry;
 const char *argv[2];
 const char *path;

 argv[0] = ".";
 argv[1] = (char *)((void*)0);

 if ((ftsp = fts_open((char * const *)argv,
     FTS_PHYSICAL | FTS_NOCHDIR, ((void*)0))) == ((void*)0)) {
  warn("fts_open");
  return -1;
 }

 while ((entry = fts_read(ftsp)) != ((void*)0)) {
  path = entry->fts_path + 2;
  switch (entry->fts_info) {
  case 128:
   if (process_manpage(srv_fd, dstdir_fd, path) == -1) {
    fts_close(ftsp);
    return -1;
   }
   break;
  case 130:
   if (*path != '\0' &&
       mkdirat(dstdir_fd, path, S_IRWXU | S_IRGRP |
         S_IXGRP | S_IROTH | S_IXOTH) == -1 &&
       errno != EEXIST) {
    warn("mkdirat(%s)", path);
    (void)fts_set(ftsp, entry, FTS_SKIP);
   }
   break;
  case 129:
   break;
  default:
   warnx("%s: not a regular file", path);
   break;
  }
 }

 fts_close(ftsp);
 return 0;
}
