
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotab {int t_seekpt; } ;
typedef int ino_t ;
typedef void RST_DIR ;


 int dirfile ;
 int dirlookup (char const*) ;
 struct inotab* inotablookup (int ) ;
 void* opendirfile (int ) ;
 int rst_seekdir (void*,int ,int ) ;

void *
rst_opendir(const char *name)
{
 struct inotab *itp;
 RST_DIR *dirp;
 ino_t ino;

 if ((ino = dirlookup(name)) > 0 &&
     (itp = inotablookup(ino)) != ((void*)0)) {
  dirp = opendirfile(dirfile);
  rst_seekdir(dirp, itp->t_seekpt, itp->t_seekpt);
  return (dirp);
 }
 return (((void*)0));
}
