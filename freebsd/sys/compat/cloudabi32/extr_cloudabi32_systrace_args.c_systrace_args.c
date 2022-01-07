
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef intptr_t uint64_t ;
struct cloudabi_sys_thread_exit_args {int scope; int lock; } ;
struct cloudabi_sys_sock_shutdown_args {int how; int sock; } ;
struct cloudabi_sys_random_get_args {intptr_t buf_len; int buf; } ;
struct cloudabi_sys_proc_raise_args {int sig; } ;
struct cloudabi_sys_proc_exit_args {int rval; } ;
struct cloudabi_sys_proc_exec_args {intptr_t data_len; intptr_t fds_len; int fds; int data; int fd; } ;
struct cloudabi_sys_mem_unmap_args {intptr_t mapping_len; int mapping; } ;
struct cloudabi_sys_mem_sync_args {intptr_t mapping_len; int flags; int mapping; } ;
struct cloudabi_sys_mem_protect_args {intptr_t mapping_len; int prot; int mapping; } ;
struct cloudabi_sys_mem_map_args {intptr_t len; int off; int fd; int flags; int prot; int addr; } ;
struct cloudabi_sys_mem_advise_args {intptr_t mapping_len; int advice; int mapping; } ;
struct cloudabi_sys_lock_unlock_args {int scope; int lock; } ;
struct cloudabi_sys_file_unlink_args {intptr_t path_len; int flags; int path; int fd; } ;
struct cloudabi_sys_file_symlink_args {intptr_t path1_len; intptr_t path2_len; int path2; int fd; int path1; } ;
struct cloudabi_sys_file_stat_put_args {intptr_t path_len; int flags; int buf; int path; int fd; } ;
struct cloudabi_sys_file_stat_get_args {intptr_t path_len; int buf; int path; int fd; } ;
struct cloudabi_sys_file_stat_fput_args {int flags; int buf; int fd; } ;
struct cloudabi_sys_file_stat_fget_args {int buf; int fd; } ;
struct cloudabi_sys_file_rename_args {intptr_t path1_len; intptr_t path2_len; int path2; int fd2; int path1; int fd1; } ;
struct cloudabi_sys_file_readlink_args {intptr_t path_len; intptr_t buf_len; int buf; int path; int fd; } ;
struct cloudabi_sys_file_readdir_args {intptr_t buf_len; int cookie; int buf; int fd; } ;
struct cloudabi_sys_file_open_args {intptr_t path_len; int fds; int oflags; int path; int dirfd; } ;
struct cloudabi_sys_file_link_args {intptr_t path1_len; intptr_t path2_len; int path2; int fd2; int path1; int fd1; } ;
struct cloudabi_sys_file_create_args {intptr_t path_len; int type; int path; int fd; } ;
struct cloudabi_sys_file_allocate_args {int len; int offset; int fd; } ;
struct cloudabi_sys_file_advise_args {int advice; int len; int offset; int fd; } ;
struct cloudabi_sys_fd_sync_args {int fd; } ;
struct cloudabi_sys_fd_stat_put_args {int flags; int buf; int fd; } ;
struct cloudabi_sys_fd_stat_get_args {int buf; int fd; } ;
struct cloudabi_sys_fd_seek_args {int whence; int offset; int fd; } ;
struct cloudabi_sys_fd_replace_args {int to; int from; } ;
struct cloudabi_sys_fd_dup_args {int from; } ;
struct cloudabi_sys_fd_datasync_args {int fd; } ;
struct cloudabi_sys_fd_create2_args {int type; } ;
struct cloudabi_sys_fd_create1_args {int type; } ;
struct cloudabi_sys_fd_close_args {int fd; } ;
struct cloudabi_sys_condvar_signal_args {int nwaiters; int scope; int condvar; } ;
struct cloudabi_sys_clock_time_get_args {int precision; int clock_id; } ;
struct cloudabi_sys_clock_res_get_args {int clock_id; } ;
struct cloudabi32_sys_thread_create_args {int attr; } ;
struct cloudabi32_sys_sock_send_args {int out; int in; int sock; } ;
struct cloudabi32_sys_sock_recv_args {int out; int in; int sock; } ;
struct cloudabi32_sys_poll_args {intptr_t nsubscriptions; int out; int in; } ;
struct cloudabi32_sys_fd_write_args {intptr_t iovs_len; int iovs; int fd; } ;
struct cloudabi32_sys_fd_read_args {intptr_t iovs_len; int iovs; int fd; } ;
struct cloudabi32_sys_fd_pwrite_args {intptr_t iovs_len; int offset; int iovs; int fd; } ;
struct cloudabi32_sys_fd_pread_args {intptr_t iovs_len; int offset; int iovs; int fd; } ;
typedef int int64_t ;



__attribute__((used)) static void
systrace_args(int sysnum, void *params, uint64_t *uarg, int *n_args)
{
 int64_t *iarg = (int64_t *) uarg;
 switch (sysnum) {

 case 0: {
  struct cloudabi_sys_clock_res_get_args *p = params;
  iarg[0] = p->clock_id;
  *n_args = 1;
  break;
 }

 case 1: {
  struct cloudabi_sys_clock_time_get_args *p = params;
  iarg[0] = p->clock_id;
  iarg[1] = p->precision;
  *n_args = 2;
  break;
 }

 case 2: {
  struct cloudabi_sys_condvar_signal_args *p = params;
  uarg[0] = (intptr_t) p->condvar;
  iarg[1] = p->scope;
  iarg[2] = p->nwaiters;
  *n_args = 3;
  break;
 }

 case 3: {
  struct cloudabi_sys_fd_close_args *p = params;
  iarg[0] = p->fd;
  *n_args = 1;
  break;
 }

 case 4: {
  struct cloudabi_sys_fd_create1_args *p = params;
  iarg[0] = p->type;
  *n_args = 1;
  break;
 }

 case 5: {
  struct cloudabi_sys_fd_create2_args *p = params;
  iarg[0] = p->type;
  *n_args = 1;
  break;
 }

 case 6: {
  struct cloudabi_sys_fd_datasync_args *p = params;
  iarg[0] = p->fd;
  *n_args = 1;
  break;
 }

 case 7: {
  struct cloudabi_sys_fd_dup_args *p = params;
  iarg[0] = p->from;
  *n_args = 1;
  break;
 }

 case 8: {
  struct cloudabi32_sys_fd_pread_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->iovs;
  uarg[2] = p->iovs_len;
  iarg[3] = p->offset;
  *n_args = 4;
  break;
 }

 case 9: {
  struct cloudabi32_sys_fd_pwrite_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->iovs;
  uarg[2] = p->iovs_len;
  iarg[3] = p->offset;
  *n_args = 4;
  break;
 }

 case 10: {
  struct cloudabi32_sys_fd_read_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->iovs;
  uarg[2] = p->iovs_len;
  *n_args = 3;
  break;
 }

 case 11: {
  struct cloudabi_sys_fd_replace_args *p = params;
  iarg[0] = p->from;
  iarg[1] = p->to;
  *n_args = 2;
  break;
 }

 case 12: {
  struct cloudabi_sys_fd_seek_args *p = params;
  iarg[0] = p->fd;
  iarg[1] = p->offset;
  iarg[2] = p->whence;
  *n_args = 3;
  break;
 }

 case 13: {
  struct cloudabi_sys_fd_stat_get_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->buf;
  *n_args = 2;
  break;
 }

 case 14: {
  struct cloudabi_sys_fd_stat_put_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->buf;
  iarg[2] = p->flags;
  *n_args = 3;
  break;
 }

 case 15: {
  struct cloudabi_sys_fd_sync_args *p = params;
  iarg[0] = p->fd;
  *n_args = 1;
  break;
 }

 case 16: {
  struct cloudabi32_sys_fd_write_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->iovs;
  uarg[2] = p->iovs_len;
  *n_args = 3;
  break;
 }

 case 17: {
  struct cloudabi_sys_file_advise_args *p = params;
  iarg[0] = p->fd;
  iarg[1] = p->offset;
  iarg[2] = p->len;
  iarg[3] = p->advice;
  *n_args = 4;
  break;
 }

 case 18: {
  struct cloudabi_sys_file_allocate_args *p = params;
  iarg[0] = p->fd;
  iarg[1] = p->offset;
  iarg[2] = p->len;
  *n_args = 3;
  break;
 }

 case 19: {
  struct cloudabi_sys_file_create_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->path;
  uarg[2] = p->path_len;
  iarg[3] = p->type;
  *n_args = 4;
  break;
 }

 case 20: {
  struct cloudabi_sys_file_link_args *p = params;
  iarg[0] = p->fd1;
  uarg[1] = (intptr_t) p->path1;
  uarg[2] = p->path1_len;
  iarg[3] = p->fd2;
  uarg[4] = (intptr_t) p->path2;
  uarg[5] = p->path2_len;
  *n_args = 6;
  break;
 }

 case 21: {
  struct cloudabi_sys_file_open_args *p = params;
  iarg[0] = p->dirfd;
  uarg[1] = (intptr_t) p->path;
  uarg[2] = p->path_len;
  iarg[3] = p->oflags;
  uarg[4] = (intptr_t) p->fds;
  *n_args = 5;
  break;
 }

 case 22: {
  struct cloudabi_sys_file_readdir_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->buf;
  uarg[2] = p->buf_len;
  iarg[3] = p->cookie;
  *n_args = 4;
  break;
 }

 case 23: {
  struct cloudabi_sys_file_readlink_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->path;
  uarg[2] = p->path_len;
  uarg[3] = (intptr_t) p->buf;
  uarg[4] = p->buf_len;
  *n_args = 5;
  break;
 }

 case 24: {
  struct cloudabi_sys_file_rename_args *p = params;
  iarg[0] = p->fd1;
  uarg[1] = (intptr_t) p->path1;
  uarg[2] = p->path1_len;
  iarg[3] = p->fd2;
  uarg[4] = (intptr_t) p->path2;
  uarg[5] = p->path2_len;
  *n_args = 6;
  break;
 }

 case 25: {
  struct cloudabi_sys_file_stat_fget_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->buf;
  *n_args = 2;
  break;
 }

 case 26: {
  struct cloudabi_sys_file_stat_fput_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->buf;
  iarg[2] = p->flags;
  *n_args = 3;
  break;
 }

 case 27: {
  struct cloudabi_sys_file_stat_get_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->path;
  uarg[2] = p->path_len;
  uarg[3] = (intptr_t) p->buf;
  *n_args = 4;
  break;
 }

 case 28: {
  struct cloudabi_sys_file_stat_put_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->path;
  uarg[2] = p->path_len;
  uarg[3] = (intptr_t) p->buf;
  iarg[4] = p->flags;
  *n_args = 5;
  break;
 }

 case 29: {
  struct cloudabi_sys_file_symlink_args *p = params;
  uarg[0] = (intptr_t) p->path1;
  uarg[1] = p->path1_len;
  iarg[2] = p->fd;
  uarg[3] = (intptr_t) p->path2;
  uarg[4] = p->path2_len;
  *n_args = 5;
  break;
 }

 case 30: {
  struct cloudabi_sys_file_unlink_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->path;
  uarg[2] = p->path_len;
  iarg[3] = p->flags;
  *n_args = 4;
  break;
 }

 case 31: {
  struct cloudabi_sys_lock_unlock_args *p = params;
  uarg[0] = (intptr_t) p->lock;
  iarg[1] = p->scope;
  *n_args = 2;
  break;
 }

 case 32: {
  struct cloudabi_sys_mem_advise_args *p = params;
  uarg[0] = (intptr_t) p->mapping;
  uarg[1] = p->mapping_len;
  iarg[2] = p->advice;
  *n_args = 3;
  break;
 }

 case 33: {
  struct cloudabi_sys_mem_map_args *p = params;
  uarg[0] = (intptr_t) p->addr;
  uarg[1] = p->len;
  iarg[2] = p->prot;
  iarg[3] = p->flags;
  iarg[4] = p->fd;
  iarg[5] = p->off;
  *n_args = 6;
  break;
 }

 case 34: {
  struct cloudabi_sys_mem_protect_args *p = params;
  uarg[0] = (intptr_t) p->mapping;
  uarg[1] = p->mapping_len;
  iarg[2] = p->prot;
  *n_args = 3;
  break;
 }

 case 35: {
  struct cloudabi_sys_mem_sync_args *p = params;
  uarg[0] = (intptr_t) p->mapping;
  uarg[1] = p->mapping_len;
  iarg[2] = p->flags;
  *n_args = 3;
  break;
 }

 case 36: {
  struct cloudabi_sys_mem_unmap_args *p = params;
  uarg[0] = (intptr_t) p->mapping;
  uarg[1] = p->mapping_len;
  *n_args = 2;
  break;
 }

 case 37: {
  struct cloudabi32_sys_poll_args *p = params;
  uarg[0] = (intptr_t) p->in;
  uarg[1] = (intptr_t) p->out;
  uarg[2] = p->nsubscriptions;
  *n_args = 3;
  break;
 }

 case 38: {
  struct cloudabi_sys_proc_exec_args *p = params;
  iarg[0] = p->fd;
  uarg[1] = (intptr_t) p->data;
  uarg[2] = p->data_len;
  uarg[3] = (intptr_t) p->fds;
  uarg[4] = p->fds_len;
  *n_args = 5;
  break;
 }

 case 39: {
  struct cloudabi_sys_proc_exit_args *p = params;
  iarg[0] = p->rval;
  *n_args = 1;
  break;
 }

 case 40: {
  *n_args = 0;
  break;
 }

 case 41: {
  struct cloudabi_sys_proc_raise_args *p = params;
  iarg[0] = p->sig;
  *n_args = 1;
  break;
 }

 case 42: {
  struct cloudabi_sys_random_get_args *p = params;
  uarg[0] = (intptr_t) p->buf;
  uarg[1] = p->buf_len;
  *n_args = 2;
  break;
 }

 case 43: {
  struct cloudabi32_sys_sock_recv_args *p = params;
  iarg[0] = p->sock;
  uarg[1] = (intptr_t) p->in;
  uarg[2] = (intptr_t) p->out;
  *n_args = 3;
  break;
 }

 case 44: {
  struct cloudabi32_sys_sock_send_args *p = params;
  iarg[0] = p->sock;
  uarg[1] = (intptr_t) p->in;
  uarg[2] = (intptr_t) p->out;
  *n_args = 3;
  break;
 }

 case 45: {
  struct cloudabi_sys_sock_shutdown_args *p = params;
  iarg[0] = p->sock;
  iarg[1] = p->how;
  *n_args = 2;
  break;
 }

 case 46: {
  struct cloudabi32_sys_thread_create_args *p = params;
  uarg[0] = (intptr_t) p->attr;
  *n_args = 1;
  break;
 }

 case 47: {
  struct cloudabi_sys_thread_exit_args *p = params;
  uarg[0] = (intptr_t) p->lock;
  iarg[1] = p->scope;
  *n_args = 2;
  break;
 }

 case 48: {
  *n_args = 0;
  break;
 }
 default:
  *n_args = 0;
  break;
 };
}
