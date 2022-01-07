
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int free (char*) ;
 char* getpass (char*) ;
 int printf (char*,char*) ;
 char* smb_simplecrypt (int *,char*) ;

int
cmd_crypt(int argc, char *argv[])
{
 char *cp, *psw;

 if (argc < 2)
  psw = getpass("Password:");
 else
  psw = argv[1];
 cp = smb_simplecrypt(((void*)0), psw);
 if (cp == ((void*)0))
  errx(EX_DATAERR, "out of memory");
 printf("%s\n", cp);
 free(cp);
 exit(0);
}
