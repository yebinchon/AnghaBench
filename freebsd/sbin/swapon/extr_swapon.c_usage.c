
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* getprogname () ;
 int orig_prog ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage: %s ", getprogname());
 switch(orig_prog) {
 case 128:
     fprintf(stderr, "[-F fstab] -aLq | [-E] file ...\n");
     break;
 case 129:
     fprintf(stderr, "[-F fstab] -aLq | file ...\n");
     break;
 case 130:
     fprintf(stderr, "[-AghklmsU] [-a file ... | -d file ...]\n");
     break;
 }
 exit(1);
}
