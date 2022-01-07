
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {char** vec; } ;
struct dirent {char* d_name; scalar_t__ d_ino; } ;
typedef char DIR ;
typedef char Char ;


 int STRpath ;
 int STRrecognize_only_executables ;
 int STRslash ;
 size_t Strlen (char*) ;
 char* Strspl (char*,int ) ;
 int TW_FL_REL ;
 struct varent* adrof (int ) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int executable (char*,char*,int ) ;
 char* opendir (int ) ;
 int opendir_cleanup ;
 struct dirent* readdir (char*) ;
 int short2str (char*) ;
 char* str2short (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int tw_cmd_add (char*) ;
 int tw_cmd_got ;
 int xfree ;

__attribute__((used)) static void
tw_cmd_cmd(void)
{
    DIR *dirp;
    struct dirent *dp;
    Char *dir = ((void*)0), *name;
    Char **pv;
    struct varent *v = adrof(STRpath);
    struct varent *recexec = adrof(STRrecognize_only_executables);
    size_t len;


    if (v == ((void*)0) || v->vec == ((void*)0))
 return;

    for (pv = v->vec; *pv; pv++) {
 if (pv[0][0] != '/') {
     tw_cmd_got |= TW_FL_REL;
     continue;
 }

 if ((dirp = opendir(short2str(*pv))) == ((void*)0))
     continue;

 cleanup_push(dirp, opendir_cleanup);
 if (recexec) {
     dir = Strspl(*pv, STRslash);
     cleanup_push(dir, xfree);
 }
 while ((dp = readdir(dirp)) != ((void*)0)) {
     name = str2short(dp->d_name);
     if (dp->d_ino == 0 || (recexec && !executable(dir, name, 0)))
  continue;
            len = Strlen(name);
            if (name[0] == '#' ||
  name[0] == '.' ||
  name[len - 1] == '~' ||
  name[len - 1] == '%')
                continue;
            tw_cmd_add(name);
 }
 cleanup_until(dirp);
    }
}
