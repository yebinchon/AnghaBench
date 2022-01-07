
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;


 int CSIDL_APPDATA ;
 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 int SHGetFolderPath (int *,int ,int *,int ,char*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int asprintf (char**,char*,char*) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int issuid () ;
 char* strdup (char*) ;

__attribute__((used)) static char *
get_config_file_for_user(void)
{
    char *fn = ((void*)0);


    char *home = ((void*)0);

    if (!issuid()) {
        fn = getenv("SOFTPKCS11RC");
        if (fn)
            fn = strdup(fn);
        home = getenv("HOME");
    }
    if (fn == ((void*)0) && home == ((void*)0)) {
        struct passwd *pw = getpwuid(getuid());
        if(pw != ((void*)0))
            home = pw->pw_dir;
    }
    if (fn == ((void*)0)) {
        if (home)
            asprintf(&fn, "%s/.soft-token.rc", home);
        else
            fn = strdup("/etc/soft-token.rc");
    }
    return fn;
}
