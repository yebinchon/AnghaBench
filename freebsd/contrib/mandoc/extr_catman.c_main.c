
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int AF_LOCAL ;
 int AF_UNSPEC ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int SOCK_STREAM ;
 int chdir (char*) ;
 int close (int) ;
 int err (int,char*,...) ;
 int fork () ;
 int getopt (int,char**,char*) ;
 int open (char*,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int process_tree (int,int) ;
 int run_mandocd (int,char const*,char const*) ;
 int socketpair (int ,int ,int ,int*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 const char *defos, *outtype;
 int srv_fds[2];
 int dstdir_fd;
 int opt;
 pid_t pid;

 defos = ((void*)0);
 outtype = "ascii";
 while ((opt = getopt(argc, argv, "I:T:")) != -1) {
  switch (opt) {
  case 'I':
   defos = optarg;
   break;
  case 'T':
   outtype = optarg;
   break;
  default:
   usage();
  }
 }

 if (argc > 0) {
  argc -= optind;
  argv += optind;
 }
 if (argc != 2)
  usage();

 if (socketpair(AF_LOCAL, SOCK_STREAM, AF_UNSPEC, srv_fds) == -1)
  err(1, "socketpair");

 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork");
 case 0:
  close(srv_fds[0]);
  run_mandocd(srv_fds[1], outtype, defos);
 default:
  break;
 }
 close(srv_fds[1]);

 if ((dstdir_fd = open(argv[1], O_RDONLY | O_DIRECTORY)) == -1)
  err(1, "open(%s)", argv[1]);

 if (chdir(argv[0]) == -1)
  err(1, "chdir(%s)", argv[0]);

 return process_tree(srv_fds[0], dstdir_fd) == -1 ? 1 : 0;
}
