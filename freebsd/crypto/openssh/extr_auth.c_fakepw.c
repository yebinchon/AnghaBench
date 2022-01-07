
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {char* pw_name; char* pw_passwd; char* pw_gecos; char* pw_class; char* pw_dir; char* pw_shell; int pw_gid; int pw_uid; } ;
typedef int gid_t ;
typedef int fake ;
struct TYPE_2__ {int pw_gid; int pw_uid; } ;


 int memset (struct passwd*,int ,int) ;
 TYPE_1__* privsep_pw ;

struct passwd *
fakepw(void)
{
 static struct passwd fake;

 memset(&fake, 0, sizeof(fake));
 fake.pw_name = "NOUSER";
 fake.pw_passwd =
     "$2a$06$r3.juUaHZDlIbQaO2dS9FuYxL1W9M81R1Tc92PoSNmzvpEqLkLGrK";



 fake.pw_uid = privsep_pw == ((void*)0) ? (uid_t)-1 : privsep_pw->pw_uid;
 fake.pw_gid = privsep_pw == ((void*)0) ? (gid_t)-1 : privsep_pw->pw_gid;



 fake.pw_dir = "/nonexist";
 fake.pw_shell = "/nonexist";

 return (&fake);
}
