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
struct pollfd {int fd; int events; scalar_t__ revents; } ;
struct nlmsghdr {int dummy; } ;
struct nlmsg_list {int size; int seq; struct nlmsg_list* nlm_next; struct nlmsghdr* nlh; } ;

/* Variables and functions */
 int NLM_F_MATCH ; 
 int NLM_F_ROOT ; 
 int POLLIN ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct nlmsghdr*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int,int,struct nlmsghdr**,int*) ; 
 int FUNC4 (int,int,int,int*) ; 
 int FUNC5 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(int sd, int seq,
	   int request,
	   struct nlmsg_list **nlm_list,
	   struct nlmsg_list **nlm_end)
{
  struct nlmsghdr *nlh = NULL;
  int status;
  int done = 0;
  int tries = 3;

 try_again:
  status = FUNC4(sd, request, NLM_F_ROOT|NLM_F_MATCH, &seq);
  if (status < 0)
    return status;
  if (seq == 0)
    seq = (int)FUNC6(NULL);
  while(!done){
    struct pollfd pfd;

    pfd.fd = sd;
    pfd.events = POLLIN | POLLPRI;
    pfd.revents = 0;
    status = FUNC5(&pfd, 1, 1000);
    if (status < 0)
	return status;
    else if (status == 0) {
	seq++;
	if (tries-- > 0)
	    goto try_again;
	return -1;
    }

    status = FUNC3(sd, request, seq, &nlh, &done);
    if (status < 0)
      return status;
    if (nlh){
      struct nlmsg_list *nlm_next = (struct nlmsg_list *)FUNC2(sizeof(struct nlmsg_list));
      if (nlm_next == NULL){
	int saved_errno = errno;
	FUNC1(nlh);
	FUNC0(saved_errno);
	status = -1;
      } else {
	nlm_next->nlm_next = NULL;
	nlm_next->nlh = (struct nlmsghdr *)nlh;
	nlm_next->size = status;
	nlm_next->seq = seq;
	if (*nlm_list == NULL){
	  *nlm_list = nlm_next;
	  *nlm_end = nlm_next;
	} else {
	  (*nlm_end)->nlm_next = nlm_next;
	  *nlm_end = nlm_next;
	}
      }
    }
  }
  return status >= 0 ? seq : status;
}