
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_dev; scalar_t__ st_ino; } ;
typedef int mode_t ;
struct TYPE_7__ {int st_size; int st_mode; scalar_t__* st_ino; scalar_t__ st_dev; } ;
struct TYPE_5__ {int st_dev; scalar_t__ st_ino; } ;
struct TYPE_6__ {scalar_t__ src_fd; char* dest_name; int dest_fd; int dest_try_sparse; TYPE_4__ dest_st; TYPE_1__ src_st; int src_name; } ;
typedef TYPE_2__ file_pair ;


 scalar_t__ ENOENT ;
 int F_GETFL ;
 int F_SETFL ;
 scalar_t__ MODE_DECOMPRESS ;
 int O_APPEND ;
 int O_BINARY ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 int SEEK_CUR ;
 int SEEK_END ;
 scalar_t__ STDIN_FILENO ;
 int STDOUT_FILENO ;
 int S_IRUSR ;
 int S_ISREG (int ) ;
 int S_IWUSR ;
 char* _ (char*) ;
 scalar_t__ errno ;
 int fcntl (int,int ,...) ;
 int free (char*) ;
 scalar_t__ fstat (int,TYPE_4__*) ;
 int lseek (int,int ,int ) ;
 int message_error (char*,char*,...) ;
 int open (char*,int,int const) ;
 scalar_t__ opt_force ;
 scalar_t__ opt_mode ;
 scalar_t__ opt_stdout ;
 int restore_stdout_flags ;
 int setmode (int,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdout_flags ;
 int strerror (scalar_t__) ;
 char* suffix_get_dest_name (int ) ;
 scalar_t__ try_sparse ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static bool
io_open_dest_real(file_pair *pair)
{
 if (opt_stdout || pair->src_fd == STDIN_FILENO) {

  pair->dest_name = (char *)"(stdout)";
  pair->dest_fd = STDOUT_FILENO;
  stdout_flags = fcntl(STDOUT_FILENO, F_GETFL);
  if (stdout_flags == -1) {
   message_error(_("Error getting the file status flags "
     "from standard output: %s"),
     strerror(errno));
   return 1;
  }

  if ((stdout_flags & O_NONBLOCK) == 0
    && fcntl(STDOUT_FILENO, F_SETFL,
     stdout_flags | O_NONBLOCK) != -1)
    restore_stdout_flags = 1;

 } else {
  pair->dest_name = suffix_get_dest_name(pair->src_name);
  if (pair->dest_name == ((void*)0))
   return 1;
  if (opt_force && unlink(pair->dest_name) && errno != ENOENT) {
   message_error(_("%s: Cannot remove: %s"),
     pair->dest_name, strerror(errno));
   free(pair->dest_name);
   return 1;
  }


  int flags = O_WRONLY | O_BINARY | O_NOCTTY
    | O_CREAT | O_EXCL;

  flags |= O_NONBLOCK;

  const mode_t mode = S_IRUSR | S_IWUSR;
  pair->dest_fd = open(pair->dest_name, flags, mode);

  if (pair->dest_fd == -1) {
   message_error("%s: %s", pair->dest_name,
     strerror(errno));
   free(pair->dest_name);
   return 1;
  }
 }




 if (fstat(pair->dest_fd, &pair->dest_st)) {






  pair->dest_st.st_dev = 0;
  pair->dest_st.st_ino = 0;

 } else if (try_sparse && opt_mode == MODE_DECOMPRESS) {
  if (pair->dest_fd == STDOUT_FILENO) {
   if (!S_ISREG(pair->dest_st.st_mode))
    return 0;

   if (stdout_flags & O_APPEND) {
    if (lseek(STDOUT_FILENO, 0, SEEK_END) == -1)
     return 0;




    int flags = stdout_flags & ~O_APPEND;
    if (restore_stdout_flags)
     flags |= O_NONBLOCK;





    if (fcntl(STDOUT_FILENO, F_SETFL, flags) == -1)
     return 0;





    restore_stdout_flags = 1;

   } else if (lseek(STDOUT_FILENO, 0, SEEK_CUR)
     != pair->dest_st.st_size) {



    return 0;
   }
  }

  pair->dest_try_sparse = 1;
 }


 return 0;
}
