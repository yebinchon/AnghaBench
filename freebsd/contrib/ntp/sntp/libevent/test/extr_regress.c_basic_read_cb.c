
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basic_cb_args {int eb; int ev; int callcount; } ;
typedef int evutil_socket_t ;
typedef int buf ;


 int event_base_loopexit (int ,int *) ;
 int event_del (int ) ;
 int read (int ,char*,int) ;
 int tt_fail_msg (char*) ;
 int tt_fail_perror (char*) ;

__attribute__((used)) static void
basic_read_cb(evutil_socket_t fd, short event, void *data)
{
 char buf[256];
 int len;
 struct basic_cb_args *arg = data;

 len = read(fd, buf, sizeof(buf));

 if (len < 0) {
  tt_fail_perror("read (callback)");
 } else {
  switch (arg->callcount++) {
  case 0:
   if (len > 0)
    return;

   tt_fail_msg("EOF before data read");
   break;

  case 1:
   if (len > 0)
    tt_fail_msg("not all data read on first cycle");
   break;

  default:
   tt_fail_msg("too many cycles");
  }
 }

 event_del(arg->ev);
 event_base_loopexit(arg->eb, ((void*)0));
}
