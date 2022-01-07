
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dest_fd; int dest_name; int dest_st; } ;
typedef TYPE_1__ file_pair ;


 int F_SETFL ;
 int STDOUT_FILENO ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int free (int ) ;
 int io_unlink (int ,int *) ;
 int message_error (int ,int ,...) ;
 int restore_stdout_flags ;
 int stdout_flags ;
 int strerror (int ) ;

__attribute__((used)) static bool
io_close_dest(file_pair *pair, bool success)
{


 if (restore_stdout_flags) {
  assert(pair->dest_fd == STDOUT_FILENO);

  restore_stdout_flags = 0;

  if (fcntl(STDOUT_FILENO, F_SETFL, stdout_flags) == -1) {
   message_error(_("Error restoring the O_APPEND flag "
     "to standard output: %s"),
     strerror(errno));
   return 1;
  }
 }


 if (pair->dest_fd == -1 || pair->dest_fd == STDOUT_FILENO)
  return 0;

 if (close(pair->dest_fd)) {
  message_error(_("%s: Closing the file failed: %s"),
    pair->dest_name, strerror(errno));



  io_unlink(pair->dest_name, &pair->dest_st);
  free(pair->dest_name);
  return 1;
 }



 if (!success)
  io_unlink(pair->dest_name, &pair->dest_st);

 free(pair->dest_name);

 return 0;
}
