
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int subline ;
typedef int line ;
struct TYPE_2__ {char* fs_spec; char* fs_file; char* fs_type; char* fs_mntops; char* fs_vfstype; void* fs_passno; void* fs_freq; } ;


 int EFTYPE ;
 void* FSTAB_RO ;
 void* FSTAB_RQ ;
 void* FSTAB_RW ;
 void* FSTAB_SW ;
 void* FSTAB_XX ;
 int LineNo ;
 int MAXLINELENGTH ;
 int _fs_fp ;
 TYPE_1__ _fs_fstab ;
 void* atoi (char*) ;
 int error (int ) ;
 char* fgets (char*,int,int ) ;
 int fixfsfile () ;
 scalar_t__ strcmp (char*,void*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int strpbrk (char*,char*) ;
 void* strsep (char**,char*) ;
 scalar_t__ strunvis (char*,char*) ;

__attribute__((used)) static int
fstabscan(void)
{
 char *cp, *p;

 static char line[1024];
 char subline[1024];
 int typexx;

 for (;;) {

  if (!(p = fgets(line, sizeof(line), _fs_fp)))
   return (0);

  ++LineNo;
  if (*line == '#' || *line == '\n')
   continue;
  if (!strpbrk(p, " \t")) {
   _fs_fstab.fs_spec = strsep(&p, ":\n");
   _fs_fstab.fs_file = strsep(&p, ":\n");
   fixfsfile();
   _fs_fstab.fs_type = strsep(&p, ":\n");
   if (_fs_fstab.fs_type) {
    if (!strcmp(_fs_fstab.fs_type, FSTAB_XX))
     continue;
    _fs_fstab.fs_mntops = _fs_fstab.fs_type;
    _fs_fstab.fs_vfstype =
        strcmp(_fs_fstab.fs_type, FSTAB_SW) ?
        "ufs" : "swap";
    if ((cp = strsep(&p, ":\n")) != ((void*)0)) {
     _fs_fstab.fs_freq = atoi(cp);
     if ((cp = strsep(&p, ":\n")) != ((void*)0)) {
      _fs_fstab.fs_passno = atoi(cp);
      return (1);
     }
    }
   }
   goto bad;
  }

  while ((cp = strsep(&p, " \t\n")) != ((void*)0) && *cp == '\0')
   ;
  _fs_fstab.fs_spec = cp;
  if (_fs_fstab.fs_spec == ((void*)0) || *_fs_fstab.fs_spec == '#')
   continue;
  if (strunvis(_fs_fstab.fs_spec, _fs_fstab.fs_spec) < 0)
   goto bad;
  while ((cp = strsep(&p, " \t\n")) != ((void*)0) && *cp == '\0')
   ;
  _fs_fstab.fs_file = cp;
  if (_fs_fstab.fs_file == ((void*)0))
   goto bad;
  if (strunvis(_fs_fstab.fs_file, _fs_fstab.fs_file) < 0)
   goto bad;
  fixfsfile();
  while ((cp = strsep(&p, " \t\n")) != ((void*)0) && *cp == '\0')
   ;
  _fs_fstab.fs_vfstype = cp;
  while ((cp = strsep(&p, " \t\n")) != ((void*)0) && *cp == '\0')
   ;
  _fs_fstab.fs_mntops = cp;
  if (_fs_fstab.fs_mntops == ((void*)0))
   goto bad;
  _fs_fstab.fs_freq = 0;
  _fs_fstab.fs_passno = 0;
  while ((cp = strsep(&p, " \t\n")) != ((void*)0) && *cp == '\0')
   ;
  if (cp != ((void*)0)) {
   _fs_fstab.fs_freq = atoi(cp);
   while ((cp = strsep(&p, " \t\n")) != ((void*)0) && *cp == '\0')
    ;
   if (cp != ((void*)0))
    _fs_fstab.fs_passno = atoi(cp);
  }
  (void)strlcpy(subline, _fs_fstab.fs_mntops, sizeof(subline));
  p = subline;
  for (typexx = 0, cp = strsep(&p, ","); cp;
       cp = strsep(&p, ",")) {
   if (strlen(cp) != 2)
    continue;
   if (!strcmp(cp, FSTAB_RW)) {
    _fs_fstab.fs_type = FSTAB_RW;
    break;
   }
   if (!strcmp(cp, FSTAB_RQ)) {
    _fs_fstab.fs_type = FSTAB_RQ;
    break;
   }
   if (!strcmp(cp, FSTAB_RO)) {
    _fs_fstab.fs_type = FSTAB_RO;
    break;
   }
   if (!strcmp(cp, FSTAB_SW)) {
    _fs_fstab.fs_type = FSTAB_SW;
    break;
   }
   if (!strcmp(cp, FSTAB_XX)) {
    _fs_fstab.fs_type = FSTAB_XX;
    typexx++;
    break;
   }
  }
  if (typexx)
   continue;
  if (cp != ((void*)0))
   return (1);

bad:
  error(EFTYPE);
 }

}
