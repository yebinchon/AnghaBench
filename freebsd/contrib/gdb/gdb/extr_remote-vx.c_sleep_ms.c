
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int perror_with_name (char*) ;
 int select (int ,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static void
sleep_ms (long ms)
{
  struct timeval select_timeout;
  int status;

  select_timeout.tv_sec = 0;
  select_timeout.tv_usec = ms * 1000;

  status = select (0, (fd_set *) 0, (fd_set *) 0, (fd_set *) 0,
     &select_timeout);

  if (status < 0 && errno != EINTR)
    perror_with_name ("select");
}
