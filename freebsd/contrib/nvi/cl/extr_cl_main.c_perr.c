
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
perr(char *name, char *msg)
{
 (void)fprintf(stderr, "%s:", name);
 if (msg != ((void*)0))
  (void)fprintf(stderr, "%s:", msg);
 (void)fprintf(stderr, "%s\n", strerror(errno));
 exit(1);
}
