
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
v_estr(
 char *name,
 int eno,
 char *msg)
{
 (void)fprintf(stderr, "%s", name);
 if (msg != ((void*)0))
  (void)fprintf(stderr, ": %s", msg);
 if (eno)
  (void)fprintf(stderr, ": %s", strerror(errno));
 (void)fprintf(stderr, "\n");
}
