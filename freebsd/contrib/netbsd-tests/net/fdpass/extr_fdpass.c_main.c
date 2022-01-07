
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int o ;
typedef int i ;
typedef int buf ;


 int AF_LOCAL ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int SOCK_DGRAM ;
 int atoi (char*) ;
 int close (int) ;
 int debug ;
 int err (int,char*) ;
 int execlp (char*,char*,char*,char*,char*,char*,int *) ;
 int fork () ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int open (char*,int,int) ;
 char* optarg ;
 int recv_fd (int) ;
 int send_fd (int,int) ;
 int snprintf (char*,int,char*,int) ;
 int socketpair (int ,int ,int ,int*) ;
 int system (char*) ;
 int usage () ;
 int wait (int*) ;
 int write (int,char*,int) ;

int
main(int argc, char *argv[])
{
 int s[2], fd, status, c, verbose;
 char buf[1024], *prog;

 prog = ((void*)0);
 s[0] = s[1] = -1;
 verbose = 0;

 while ((c = getopt(argc, argv, "di:o:p:")) != -1)
  switch (c) {
  case 'd':
   debug++;
   break;
  case 'i':
   s[0] = atoi(optarg);
   break;
  case 'o':
   s[1] = atoi(optarg);
   break;
  case 'p':
   prog = optarg;
   break;
  default:
   usage();
  }

 if ((s[0] == -1 && s[1] != -1) || (s[0] != -1 && s[1] == -1))
  usage();

 if (s[0] == -1) {
  if (socketpair(AF_LOCAL, SOCK_DGRAM, 0, s) == -1)
   err(1, "socketpair");
 } else
  goto recv;

 switch (fork()) {
 case -1:
  err(1, "fork");
 default:
  fd = open("foo", O_RDWR|O_CREAT|O_TRUNC, 0666);
  if (fd == -1)
   err(1, "open");
  send_fd(s[0], fd);
  wait(&status);
  return 0;
 case 0:
  if (prog != ((void*)0)) {
   char i[64], o[64];
   snprintf(i, sizeof(i), "%d", s[0]);
   snprintf(o, sizeof(o), "%d", s[1]);
   execlp(prog, prog, "-i", i, "-o", o, ((void*)0));
   err(1, "execlp");
  }
 recv:
  fd = recv_fd(s[1]);
  if (verbose) {
   snprintf(buf, sizeof(buf), "ls -l /proc/%d/fd",
       getpid());
   system(buf);
  }
  if (write(fd, "foo\n", 4) == -1)
   err(1, "write");
  close(fd);
  return 0;
 }
}
