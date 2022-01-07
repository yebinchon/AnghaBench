
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int sin ;
typedef int buf ;


 int AF_INET ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* GETSTR ;
 int O_CREAT ;
 int O_RDWR ;
 int PF_INET ;
 int SOCK_STREAM ;
 int atoi (char*) ;
 int connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int fprintf (int ,char*,char*) ;
 int ftruncate (int,int ) ;
 char* getprogname () ;
 int htons (int ) ;
 int inet_addr (char*) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int open (char*,int,int) ;
 int read (int,char*,int) ;
 int setprogname (char*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strlen (char*) ;
 int write (int,char*,int) ;

int
main(int argc, char *argv[])
{
 char buf[8192];
 struct sockaddr_in sin;
 ssize_t n;
 int s, fd;

 setprogname(argv[0]);
 if (argc != 4) {
  fprintf(stderr, "usage: %s address port savefile\n",
      getprogname());
  return EXIT_FAILURE;
 }

 s = socket(PF_INET, SOCK_STREAM, 0);
 if (s == -1)
  err(EXIT_FAILURE, "socket");

 memset(&sin, 0, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_port = htons(atoi(argv[2]));
 sin.sin_addr.s_addr = inet_addr(argv[1]);

 fd = open(argv[3], O_CREAT | O_RDWR, 0644);
 if (fd == -1)
  err(EXIT_FAILURE, "open");
 if (ftruncate(fd, 0) == -1)
  err(EXIT_FAILURE, "ftruncate savefile");

 if (connect(s, (struct sockaddr *)&sin, sizeof(sin)) == -1)
  err(EXIT_FAILURE, "connect");

 if (write(s, GETSTR, strlen(GETSTR)) != strlen(GETSTR))
  err(EXIT_FAILURE, "socket write");

 for (;;) {
  n = read(s, buf, sizeof(buf));
  if (n == 0)
   break;
  if (n == -1)
   err(EXIT_FAILURE, "socket read");

  if (write(fd, buf, n) != n)
   err(EXIT_FAILURE, "write file");
 }

 return EXIT_SUCCESS;
}
