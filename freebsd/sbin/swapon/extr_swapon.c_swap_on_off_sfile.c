
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Eflag ;
 scalar_t__ SWAPON ;
 int errno ;
 int swapoff (char const*) ;
 int swapon (char const*) ;
 int swapon_trim (char const*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;
 scalar_t__ which_prog ;

__attribute__((used)) static const char *
swap_on_off_sfile(const char *name, int doingall)
{
 int error;

 if (which_prog == SWAPON)
  error = Eflag ? swapon_trim(name) : swapon(name);
 else
  error = swapoff(name);

 if (error == -1) {
  switch (errno) {
  case 129:
   if (doingall == 0)
    warnx("%s: Device already in use", name);
   break;
  case 128:
   if (which_prog == SWAPON)
    warnx("%s: NSWAPDEV limit reached", name);
   else if (doingall == 0)
    warn("%s", name);
   break;
  default:
   warn("%s", name);
   break;
  }
  return (((void*)0));
 }
 return (name);
}
