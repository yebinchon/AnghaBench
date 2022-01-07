
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODCTL_UNLOAD ;
 int __UNCONST (char const*) ;
 int atf_tc_fail (char*) ;
 int check_permission () ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 int modctl (int ,int ) ;
 int printf (char*,char const*) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int
unload(const char *name, bool fatal)
{
 int err;

 check_permission();
 printf("Unloading module %s\n", name);
 errno = err = 0;

 if (modctl(MODCTL_UNLOAD, __UNCONST(name)) == -1) {
  err = errno;
  fprintf(stderr, "modctl(MODCTL_UNLOAD, %s) failed: %s\n",
      name, strerror(err));
  if (fatal)
   atf_tc_fail("Module unload failed");
 }
 return err;
}
