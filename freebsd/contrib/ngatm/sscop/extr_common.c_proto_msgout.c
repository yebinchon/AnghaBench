
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
struct uni_msg {scalar_t__ b_rptr; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef int ssize_t ;
typedef scalar_t__ caddr_t ;


 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int VERBOSE (char*) ;
 int dump_buf (char*,scalar_t__,void*) ;
 int err (int,char*,...) ;
 int fcntl (int ,int ,int) ;
 int loose ;
 int sscop_fd ;
 scalar_t__ sscopframe ;
 int uni_msg_destroy (struct uni_msg*) ;
 void* uni_msg_len (struct uni_msg*) ;
 int verbose ;
 int writev (int ,struct iovec*,int) ;

void
proto_msgout(struct uni_msg *m)
{
 struct iovec iov[2];
 u_int32_t flen;
 ssize_t size;
 static int sent;
 int fl;

 if (verbose & 0x0002)
  dump_buf("send", m->b_rptr, uni_msg_len(m));
 if (loose > 0 && (sent++ % loose) == loose - 1) {
  VERBOSE(("loosing message"));
  uni_msg_destroy(m);
  return;
 }

 flen = uni_msg_len(m);

 iov[0].iov_len = sscopframe ? 4 : 0;
 iov[0].iov_base = (caddr_t)&flen;
 iov[1].iov_len = uni_msg_len(m);
 iov[1].iov_base = m->b_rptr;

 if ((fl = fcntl(sscop_fd, F_GETFL, 0)) == -1)
  err(1, "cannot get flags for sscop fd");
 fl &= ~O_NONBLOCK;
 if (fcntl(sscop_fd, F_SETFL, fl) == -1)
  err(1, "cannot set flags for sscop fd");

 if ((size = writev(sscop_fd, iov, 2)) == -1)
  err(1, "write sscop");
 if ((size_t)size != iov[0].iov_len + iov[1].iov_len)
  err(1, "short sscop write %zu %zu %zd",
      iov[0].iov_len, iov[1].iov_len, size);

 fl |= O_NONBLOCK;
 if (fcntl(sscop_fd, F_SETFL, fl) == -1)
  err(1, "cannot restore flags for sscop fd");

 uni_msg_destroy(m);
}
