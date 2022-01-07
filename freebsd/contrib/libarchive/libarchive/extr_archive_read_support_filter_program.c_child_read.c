
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_filter {int child_stdin; int child_stdout; } ;
struct archive_read_filter {int upstream; struct program_filter* data; } ;
typedef int ssize_t ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 int F_SETFL ;
 scalar_t__ PeekNamedPipe (int ,int *,int ,int *,scalar_t__*,int *) ;
 size_t SSIZE_MAX ;
 int Sleep (int) ;
 int __archive_check_child (int,int ) ;
 char* __archive_read_filter_ahead (int ,int,int*) ;
 int __archive_read_filter_consume (int ,int) ;
 int _get_osfhandle (int ) ;
 int child_stop (struct archive_read_filter*,struct program_filter*) ;
 int close (int) ;
 scalar_t__ errno ;
 int fcntl (int ,int ,int ) ;
 int read (int ,char*,int) ;
 int write (int,char const*,int) ;

__attribute__((used)) static ssize_t
child_read(struct archive_read_filter *self, char *buf, size_t buf_len)
{
 struct program_filter *state = self->data;
 ssize_t ret, requested, avail;
 const char *p;




 requested = buf_len > SSIZE_MAX ? SSIZE_MAX : buf_len;

 for (;;) {
  do {
   ret = read(state->child_stdout, buf, requested);
  } while (ret == -1 && errno == EINTR);

  if (ret > 0)
   return (ret);
  if (ret == 0 || (ret == -1 && errno == EPIPE))


   return (child_stop(self, state));
  if (ret == -1 && errno != EAGAIN)
   return (-1);

  if (state->child_stdin == -1) {

   __archive_check_child(state->child_stdin,
       state->child_stdout);
   continue;
  }


  p = __archive_read_filter_ahead(self->upstream, 1, &avail);
  if (p == ((void*)0)) {
   close(state->child_stdin);
   state->child_stdin = -1;
   fcntl(state->child_stdout, F_SETFL, 0);
   if (avail < 0)
    return (avail);
   continue;
  }

  do {
   ret = write(state->child_stdin, p, avail);
  } while (ret == -1 && errno == EINTR);

  if (ret > 0) {

   __archive_read_filter_consume(self->upstream, ret);
  } else if (ret == -1 && errno == EAGAIN) {

   __archive_check_child(state->child_stdin,
       state->child_stdout);
  } else {

   close(state->child_stdin);
   state->child_stdin = -1;
   fcntl(state->child_stdout, F_SETFL, 0);



   if (ret == -1 && errno != EPIPE)
    return (-1);
  }
 }
}
