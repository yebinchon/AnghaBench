
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OK ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int ddb_main (int,char**) ;
 int ddb_readfile (char*) ;
 int exit (int ) ;

int
main(int argc, char *argv[])
{





 if (argc == 2 && argv[1][0] == '/' && access(argv[1], R_OK) == 0)
  ddb_readfile(argv[1]);
 else
  ddb_main(argc-1, argv+1);
 exit(EX_OK);
}
