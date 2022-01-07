
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int name ;


 int ATF_REQUIRE (int) ;
 int EXIT_FAILURE ;
 int NFDS ;
 int O_RDONLY ;
 int _PATH_DEVNULL ;
 int err (int ,char*) ;
 int errx (int ,char*) ;
 int nopenfds () ;
 int nvlist_add_descriptor (int *,char*,int) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_send (int,int *) ;
 int open (int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
send_many_fds_child(int sock)
{
 char name[16];
 nvlist_t *nvl;
 int anfds, bnfds, fd, i, j;

 fd = open(_PATH_DEVNULL, O_RDONLY);
 ATF_REQUIRE(fd >= 0);

 for (i = 1; i < NFDS; i++) {
  nvl = nvlist_create(0);
  bnfds = nopenfds();
  if (bnfds == -1)
   err(EXIT_FAILURE, "sysctl");

  for (j = 0; j < i; j++) {
   snprintf(name, sizeof(name), "fd%d", j);
   nvlist_add_descriptor(nvl, name, fd);
  }
  nvlist_send(sock, nvl);
  nvlist_destroy(nvl);

  anfds = nopenfds();
  if (anfds == -1)
   err(EXIT_FAILURE, "sysctl");
  if (anfds != bnfds)
   errx(EXIT_FAILURE, "fd count mismatch");
 }
}
