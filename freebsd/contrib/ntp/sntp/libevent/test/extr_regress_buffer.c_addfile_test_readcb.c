
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int evutil_socket_t ;


 int EVUTIL_ERR_RW_RETRIABLE (int) ;
 int TT_BLATHER (char*) ;
 scalar_t__ addfile_test_done_writing ;
 int addfile_test_event_base ;
 scalar_t__ addfile_test_total_read ;
 scalar_t__ addfile_test_total_written ;
 int evbuffer_read (struct evbuffer*,int ,int) ;
 int event_base_loopexit (int ,int *) ;
 int evutil_socket_geterror (int ) ;
 int tt_fail_perror (char*) ;

__attribute__((used)) static void
addfile_test_readcb(evutil_socket_t fd, short what, void *arg)
{
 struct evbuffer *b = arg;
 int e, r = 0;
 do {
  r = evbuffer_read(b, fd, 1024);
  if (r > 0) {
   addfile_test_total_read += r;
   TT_BLATHER(("Read %d/%d bytes", r, addfile_test_total_read));
  }
 } while (r > 0);
 if (r < 0) {
  e = evutil_socket_geterror(fd);
  if (! EVUTIL_ERR_RW_RETRIABLE(e)) {
   tt_fail_perror("read");
   event_base_loopexit(addfile_test_event_base,((void*)0));
  }
 }
 if (addfile_test_done_writing &&
     addfile_test_total_read >= addfile_test_total_written) {
  event_base_loopexit(addfile_test_event_base,((void*)0));
 }
}
