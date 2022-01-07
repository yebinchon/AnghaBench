
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int * cmdpipe ;
 int err (int,char*) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int * initscr () ;
 int process_commands (int *) ;
 int * slvpipe ;
 int sscanf (char*,char*,int *) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 WINDOW *mainscr;

 if (argc != 5) {
  fprintf(stderr, "Usage: %s <cmdin> <cmdout> <slvin> slvout>\n",
   getprogname());
  return 0;
 }
 sscanf(argv[1], "%d", &cmdpipe[0]);
 sscanf(argv[2], "%d", &cmdpipe[1]);
 sscanf(argv[3], "%d", &slvpipe[0]);
 sscanf(argv[4], "%d", &slvpipe[1]);

 mainscr = initscr();
 if (mainscr == ((void*)0))
  err(1, "initscr failed");

 process_commands(mainscr);

 return 0;
}
