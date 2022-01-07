
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_state_madvise ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int O_RDONLY ;
 int SYS_close ;
 int SYS_open ;
 int abort () ;
 int close (int) ;
 int have_madvise_huge ;
 int init_system_thp_mode ;
 scalar_t__ malloc_read_fd (int,char**,int) ;
 int malloc_write (char*) ;
 scalar_t__ metadata_thp_enabled () ;
 int open (char*,int ) ;
 scalar_t__ opt_abort ;
 int opt_thp ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 scalar_t__ syscall (int ,...) ;
 int thp_mode_always ;
 int thp_mode_default ;
 int thp_mode_never ;
 int thp_mode_not_supported ;

__attribute__((used)) static void
init_thp_state(void) {
 if (!have_madvise_huge) {
  if (metadata_thp_enabled() && opt_abort) {
   malloc_write("<jemalloc>: no MADV_HUGEPAGE support\n");
   abort();
  }
  goto label_error;
 }

 static const char sys_state_madvise[] = "always [madvise] never\n";
 static const char sys_state_always[] = "[always] madvise never\n";
 static const char sys_state_never[] = "always madvise [never]\n";
 char buf[sizeof(sys_state_madvise)];





 int fd = open("/sys/kernel/mm/transparent_hugepage/enabled", O_RDONLY);

 if (fd == -1) {
  goto label_error;
 }

 ssize_t nread = malloc_read_fd(fd, &buf, sizeof(buf));



 close(fd);


 if (strncmp(buf, sys_state_madvise, (size_t)nread) == 0) {
  init_system_thp_mode = thp_mode_default;
 } else if (strncmp(buf, sys_state_always, (size_t)nread) == 0) {
  init_system_thp_mode = thp_mode_always;
 } else if (strncmp(buf, sys_state_never, (size_t)nread) == 0) {
  init_system_thp_mode = thp_mode_never;
 } else {
  goto label_error;
 }
 return;
label_error:
 opt_thp = init_system_thp_mode = thp_mode_not_supported;
}
