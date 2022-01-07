
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct futx {int dummy; } ;


 int BUFSIZ ;
 int EFTYPE ;
 int EINVAL ;



 int _IOFBF ;
 char* _PATH_UTX_ACTIVE ;
 char* _PATH_UTX_LASTLOGIN ;
 char* _PATH_UTX_LOG ;
 int _fstat (int ,struct stat*) ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int rounddown (int ,int) ;
 int setvbuf (int *,int *,int ,int ) ;
 int udb ;
 int * uf ;

int
setutxdb(int db, const char *file)
{
 struct stat sb;

 switch (db) {
 case 130:
  if (file == ((void*)0))
   file = _PATH_UTX_ACTIVE;
  break;
 case 129:
  if (file == ((void*)0))
   file = _PATH_UTX_LASTLOGIN;
  break;
 case 128:
  if (file == ((void*)0))
   file = _PATH_UTX_LOG;
  break;
 default:
  errno = EINVAL;
  return (-1);
 }

 if (uf != ((void*)0))
  fclose(uf);
 uf = fopen(file, "re");
 if (uf == ((void*)0))
  return (-1);

 if (db != 128) {

  if (_fstat(fileno(uf), &sb) != -1 &&
      sb.st_size % sizeof(struct futx) != 0) {
   fclose(uf);
   uf = ((void*)0);
   errno = EFTYPE;
   return (-1);
  }

  (void)setvbuf(uf, ((void*)0), _IOFBF,
      rounddown(BUFSIZ, sizeof(struct futx)));
 }

 udb = db;
 return (0);
}
