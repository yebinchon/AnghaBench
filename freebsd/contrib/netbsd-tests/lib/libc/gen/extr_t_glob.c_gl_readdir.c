
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_file {scalar_t__ dir; int name; } ;
struct gl_dir {scalar_t__ pos; scalar_t__ len; struct gl_file* dir; } ;
struct dirent {scalar_t__ d_ino; int d_reclen; int d_namlen; int d_type; int d_name; } ;


 int DPRINTF (char*) ;
 int DT_DIR ;
 int DT_REG ;
 int _DIRENT_RECLEN (struct dirent*,int ) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static struct dirent *
gl_readdir(void *v)
{
 static struct dirent dir;
 struct gl_dir *dd = v;
 if (dd->pos < dd->len) {
  const struct gl_file *f = &dd->dir[dd->pos++];
  strcpy(dir.d_name, f->name);
  dir.d_namlen = strlen(f->name);
  dir.d_ino = dd->pos;
  dir.d_type = f->dir ? DT_DIR : DT_REG;
  DPRINTF(("readdir %s %d\n", dir.d_name, dir.d_type));



  dir.d_reclen = _DIRENT_RECLEN(&dir, dir.d_namlen);

  return &dir;
 }
 return ((void*)0);
}
