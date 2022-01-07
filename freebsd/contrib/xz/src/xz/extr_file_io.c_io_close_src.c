
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int src_fd; int src_st; int src_name; } ;
typedef TYPE_1__ file_pair ;


 int F_SETFL ;
 int STDIN_FILENO ;
 int _ (char*) ;
 int assert (int) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int io_unlink (int ,int *) ;
 int message_error (int ,int ) ;
 int opt_keep_original ;
 int restore_stdin_flags ;
 int stdin_flags ;
 int strerror (int ) ;

__attribute__((used)) static void
io_close_src(file_pair *pair, bool success)
{

 if (restore_stdin_flags) {
  assert(pair->src_fd == STDIN_FILENO);

  restore_stdin_flags = 0;

  if (fcntl(STDIN_FILENO, F_SETFL, stdin_flags) == -1)
   message_error(_("Error restoring the status flags "
     "to standard input: %s"),
     strerror(errno));
 }


 if (pair->src_fd != STDIN_FILENO && pair->src_fd != -1) {
  (void)close(pair->src_fd);

  if (success && !opt_keep_original)
   io_unlink(pair->src_name, &pair->src_st);
 }

 return;
}
