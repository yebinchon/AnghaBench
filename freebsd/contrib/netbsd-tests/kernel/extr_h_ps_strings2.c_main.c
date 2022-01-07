
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {char** ps_argvstr; size_t ps_nargvstr; } ;


 size_t LEN ;
 int UINT_MAX ;
 TYPE_1__* __ps_strings ;
 char** calloc (size_t,int) ;
 int errx (int,char*) ;
 int printf (char*) ;
 int sleep (int ) ;
 int snprintf (char*,int,char*,size_t) ;
 char* strdup (char*) ;

int
main(void)
{
 size_t i;
 char buf[16];
 char **argv;

 if ((argv = calloc(LEN, sizeof(*argv))) == ((void*)0))
  errx(1, "calloc failed");
 for (i = 0; i < LEN; ++i) {
  snprintf(buf, sizeof(buf), "arg%04zx", i);
  if ((argv[i] = strdup(buf)) == ((void*)0))
   errx(1, "strdup failed");
 }
 __ps_strings->ps_argvstr = argv;
 __ps_strings->ps_nargvstr = LEN;

 printf("Sleeping forever...\n");
 do {
  sleep(UINT_MAX);
 } while (1);
 return 0;
}
