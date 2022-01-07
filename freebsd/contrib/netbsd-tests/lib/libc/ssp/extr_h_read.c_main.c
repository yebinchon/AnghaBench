
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int _PATH_DEVZERO ;
 int abort () ;
 size_t atoi (char*) ;
 int open (int ,int ) ;
 int printf (char*,char*) ;
 int read (int,char*,size_t) ;

int
main(int argc, char *argv[])
{
 char b[MAXPATHLEN];
 int fd, n;
 size_t len = atoi(argv[1]);

 if ((fd = open(_PATH_DEVZERO, O_RDONLY)) == -1)
  abort();
 if ((n = read(fd, b, len)) == -1)
  abort();
 (void)printf("%s\n", b);
 return (0);
}
