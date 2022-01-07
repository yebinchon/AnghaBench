
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {char* pw_dir; } ;


 int free (char*) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int sqlite3_snprintf (int,char*,char*,char*,char*) ;
 int strlen30 (char*) ;

__attribute__((used)) static char *find_home_dir(int clearFlag){
  static char *home_dir = ((void*)0);
  if( clearFlag ){
    free(home_dir);
    home_dir = 0;
    return 0;
  }
  if( home_dir ) return home_dir;



  {
    struct passwd *pwent;
    uid_t uid = getuid();
    if( (pwent=getpwuid(uid)) != ((void*)0)) {
      home_dir = pwent->pw_dir;
    }
  }
  if (!home_dir) {
    home_dir = getenv("HOME");
  }
  if( home_dir ){
    int n = strlen30(home_dir) + 1;
    char *z = malloc( n );
    if( z ) memcpy(z, home_dir, n);
    home_dir = z;
  }

  return home_dir;
}
