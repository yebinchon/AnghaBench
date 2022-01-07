
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int RTLD_LAZY ;
 int _exit (int) ;
 scalar_t__ dl_iterate_phdr (int ,int *) ;
 int dl_iterate_phdr_cb ;
 void* dlopen (char*,int ) ;
 int * dlsym (void*,char*) ;
 int fprintf (int ,char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 scalar_t__ sleep_fini ;
 scalar_t__ sleep_init ;
 int stderr ;
 int test_dl_iterate_phdr_helper ;
 int * tls_callback_sym ;

__attribute__((used)) static void
test_dl_iterate_phdr(void)
{
 pthread_t t;
 void *dso;
 sleep_init = 0;
 sleep_fini = 0;
 if ((dso = dlopen("libh_helper_dso2.so", RTLD_LAZY)) == ((void*)0)) {
  fprintf(stderr, "opening helper failed\n");
  _exit(1);
 }
 tls_callback_sym = dlsym(dso, "tls_callback");
 if (tls_callback_sym == ((void*)0)) {
  fprintf(stderr, "bad helper\n");
  _exit(1);
 }
 pthread_create(&t, ((void*)0), test_dl_iterate_phdr_helper, ((void*)0));
 if (dl_iterate_phdr(dl_iterate_phdr_cb, ((void*)0)))
  _exit(1);
 _exit(0);
}
