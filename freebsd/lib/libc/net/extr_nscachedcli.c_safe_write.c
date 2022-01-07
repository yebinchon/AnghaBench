
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct kevent {scalar_t__ filter; size_t data; int flags; } ;
struct cached_connection_ {int sockfd; int write_queue; } ;
typedef int ssize_t ;


 scalar_t__ EVFILT_WRITE ;
 int EV_EOF ;
 int MSG_NOSIGNAL ;
 int NS_DEFAULT_CACHED_IO_TIMEOUT ;
 int _kevent (int ,int *,int ,struct kevent*,int,struct timespec*) ;
 int _sendto (int ,void const*,size_t,int ,int *,int ) ;

__attribute__((used)) static int
safe_write(struct cached_connection_ *connection, const void *data,
    size_t data_size)
{
 struct kevent eventlist;
 int nevents;
 size_t result;
 ssize_t s_result;
 struct timespec timeout;

 if (data_size == 0)
  return (0);

 timeout.tv_sec = NS_DEFAULT_CACHED_IO_TIMEOUT;
 timeout.tv_nsec = 0;
 result = 0;
 do {
  nevents = _kevent(connection->write_queue, ((void*)0), 0, &eventlist,
      1, &timeout);
  if ((nevents == 1) && (eventlist.filter == EVFILT_WRITE)) {
   s_result = _sendto(connection->sockfd, data + result,
       eventlist.data < data_size - result ?
       eventlist.data : data_size - result, MSG_NOSIGNAL,
       ((void*)0), 0);
   if (s_result == -1)
    return (-1);
   else
    result += s_result;

   if (eventlist.flags & EV_EOF)
    return (result < data_size ? -1 : 0);
  } else
   return (-1);
 } while (result < data_size);

 return (0);
}
