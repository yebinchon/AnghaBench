
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ SWAPON ;
 int _PATH_GELI ;
 int free (char*) ;
 scalar_t__ qflag ;
 int run_cmd (int *,char*,int ,char*,char*) ;
 int stat (char const*,struct stat*) ;
 char* swap_basename (char const*) ;
 char* swap_on_geli_args (char*) ;
 char const* swap_on_off_sfile (char const*,int) ;
 int warnx (char*,char const*) ;
 scalar_t__ which_prog ;

__attribute__((used)) static const char *
swap_on_off_geli(const char *name, char *mntops, int doingall)
{
 struct stat sb;
 char *dname, *args;
 int error;

 error = stat(name, &sb);

 if (which_prog == SWAPON) do {

  if (error == 0)
   break;

  args = swap_on_geli_args(mntops);
  if (args == ((void*)0))
   return (((void*)0));

  dname = swap_basename(name);
  if (dname == ((void*)0)) {
   free(args);
   return (((void*)0));
  }

  error = run_cmd(((void*)0), "%s onetime%s %s", _PATH_GELI, args,
      dname);

  free(dname);
  free(args);

  if (error) {

   if (qflag == 0)
    warnx("%s: Invalid parameters", name);
   return (((void*)0));
  }
 } while (0);

 return (swap_on_off_sfile(name, doingall));
}
