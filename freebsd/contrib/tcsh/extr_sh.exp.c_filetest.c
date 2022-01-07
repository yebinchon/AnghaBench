
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int tcsh_number_t ;
struct stat {int st_mode; int st_dm_key; int st_dmonflags; int st_ctime; int st_mtime; int st_atime; int st_size; int st_gid; int st_uid; int st_nlink; scalar_t__ st_ino; scalar_t__ st_dev; int st_dm_mode; } ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
struct cvxstat {int dummy; } ;
typedef int string0 ;
typedef char Char ;


 int ANYOP ;
 int ERR_FILEINQ ;
 int ERR_FILENAME ;
 int ERR_NAME ;
 char* FILETESTS ;
 char* FILEVALS ;
 int G_APPEND ;
 int IMIGRATED ;
 int MB_LEN_MAX ;
 int R_OK ;
 char* STR0 ;
 char* STRNULL ;
 char* STRcolon ;
 char* STRminus1 ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISBLK (int) ;
 int S_ISCHR (int) ;
 int S_ISDIR (int) ;
 int S_ISFIFO (int) ;
 int S_ISGID ;
 int S_ISLNK (int) ;
 int S_ISOFL (int ) ;
 int S_ISREG (int) ;
 int S_ISSOCK (int) ;
 int S_ISUID ;
 int S_ISVTX ;
 int Strcat (int ,char*) ;
 char* Strchr (char*,char) ;
 scalar_t__ Strcmp (char*,char*) ;
 int Strcpy (char*,char*) ;
 int Strlen (char*) ;
 char* Strsave (char*) ;
 int TCSH_LSTAT (char*,struct stat*) ;
 int TCSH_STAT (char*,struct stat*) ;
 int TEXP_IGNORE ;
 int W_OK ;
 int X_OK ;
 scalar_t__ any (char*,char) ;
 char* areadlink (char*) ;
 int atoi (char*) ;
 int cleanup_push (char*,int (*) (char*)) ;
 int cleanup_until (char*) ;
 char* ctime (int *) ;
 int etraci (char*,int,char***) ;
 int find_cmd (char*,int ) ;
 char* globone (char*,int ) ;
 scalar_t__ isa (char*,int ) ;
 int isatty (int ) ;
 char* putn (int) ;
 int sh_access (char*,int ) ;
 char* short2str (char*) ;
 int stderror (int) ;
 char* str2short (char*) ;
 char tolower (char) ;
 int uid ;
 int xfree (char*) ;
 struct group* xgetgrgid (int ) ;
 struct passwd* xgetpwuid (int ) ;
 char* xmalloc (int) ;
 int xsnprintf (char*,int,char*,unsigned int) ;

Char *
filetest(Char *cp, Char ***vp, int ignore)
{





    struct stat stb, *st = ((void*)0);
    tcsh_number_t i = 0;
    unsigned pmask = 0xffff;
    int altout = 0;
    Char *ft = cp, *dp, *ep, *strdev, *strino, *strF, *str, valtest = '\0',
    *errval = STR0;
    char *string, string0[22 + MB_LEN_MAX + 1];
    time_t footime;
    struct passwd *pw;
    struct group *gr;

    while(any(FILETESTS, *++ft))
 continue;

    if (!*ft && *(ft - 1) == 'L')
 --ft;

    if (any(FILEVALS, *ft)) {
 valtest = *ft++;





 errval = valtest == 'F' ? STRcolon : STRminus1;

 if (valtest == 'P' && *ft >= '0' && *ft <= '7') {
     pmask = (char) *ft - '0';
     while ( *++ft >= '0' && *ft <= '7' )
  pmask = 8 * pmask + ((char) *ft - '0');
 }
 if (Strcmp(ft, STRcolon) == 0 && any("AMCUGP", valtest)) {
     altout = 1;
     ++ft;
 }
    }

    if (*ft || ft == cp + 1)
 stderror(ERR_NAME | ERR_FILEINQ);
    if (isa(**vp, ANYOP) && stat(short2str(**vp), &stb))
 stderror(ERR_NAME | ERR_FILENAME);

    dp = *(*vp)++;
    if (ignore & TEXP_IGNORE)
 return (Strsave(STRNULL));
    ep = globone(dp, G_APPEND);
    cleanup_push(ep, xfree);
    ft = &cp[1];
    do
 switch (*ft) {

 case 'r':
     i = !sh_access(ep, R_OK);
     break;

 case 'w':
     i = !sh_access(ep, W_OK);
     break;

 case 'x':
     i = !sh_access(ep, X_OK);
     break;

 case 'X':


     i = find_cmd(ep, 0);
     break;

 case 't':
     i = isatty(atoi(short2str(ep)));
     break;

 default:
  if (!st) {
      st = &stb;
      if (stat(short2str(ep), st) == -1) {
   cleanup_until(ep);
   return (Strsave(errval));
      }
  }

     switch (*ft) {

     case 'f':



  i = 0;

  break;

     case 'd':



  i = 0;

  break;

     case 'p':



  i = 0;

  break;

     case 'm' :



       i = 0;

       break ;

     case 'K' :



       i = 0;

       break ;


     case 'l':



  i = 0;

  break;

     case 'S':



  i = 0;

  break;

     case 'b':



  i = 0;

  break;

     case 'c':



  i = 0;

  break;

     case 'u':
  i = (S_ISUID & st->st_mode) != 0;
  break;

     case 'g':
  i = (S_ISGID & st->st_mode) != 0;
  break;

     case 'k':
  i = (S_ISVTX & st->st_mode) != 0;
  break;

     case 'z':
  i = st->st_size == 0;
  break;







     case 's':
  i = stb.st_size != 0;
  break;

     case 'e':
  i = 1;
  break;

     case 'o':
  i = st->st_uid == uid;
  break;





     case 'D':
  i = (tcsh_number_t) st->st_dev;
  break;

     case 'I':
  i = (tcsh_number_t) st->st_ino;
  break;

     case 'F':
  strdev = putn( (int) st->st_dev);
  strino = putn( (int) st->st_ino);
  strF = xmalloc((2 + Strlen(strdev) + Strlen(strino))
          * sizeof(Char));
  (void) Strcat(Strcat(Strcpy(strF, strdev), STRcolon), strino);
  xfree(strdev);
  xfree(strino);
  cleanup_until(ep);
  return(strF);

     case 'L':
  if ( *(ft + 1) ) {
      i = 1;
      break;
  }
  i = 0;
  break;



     case 'N':
  i = (tcsh_number_t) st->st_nlink;
  break;

     case 'P':
  string = string0 + 1;
  (void) xsnprintf(string, sizeof(string0) - 1, "%o",
      pmask & (unsigned int)
      ((S_IRWXU|S_IRWXG|S_IRWXO|S_ISUID|S_ISGID) & st->st_mode));
  if (altout && *string != '0')
      *--string = '0';
  cleanup_until(ep);
  return(Strsave(str2short(string)));

     case 'U':
  if (altout && (pw = xgetpwuid(st->st_uid))) {
      cleanup_until(ep);
      return(Strsave(str2short(pw->pw_name)));
  }
  i = (tcsh_number_t) st->st_uid;
  break;

     case 'G':
  if (altout && (gr = xgetgrgid(st->st_gid))) {
      cleanup_until(ep);
      return(Strsave(str2short(gr->gr_name)));
  }
  i = (tcsh_number_t) st->st_gid;
  break;

     case 'Z':
  i = (tcsh_number_t) st->st_size;
  break;

     case 'A': case 'M': case 'C':
  footime = *ft == 'A' ? st->st_atime :
      *ft == 'M' ? st->st_mtime : st->st_ctime;
  if (altout) {
      strF = str2short(ctime(&footime));
      if ((str = Strchr(strF, '\n')) != ((void*)0))
   *str = (Char) '\0';
      cleanup_until(ep);
      return(Strsave(strF));
  }
  i = (tcsh_number_t) footime;
  break;

     }
 }
    while (*++ft && i);
    etraci("exp6 -? i", i, vp);
    cleanup_until(ep);
    return (putn(i));
}
