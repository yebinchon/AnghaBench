
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nenv_err ;
typedef int nargv_err ;
typedef int env_err ;
typedef int argv_err ;
struct TYPE_2__ {int ps_nargvstr; char** ps_argvstr; char** ps_envstr; int ps_nenvstr; } ;


 int STDOUT_FILENO ;
 TYPE_1__* __ps_strings ;
 int write (int ,char const*,int) ;

int
main(int argc, char **argv, char **environ)
{
 int ret = 0;
 int nenv;

 if (__ps_strings->ps_nargvstr != argc) {
  static const char nargv_err[] = "Wrong argc in ps_strings";
  write(STDOUT_FILENO, nargv_err, sizeof(nargv_err));
  ret = 1;
 }

 if (__ps_strings->ps_argvstr != argv) {
  static const char argv_err[] = "Wrong argv in ps_strings";
  write(STDOUT_FILENO, argv_err, sizeof(argv_err));
  ret = 1;
 }

 if (__ps_strings->ps_envstr != environ) {
  static const char env_err[] = "Wrong env in ps_strings";
  write(STDOUT_FILENO, env_err, sizeof(env_err));
  ret = 1;
 }
 nenv = 0;
 while (environ[nenv])
  ++nenv;
 if (__ps_strings->ps_nenvstr != nenv) {
  static const char nenv_err[] = "Wrong nenv in ps_strings";
  write(STDOUT_FILENO, nenv_err, sizeof(nenv_err));
  ret = 1;
 }

 return ret;
}
