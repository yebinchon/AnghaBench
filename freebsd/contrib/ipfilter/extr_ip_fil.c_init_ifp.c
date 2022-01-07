
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {char* if_xname; char* if_name; int if_unit; void* if_output; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 struct ifnet** ifneta ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int sprintf (char*,char*,char*,...) ;
 scalar_t__ write_output ;

void
init_ifp()
{
 struct ifnet *ifp, **ifpp;
 char fname[32];
 int fd;
 for (ifpp = ifneta; ifpp && (ifp = *ifpp); ifpp++) {
  ifp->if_output = (void *)write_output;
  sprintf(fname, "/tmp/%s%d", ifp->if_name, ifp->if_unit);
  fd = open(fname, O_WRONLY|O_CREAT|O_EXCL|O_TRUNC, 0600);
  if (fd == -1)
   perror("open");
  else
   close(fd);
 }

}
