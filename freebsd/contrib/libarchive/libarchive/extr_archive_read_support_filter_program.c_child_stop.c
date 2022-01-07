
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct program_filter {int child_stdin; int child_stdout; scalar_t__ child; int waitpid_return; int exit_status; } ;
struct archive_read_filter {TYPE_1__* archive; } ;
struct TYPE_2__ {int archive; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ EINTR ;
 scalar_t__ SIGPIPE ;
 scalar_t__ WEXITSTATUS (int ) ;
 scalar_t__ WIFEXITED (int ) ;
 scalar_t__ WIFSIGNALED (int ) ;
 scalar_t__ WTERMSIG (int ) ;
 int archive_set_error (int *,int ,char*,...) ;
 int close (int) ;
 scalar_t__ errno ;
 int waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static int
child_stop(struct archive_read_filter *self, struct program_filter *state)
{

 if (state->child_stdin != -1) {
  close(state->child_stdin);
  state->child_stdin = -1;
 }
 if (state->child_stdout != -1) {
  close(state->child_stdout);
  state->child_stdout = -1;
 }

 if (state->child != 0) {

  do {
   state->waitpid_return
       = waitpid(state->child, &state->exit_status, 0);
  } while (state->waitpid_return == -1 && errno == EINTR);



  state->child = 0;
 }

 if (state->waitpid_return < 0) {

  archive_set_error(&self->archive->archive, ARCHIVE_ERRNO_MISC,
      "Child process exited badly");
  return (ARCHIVE_WARN);
 }


 if (WIFSIGNALED(state->exit_status)) {
  archive_set_error(&self->archive->archive, ARCHIVE_ERRNO_MISC,
      "Child process exited with signal %d",
      WTERMSIG(state->exit_status));
  return (ARCHIVE_WARN);
 }


 if (WIFEXITED(state->exit_status)) {
  if (WEXITSTATUS(state->exit_status) == 0)
   return (ARCHIVE_OK);

  archive_set_error(&self->archive->archive,
      ARCHIVE_ERRNO_MISC,
      "Child process exited with status %d",
      WEXITSTATUS(state->exit_status));
  return (ARCHIVE_WARN);
 }

 return (ARCHIVE_WARN);
}
