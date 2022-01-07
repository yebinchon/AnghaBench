
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_ERROR ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int _ (char*) ;
 int _STAT_DIRSIZE ;
 int _STAT_EXEC_EXT ;
 int _STAT_EXEC_MAGIC ;
 int _djstat_flags ;
 int errno ;
 int fcntl (int ,int ,...) ;
 scalar_t__ geteuid () ;
 int message_fatal (int ,int ) ;
 scalar_t__ pipe (int *) ;
 int strerror (int ) ;
 int tuklib_open_stdxxx (int ) ;
 int * user_abort_pipe ;
 int warn_fchown ;

extern void
io_init(void)
{




 tuklib_open_stdxxx(E_ERROR);




 warn_fchown = geteuid() == 0;


 if (pipe(user_abort_pipe))
  message_fatal(_("Error creating a pipe: %s"),
    strerror(errno));


 for (unsigned i = 0; i < 2; ++i) {
  int flags = fcntl(user_abort_pipe[i], F_GETFL);
  if (flags == -1 || fcntl(user_abort_pipe[i], F_SETFL,
    flags | O_NONBLOCK) == -1)
   message_fatal(_("Error creating a pipe: %s"),
     strerror(errno));
 }
 return;
}
