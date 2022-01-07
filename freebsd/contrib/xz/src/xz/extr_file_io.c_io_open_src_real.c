
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef scalar_t__ io_wait_ret ;
struct TYPE_7__ {int st_mode; int st_nlink; } ;
struct TYPE_6__ {scalar_t__ src_name; int src_fd; TYPE_2__ src_st; } ;
typedef TYPE_1__ file_pair ;


 int const EFTYPE ;
 int const EINTR ;
 int const ELOOP ;
 int const EMLINK ;
 int const ENOTSUP ;
 int F_GETFL ;
 int F_SETFL ;
 scalar_t__ const IO_WAIT_MORE ;
 scalar_t__ MODE_LIST ;
 int O_BINARY ;
 int O_NOCTTY ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int POSIX_FADV_RANDOM ;
 int POSIX_FADV_SEQUENTIAL ;
 int STDIN_FILENO ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 scalar_t__ S_ISLNK (int ) ;
 int S_ISREG (int) ;
 int S_ISUID ;
 int S_ISVTX ;
 int _ (char*) ;
 int assert (int) ;
 int close (int) ;
 int const errno ;
 int fcntl (int,int ,...) ;
 scalar_t__ fstat (int,TYPE_2__*) ;
 scalar_t__ io_wait (TYPE_1__*,int,int) ;
 scalar_t__ lstat (scalar_t__,struct stat*) ;
 int message_error (char*,scalar_t__,...) ;
 int message_warning (int ,scalar_t__) ;
 int open (scalar_t__,int) ;
 scalar_t__ opt_force ;
 scalar_t__ opt_mode ;
 scalar_t__ opt_stdout ;
 int posix_fadvise (int,int ,int ,int ) ;
 int restore_stdin_flags ;
 int setmode (int,int) ;
 int signals_block () ;
 int signals_unblock () ;
 scalar_t__ stat (scalar_t__,TYPE_2__*) ;
 scalar_t__ stdin_filename ;
 int stdin_flags ;
 int strerror (int const) ;

__attribute__((used)) static bool
io_open_src_real(file_pair *pair)
{

 if (pair->src_name == stdin_filename) {
  pair->src_fd = STDIN_FILENO;
  stdin_flags = fcntl(STDIN_FILENO, F_GETFL);
  if (stdin_flags == -1) {
   message_error(_("Error getting the file status flags "
     "from standard input: %s"),
     strerror(errno));
   return 1;
  }

  if ((stdin_flags & O_NONBLOCK) == 0
    && fcntl(STDIN_FILENO, F_SETFL,
     stdin_flags | O_NONBLOCK) != -1)
   restore_stdin_flags = 1;
  return 0;
 }



 const bool follow_symlinks = opt_stdout || opt_force;




 const bool reg_files_only = !opt_stdout;


 int flags = O_RDONLY | O_BINARY | O_NOCTTY;







 flags |= O_NONBLOCK;
 if (!follow_symlinks) {
  struct stat st;
  if (lstat(pair->src_name, &st)) {
   message_error("%s: %s", pair->src_name,
     strerror(errno));
   return 1;

  } else if (S_ISLNK(st.st_mode)) {
   message_warning(_("%s: Is a symbolic link, "
     "skipping"), pair->src_name);
   return 1;
  }
 }







 pair->src_fd = open(pair->src_name, flags);

 if (pair->src_fd == -1) {

  assert(errno != EINTR);
   message_error("%s: %s", pair->src_name,
     strerror(errno));

  return 1;
 }
 if (fstat(pair->src_fd, &pair->src_st))
  goto error_msg;


 if (S_ISDIR(pair->src_st.st_mode)) {
  message_warning(_("%s: Is a directory, skipping"),
    pair->src_name);
  goto error;
 }

 if (reg_files_only && !S_ISREG(pair->src_st.st_mode)) {
  message_warning(_("%s: Not a regular file, skipping"),
    pair->src_name);
  goto error;
 }


 if (reg_files_only && !opt_force) {
  if (pair->src_st.st_mode & (S_ISUID | S_ISGID)) {
   message_warning(_("%s: File has setuid or "
     "setgid bit set, skipping"),
     pair->src_name);
   goto error;
  }

  if (pair->src_st.st_mode & S_ISVTX) {
   message_warning(_("%s: File has sticky bit "
     "set, skipping"),
     pair->src_name);
   goto error;
  }

  if (pair->src_st.st_nlink > 1) {
   message_warning(_("%s: Input file has more "
     "than one hard link, "
     "skipping"), pair->src_name);
   goto error;
  }
 }




 if (!S_ISREG(pair->src_st.st_mode)) {
  signals_unblock();
  const io_wait_ret ret = io_wait(pair, -1, 1);
  signals_block();

  if (ret != IO_WAIT_MORE)
   goto error;
 }
 return 0;

error_msg:
 message_error("%s: %s", pair->src_name, strerror(errno));
error:
 (void)close(pair->src_fd);
 return 1;
}
