
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PFKEY_EXTLEN (char*) ;
 int PF_INET ;
 int PF_INET6 ;
 int free (char*) ;
 int nitems (char**) ;
 int printf (char*,...) ;
 char** requests ;
 char* setpolicy (char*) ;
 int test (char*,int ) ;

main()
{
 int i;
 char *buf;

 for (i = 0; i < nitems(requests); i++) {
  printf("* requests:[%s]\n", requests[i]);
  if ((buf = setpolicy(requests[i])) == ((void*)0))
   continue;
  printf("\tsetlen:%d\n", PFKEY_EXTLEN(buf));

  printf("\tPF_INET:\n");
  test(buf, PF_INET);

  printf("\tPF_INET6:\n");
  test(buf, PF_INET6);
  free(buf);
 }
}
