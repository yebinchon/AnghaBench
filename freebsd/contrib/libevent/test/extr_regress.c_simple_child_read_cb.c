
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef int buf ;


 int called ;
 int * child_pair ;
 int event_add (void*,int *) ;
 int exit (int) ;
 int read (int ,char*,int) ;
 int test_ok ;
 int tt_fail_perror (char*) ;
 scalar_t__ write (int ,char*,int) ;

__attribute__((used)) static void
simple_child_read_cb(evutil_socket_t fd, short event, void *arg)
{
 char buf[256];
 int len;

 len = read(fd, buf, sizeof(buf));
 if (write(child_pair[0], "", 1) < 0)
  tt_fail_perror("write");

 if (len) {
  if (!called) {
   if (event_add(arg, ((void*)0)) == -1)
    exit(1);
  }
 } else if (called == 1)
  test_ok = 1;

 called++;
}
