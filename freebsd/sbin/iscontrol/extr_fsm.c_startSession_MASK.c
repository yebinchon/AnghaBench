#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int trans_t ;
struct TYPE_4__ {int flags; int fd; int soc; scalar_t__ isid; } ;
typedef  TYPE_1__ isess_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISETSES ; 
 int /*<<< orphan*/  ISCSISETSOC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int SESS_CONNECTED ; 
 int T2 ; 
 int T4 ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 char* iscsidev ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,void*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static trans_t
FUNC9(isess_t *sess)
{
     
     int	n, fd, nfd;
     char	*dev;

     FUNC2(3);

     if((sess->flags & SESS_CONNECTED) == 0) {
	  return T2;
     }
     if(sess->fd == -1) {
	  fd = FUNC5(iscsidev, O_RDWR);
	  if(fd < 0) {
	       FUNC6(iscsidev);
	       return 0;
	  }
	  {
	       // XXX: this has to go
	       size_t	n;
	       n = sizeof(sess->isid);
	       if(FUNC8("net.iscsi_initiator.isid", (void *)sess->isid, (size_t *)&n, 0, 0) != 0)
		    FUNC6("sysctlbyname");
	  }
	  if(FUNC4(fd, ISCSISETSES, &n)) {
	       FUNC6("ISCSISETSES");
	       return 0;
	  }
	  FUNC0(&dev, "%s%d", iscsidev, n);
	  nfd = FUNC5(dev, O_RDWR);
	  if(nfd < 0) {
	       FUNC6(dev);
	       FUNC3(dev);
	       return 0;
	  }
	  FUNC3(dev);
	  FUNC1(fd);
	  sess->fd = nfd;

	  if(FUNC7(sess, 0) != 0)
	       return -1;
     }

     if(FUNC4(sess->fd, ISCSISETSOC, &sess->soc)) {
	  FUNC6("ISCSISETSOC");
	  return 0;
     }

     return T4;
}