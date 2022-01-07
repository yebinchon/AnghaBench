
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;
typedef int HANDLE ;


 int CloseHandle (int) ;
 int CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int EEXIST ;
 int EV_PERSIST ;
 int EV_READ ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SIGINT ;
 int S_IFMT ;
 int S_IFREG ;
 int close (int) ;
 int errno ;
 int event_add (struct event*,int *) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;
 struct event* event_new (struct event_base*,int,int,int ,int ) ;
 int event_self_cbarg () ;
 struct event* evsignal_new (struct event_base*,int ,int ,struct event_base*) ;
 int exit (int) ;
 int fifo_read ;
 int fprintf (int ,char*,char const*) ;
 int libevent_global_shutdown () ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int mkfifo (char const*,int) ;
 int open (char const*,int,int ) ;
 int perror (char*) ;
 int signal_cb ;
 int stderr ;
 int unlink (char const*) ;

int
main(int argc, char **argv)
{
 struct event *evfifo;
 struct event_base* base;
 struct event *signal_int;
 struct stat st;
 const char *fifo = "event.fifo";
 int socket;

 if (lstat(fifo, &st) == 0) {
  if ((st.st_mode & S_IFMT) == S_IFREG) {
   errno = EEXIST;
   perror("lstat");
   exit(1);
  }
 }

 unlink(fifo);
 if (mkfifo(fifo, 0600) == -1) {
  perror("mkfifo");
  exit(1);
 }

 socket = open(fifo, O_RDONLY | O_NONBLOCK, 0);

 if (socket == -1) {
  perror("open");
  exit(1);
 }

 fprintf(stderr, "Write data to %s\n", fifo);


 base = event_base_new();







 signal_int = evsignal_new(base, SIGINT, signal_cb, base);
 event_add(signal_int, ((void*)0));

 evfifo = event_new(base, socket, EV_READ|EV_PERSIST, fifo_read,
                           event_self_cbarg());



 event_add(evfifo, ((void*)0));

 event_base_dispatch(base);
 event_base_free(base);



 close(socket);
 unlink(fifo);

 libevent_global_shutdown();
 return (0);
}
