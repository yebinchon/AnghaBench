
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LAZY ;
 int dlclose (void*) ;
 void* dlopen (void*,int ) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void *
init_fini_helper(void *arg)
{
 void *dso;
 if ((dso = dlopen(arg, RTLD_LAZY)) == ((void*)0)) {
  fprintf(stderr, "opening %s failed\n", (char *)arg);
  exit(1);
 }
 dlclose(dso);
 return ((void*)0);
}
