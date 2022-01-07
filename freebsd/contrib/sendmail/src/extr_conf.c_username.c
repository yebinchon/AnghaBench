
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char* pw_name; scalar_t__ pw_uid; } ;


 scalar_t__ RealUid ;
 char* addquotes (char*,int *) ;
 struct passwd* sm_getpwnam (char*) ;
 struct passwd* sm_getpwuid (scalar_t__) ;
 char* sm_pstrdup_x (char*) ;
 int * strpbrk (char*,char*) ;
 int syserr (char*) ;

char *
username()
{
 static char *myname = ((void*)0);
 extern char *getlogin();
 register struct passwd *pw;


 if (myname == ((void*)0))
 {
  myname = getlogin();
  if (myname == ((void*)0) || myname[0] == '\0')
  {
   pw = sm_getpwuid(RealUid);
   if (pw != ((void*)0))
    myname = pw->pw_name;
  }
  else
  {
   uid_t uid = RealUid;

   if ((pw = sm_getpwnam(myname)) == ((void*)0) ||
         (uid != 0 && uid != pw->pw_uid))
   {
    pw = sm_getpwuid(uid);
    if (pw != ((void*)0))
     myname = pw->pw_name;
   }
  }
  if (myname == ((void*)0) || myname[0] == '\0')
  {
   syserr("554 5.3.0 Who are you?");
   myname = "postmaster";
  }
  else if (strpbrk(myname, ",;:/|\"\\") != ((void*)0))
   myname = addquotes(myname, ((void*)0));
  else
   myname = sm_pstrdup_x(myname);
 }
 return myname;
}
