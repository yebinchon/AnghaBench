
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pass ;
typedef int bpass ;


 scalar_t__ SWAPOFF ;
 scalar_t__ SWAPON ;
 int _PATH_GBDE ;
 int arc4random_buf (unsigned char*,int) ;
 int free (char*) ;
 scalar_t__ qflag ;
 int run_cmd (int *,char*,int ,char*,...) ;
 int sprintf (char*,char*,unsigned char) ;
 char* swap_basename (char const*) ;
 char* swap_on_off_sfile (char const*,int) ;
 int warnx (char*,char const*) ;
 scalar_t__ which_prog ;

__attribute__((used)) static const char *
swap_on_off_gbde(const char *name, int doingall)
{
 const char *ret;
 char pass[64 * 2 + 1];
 unsigned char bpass[64];
 char *dname;
 int i, error;

 dname = swap_basename(name);
 if (dname == ((void*)0))
  return (((void*)0));

 if (which_prog == SWAPON) {
  arc4random_buf(bpass, sizeof(bpass));
  for (i = 0; i < (int)sizeof(bpass); i++)
   sprintf(&pass[2 * i], "%02x", bpass[i]);
  pass[sizeof(pass) - 1] = '\0';

  error = run_cmd(((void*)0), "%s init %s -P %s", _PATH_GBDE,
      dname, pass);
  if (error) {

   free(dname);
   if (qflag == 0)
    warnx("%s: Device already in use", name);
   return (((void*)0));
  }
  error = run_cmd(((void*)0), "%s attach %s -p %s", _PATH_GBDE,
      dname, pass);
  free(dname);
  if (error) {
   warnx("gbde (attach) error: %s", name);
   return (((void*)0));
  }
 }

 ret = swap_on_off_sfile(name, doingall);

 if (which_prog == SWAPOFF) {
  error = run_cmd(((void*)0), "%s detach %s", _PATH_GBDE, dname);
  free(dname);
  if (error) {

   if (qflag == 0)
    warnx("%s: Device not found", name);
   return (((void*)0));
  }
 }

 return (ret);
}
