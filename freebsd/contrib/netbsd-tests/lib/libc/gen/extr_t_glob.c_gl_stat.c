
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gl_file {char* name; } ;
typedef int buf ;
struct TYPE_4__ {int st_mode; } ;
typedef TYPE_1__ __gl_stat_t ;


 int DPRINTF (char*) ;
 int ENOENT ;
 int MAXPATHLEN ;
 int S_IFDIR ;
 size_t __arraycount (struct gl_file*) ;
 struct gl_file* a ;
 struct gl_file* b ;
 int errno ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int trim (char*,int,char const*) ;

__attribute__((used)) static int
gl_stat(const char *name , __gl_stat_t *st)
{
 char buf[MAXPATHLEN];
 trim(buf, sizeof(buf), name);
 memset(st, 0, sizeof(*st));

 if (strcmp(buf, "a") == 0 || strcmp(buf, "a/b") == 0) {
  st->st_mode |= S_IFDIR;
  return 0;
 }

 if (buf[0] == 'a' && buf[1] == '/') {
  struct gl_file *f;
  size_t offs, count;

  if (buf[2] == 'b' && buf[3] == '/') {
   offs = 4;
   count = __arraycount(b);
   f = b;
  } else {
   offs = 2;
   count = __arraycount(a);
   f = a;
  }

  for (size_t i = 0; i < count; i++)
   if (strcmp(f[i].name, buf + offs) == 0)
    return 0;
 }
 DPRINTF(("stat %s %d\n", buf, st->st_mode));
 errno = ENOENT;
 return -1;
}
