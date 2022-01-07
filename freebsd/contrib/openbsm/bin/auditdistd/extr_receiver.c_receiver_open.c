
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adh_trail_fd; int adh_trail_name; int adh_directory; int adh_trail_dirfd; } ;


 int ADIST_ERROR_CREATE ;
 int ADIST_ERROR_INVALID_NAME ;
 int ADIST_ERROR_OPEN ;
 int ADIST_ERROR_OPEN_OLD ;
 int ADIST_ERROR_RENAME ;
 int ADIST_ERROR_WRONG_ORDER ;
 int LOG_ERR ;
 int O_APPEND ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOFOLLOW ;
 int O_WRONLY ;
 int PJDLOG_ABORT (char*) ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;




 TYPE_1__* adhost ;
 int errno ;
 int openat (int ,char const*,int,...) ;
 int pjdlog_debug (int,char*,int ,char const*,...) ;
 int pjdlog_errno (int ,char*,int ,char const*,...) ;
 int pjdlog_error (char*,char const*,...) ;
 int renameat (int ,int ,int ,char const*) ;
 int strlcpy (int ,char const*,int) ;
 int trail_is_not_terminated (int ) ;
 int trail_name_compare (char const*,int ) ;
 int trail_validate_name (char const*,int *) ;

__attribute__((used)) static int
receiver_open(const char *filename)
{
 int fd;





 if (adhost->adh_trail_fd != -1) {
  pjdlog_error("Sender requested opening file \"%s\" without first closing \"%s\".",
      filename, adhost->adh_trail_name);
  return (ADIST_ERROR_WRONG_ORDER);
 }

 if (!trail_validate_name(filename, ((void*)0))) {
  pjdlog_error("Sender wants to open file \"%s\", which has invalid name.",
      filename);
  return (ADIST_ERROR_INVALID_NAME);
 }

 switch (trail_name_compare(filename, adhost->adh_trail_name)) {
 case 128:
  if (!trail_is_not_terminated(adhost->adh_trail_name)) {
   pjdlog_error("Terminated trail \"%s/%s\" was unterminated on the sender as \"%s/%s\"?",
       adhost->adh_directory, adhost->adh_trail_name,
       adhost->adh_directory, filename);
   return (ADIST_ERROR_INVALID_NAME);
  }
  if (renameat(adhost->adh_trail_dirfd, adhost->adh_trail_name,
      adhost->adh_trail_dirfd, filename) == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable to rename file \"%s/%s\" to \"%s/%s\"",
       adhost->adh_directory, adhost->adh_trail_name,
       adhost->adh_directory, filename);
   PJDLOG_ASSERT(errno > 0);
   return (ADIST_ERROR_RENAME);
  }
  pjdlog_debug(1, "Renamed file \"%s/%s\" to \"%s/%s\".",
      adhost->adh_directory, adhost->adh_trail_name,
      adhost->adh_directory, filename);

 case 131:

  fd = openat(adhost->adh_trail_dirfd, filename,
      O_WRONLY | O_APPEND | O_NOFOLLOW);
  if (fd == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable to open file \"%s/%s\" for append",
       adhost->adh_directory, filename);
   PJDLOG_ASSERT(errno > 0);
   return (ADIST_ERROR_OPEN);
  }
  pjdlog_debug(1, "Opened file \"%s/%s\".",
      adhost->adh_directory, filename);
  break;
 case 130:

  fd = openat(adhost->adh_trail_dirfd, filename,
      O_WRONLY | O_CREAT | O_EXCL | O_NOFOLLOW, 0600);
  if (fd == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable to create file \"%s/%s\"",
       adhost->adh_directory, filename);
   PJDLOG_ASSERT(errno > 0);
   return (ADIST_ERROR_CREATE);
  }
  pjdlog_debug(1, "Created file \"%s/%s\".",
      adhost->adh_directory, filename);
  break;
 case 129:

  pjdlog_error("Sender wants to open an old file \"%s\".", filename);
  return (ADIST_ERROR_OPEN_OLD);
 default:
  PJDLOG_ABORT("Unknown return value from trail_name_compare().");
 }
 PJDLOG_VERIFY(strlcpy(adhost->adh_trail_name, filename,
     sizeof(adhost->adh_trail_name)) < sizeof(adhost->adh_trail_name));
 adhost->adh_trail_fd = fd;
 return (0);
}
