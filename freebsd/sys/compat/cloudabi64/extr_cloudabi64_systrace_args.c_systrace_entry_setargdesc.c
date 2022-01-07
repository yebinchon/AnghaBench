
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void
systrace_entry_setargdesc(int sysnum, int ndx, char *desc, size_t descsz)
{
 const char *p = ((void*)0);
 switch (sysnum) {

 case 0:
  switch(ndx) {
  case 0:
   p = "cloudabi_clockid_t";
   break;
  default:
   break;
  };
  break;

 case 1:
  switch(ndx) {
  case 0:
   p = "cloudabi_clockid_t";
   break;
  case 1:
   p = "cloudabi_timestamp_t";
   break;
  default:
   break;
  };
  break;

 case 2:
  switch(ndx) {
  case 0:
   p = "userland cloudabi_condvar_t *";
   break;
  case 1:
   p = "cloudabi_scope_t";
   break;
  case 2:
   p = "cloudabi_nthreads_t";
   break;
  default:
   break;
  };
  break;

 case 3:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  default:
   break;
  };
  break;

 case 4:
  switch(ndx) {
  case 0:
   p = "cloudabi_filetype_t";
   break;
  default:
   break;
  };
  break;

 case 5:
  switch(ndx) {
  case 0:
   p = "cloudabi_filetype_t";
   break;
  default:
   break;
  };
  break;

 case 6:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  default:
   break;
  };
  break;

 case 7:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  default:
   break;
  };
  break;

 case 8:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi64_iovec_t *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_filesize_t";
   break;
  default:
   break;
  };
  break;

 case 9:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi64_ciovec_t *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_filesize_t";
   break;
  default:
   break;
  };
  break;

 case 10:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi64_iovec_t *";
   break;
  case 2:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 11:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "cloudabi_fd_t";
   break;
  default:
   break;
  };
  break;

 case 12:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "cloudabi_filedelta_t";
   break;
  case 2:
   p = "cloudabi_whence_t";
   break;
  default:
   break;
  };
  break;

 case 13:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland cloudabi_fdstat_t *";
   break;
  default:
   break;
  };
  break;

 case 14:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi_fdstat_t *";
   break;
  case 2:
   p = "cloudabi_fdsflags_t";
   break;
  default:
   break;
  };
  break;

 case 15:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  default:
   break;
  };
  break;

 case 16:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi64_ciovec_t *";
   break;
  case 2:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 17:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "cloudabi_filesize_t";
   break;
  case 2:
   p = "cloudabi_filesize_t";
   break;
  case 3:
   p = "cloudabi_advice_t";
   break;
  default:
   break;
  };
  break;

 case 18:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "cloudabi_filesize_t";
   break;
  case 2:
   p = "cloudabi_filesize_t";
   break;
  default:
   break;
  };
  break;

 case 19:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_filetype_t";
   break;
  default:
   break;
  };
  break;

 case 20:
  switch(ndx) {
  case 0:
   p = "cloudabi_lookup_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_fd_t";
   break;
  case 4:
   p = "userland const char *";
   break;
  case 5:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 21:
  switch(ndx) {
  case 0:
   p = "cloudabi_lookup_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_oflags_t";
   break;
  case 4:
   p = "userland const cloudabi_fdstat_t *";
   break;
  default:
   break;
  };
  break;

 case 22:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland void *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_dircookie_t";
   break;
  default:
   break;
  };
  break;

 case 23:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "userland char *";
   break;
  case 4:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 24:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_fd_t";
   break;
  case 4:
   p = "userland const char *";
   break;
  case 5:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 25:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland cloudabi_filestat_t *";
   break;
  default:
   break;
  };
  break;

 case 26:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi_filestat_t *";
   break;
  case 2:
   p = "cloudabi_fsflags_t";
   break;
  default:
   break;
  };
  break;

 case 27:
  switch(ndx) {
  case 0:
   p = "cloudabi_lookup_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "userland cloudabi_filestat_t *";
   break;
  default:
   break;
  };
  break;

 case 28:
  switch(ndx) {
  case 0:
   p = "cloudabi_lookup_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "userland const cloudabi_filestat_t *";
   break;
  case 4:
   p = "cloudabi_fsflags_t";
   break;
  default:
   break;
  };
  break;

 case 29:
  switch(ndx) {
  case 0:
   p = "userland const char *";
   break;
  case 1:
   p = "size_t";
   break;
  case 2:
   p = "cloudabi_fd_t";
   break;
  case 3:
   p = "userland const char *";
   break;
  case 4:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 30:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const char *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "cloudabi_ulflags_t";
   break;
  default:
   break;
  };
  break;

 case 31:
  switch(ndx) {
  case 0:
   p = "userland cloudabi_lock_t *";
   break;
  case 1:
   p = "cloudabi_scope_t";
   break;
  default:
   break;
  };
  break;

 case 32:
  switch(ndx) {
  case 0:
   p = "userland void *";
   break;
  case 1:
   p = "size_t";
   break;
  case 2:
   p = "cloudabi_advice_t";
   break;
  default:
   break;
  };
  break;

 case 33:
  switch(ndx) {
  case 0:
   p = "userland void *";
   break;
  case 1:
   p = "size_t";
   break;
  case 2:
   p = "cloudabi_mprot_t";
   break;
  case 3:
   p = "cloudabi_mflags_t";
   break;
  case 4:
   p = "cloudabi_fd_t";
   break;
  case 5:
   p = "cloudabi_filesize_t";
   break;
  default:
   break;
  };
  break;

 case 34:
  switch(ndx) {
  case 0:
   p = "userland void *";
   break;
  case 1:
   p = "size_t";
   break;
  case 2:
   p = "cloudabi_mprot_t";
   break;
  default:
   break;
  };
  break;

 case 35:
  switch(ndx) {
  case 0:
   p = "userland void *";
   break;
  case 1:
   p = "size_t";
   break;
  case 2:
   p = "cloudabi_msflags_t";
   break;
  default:
   break;
  };
  break;

 case 36:
  switch(ndx) {
  case 0:
   p = "userland void *";
   break;
  case 1:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 37:
  switch(ndx) {
  case 0:
   p = "userland const cloudabi64_subscription_t *";
   break;
  case 1:
   p = "userland cloudabi_event_t *";
   break;
  case 2:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 38:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const void *";
   break;
  case 2:
   p = "size_t";
   break;
  case 3:
   p = "userland const cloudabi_fd_t *";
   break;
  case 4:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 39:
  switch(ndx) {
  case 0:
   p = "cloudabi_exitcode_t";
   break;
  default:
   break;
  };
  break;

 case 40:
  break;

 case 41:
  switch(ndx) {
  case 0:
   p = "cloudabi_signal_t";
   break;
  default:
   break;
  };
  break;

 case 42:
  switch(ndx) {
  case 0:
   p = "userland void *";
   break;
  case 1:
   p = "size_t";
   break;
  default:
   break;
  };
  break;

 case 43:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi64_recv_in_t *";
   break;
  case 2:
   p = "userland cloudabi64_recv_out_t *";
   break;
  default:
   break;
  };
  break;

 case 44:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "userland const cloudabi64_send_in_t *";
   break;
  case 2:
   p = "userland cloudabi64_send_out_t *";
   break;
  default:
   break;
  };
  break;

 case 45:
  switch(ndx) {
  case 0:
   p = "cloudabi_fd_t";
   break;
  case 1:
   p = "cloudabi_sdflags_t";
   break;
  default:
   break;
  };
  break;

 case 46:
  switch(ndx) {
  case 0:
   p = "userland cloudabi64_threadattr_t *";
   break;
  default:
   break;
  };
  break;

 case 47:
  switch(ndx) {
  case 0:
   p = "userland cloudabi_lock_t *";
   break;
  case 1:
   p = "cloudabi_scope_t";
   break;
  default:
   break;
  };
  break;

 case 48:
  break;
 default:
  break;
 };
 if (p != ((void*)0))
  strlcpy(desc, p, descsz);
}
