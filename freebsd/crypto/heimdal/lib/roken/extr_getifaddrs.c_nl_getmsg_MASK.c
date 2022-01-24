#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nlmsghdr {scalar_t__ nlmsg_pid; int nlmsg_seq; scalar_t__ nlmsg_type; scalar_t__ nlmsg_len; } ;
struct nlmsgerr {int error; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EIO ; 
 int MSG_TRUNC ; 
 scalar_t__ FUNC0 (struct nlmsghdr*) ; 
 scalar_t__ NLMSG_DONE ; 
 scalar_t__ NLMSG_ERROR ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nlmsghdr*,int) ; 
 scalar_t__ FUNC3 (struct nlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int,int,int,void*,size_t,int*) ; 
 void* FUNC8 (void*,size_t) ; 

__attribute__((used)) static int
FUNC9(int sd, int request, int seq,
	  struct nlmsghdr **nlhp,
	  int *done)
{
  struct nlmsghdr *nh;
  size_t bufsize = 65536, lastbufsize = 0;
  void *buff = NULL;
  int result = 0, read_size;
  int msg_flags;
  pid_t pid = FUNC6();
  for (;;){
    void *newbuff = FUNC8(buff, bufsize);
    if (newbuff == NULL || bufsize < lastbufsize) {
      result = -1;
      break;
    }
    buff = newbuff;
    result = read_size = FUNC7(sd, request, seq, buff, bufsize, &msg_flags);
    if (read_size < 0 || (msg_flags & MSG_TRUNC)){
      lastbufsize = bufsize;
      bufsize *= 2;
      continue;
    }
    if (read_size == 0) break;
    nh = (struct nlmsghdr *)buff;
    for (nh = (struct nlmsghdr *)buff;
	 FUNC3(nh, read_size);
	 nh = (struct nlmsghdr *)FUNC2(nh, read_size)){
      if (nh->nlmsg_pid != pid ||
	  nh->nlmsg_seq != seq)
	continue;
      if (nh->nlmsg_type == NLMSG_DONE){
	(*done)++;
	break; /* ok */
      }
      if (nh->nlmsg_type == NLMSG_ERROR){
	struct nlmsgerr *nlerr = (struct nlmsgerr *)FUNC0(nh);
	result = -1;
	if (nh->nlmsg_len < FUNC1(sizeof(struct nlmsgerr)))
	  FUNC4(EIO);
	else
	  FUNC4(-nlerr->error);
	break;
      }
    }
    break;
  }
  if (result < 0)
    if (buff){
      int saved_errno = errno;
      FUNC5(buff);
      FUNC4(saved_errno);
    }
  *nlhp = (struct nlmsghdr *)buff;
  return result;
}