
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spwd {char* sp_pwdp; } ;
struct passwd {char* pw_name; char* pw_passwd; } ;
struct authorization {char* a_password; } ;
typedef int Char ;


 int CGETS (int,int,char*) ;
 int ClearDisp () ;
 int ClearLines () ;
 scalar_t__ EINTR ;
 scalar_t__ GettingInput ;
 int KA_USERAUTH_VERSION ;
 int Rawmode () ;
 int Refresh () ;
 int * STRNULL ;
 int STRafsuser ;
 char* XCRYPT (struct passwd*,char*,char*) ;
 int auto_logout () ;
 scalar_t__ errno ;
 int euid ;
 struct authorization* getauthuid (int ) ;
 char* getenv (char*) ;
 struct spwd* getspnam (char*) ;
 int handle_pending_signals () ;
 scalar_t__ just_signaled ;
 scalar_t__ ka_UserAuthenticateGeneral (int ,char*,int *,int *,char*,int ,int ,int ,int *) ;
 int memset (char*,int ,int ) ;
 int setalarm (int ) ;
 char* short2str (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 int * varval (int ) ;
 char* xgetpass (char*) ;
 struct passwd* xgetpwuid (int ) ;
 int xprintf (int ,char*) ;
 int xputchar (char) ;

__attribute__((used)) static void
auto_lock(void)
{


    int i;
    char *srpp = ((void*)0);
    struct passwd *pw;
    if ((pw = xgetpwuid(euid)) != ((void*)0))
 srpp = pw->pw_passwd;




    if (srpp == ((void*)0)) {
 auto_logout();

 return;
    }

    setalarm(0);
    xputchar('\n');
    for (i = 0; i < 5; i++) {
 const char *crpp;
 char *pp;
 pp = xgetpass("Password:");

 crpp = crypt(pp, srpp);
 if ((crpp && strcmp(crpp, srpp) == 0)
     ) {
     (void) memset(pp, 0, strlen(pp));
     if (GettingInput && !just_signaled) {
  (void) Rawmode();
  ClearLines();
  ClearDisp();
  Refresh();
     }
     just_signaled = 0;
     return;
 }
 xprintf(CGETS(22, 2, "\nIncorrect passwd for %s\n"), pw->pw_name);
    }

    auto_logout();
}
