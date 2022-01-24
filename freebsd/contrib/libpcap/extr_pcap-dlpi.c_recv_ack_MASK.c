#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dl_unix_errno; int /*<<< orphan*/  dl_errno; } ;
union DL_primitives {int dl_primitive; TYPE_1__ error_ack; } ;
struct strbuf {int len; char* buf; int /*<<< orphan*/  maxlen; } ;
typedef  int /*<<< orphan*/  errmsgbuf ;
typedef  int /*<<< orphan*/  dlprimbuf ;

/* Variables and functions */
 int /*<<< orphan*/  DL_ACCESS ; 
 int /*<<< orphan*/  DL_BADPPA ; 
#define  DL_BIND_ACK 133 
#define  DL_ERROR_ACK 132 
#define  DL_HP_PPA_ACK 131 
#define  DL_INFO_ACK 130 
#define  DL_OK_ACK 129 
#define  DL_SYSERR 128 
 int EACCES ; 
 int EPERM ; 
 union DL_primitives* FUNC0 (char*) ; 
 int /*<<< orphan*/  MAXDLBUF ; 
 int PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int PCAP_ERROR_NO_SUCH_DEVICE ; 
 int PCAP_ERROR_PERM_DENIED ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,struct strbuf*,struct strbuf*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,int,...) ; 

__attribute__((used)) static int
FUNC6(int fd, int size, const char *what, char *bufp, char *ebuf, int *uerror)
{
	union	DL_primitives	*dlp;
	struct	strbuf	ctl;
	int	flags;
	char	errmsgbuf[PCAP_ERRBUF_SIZE];
	char	dlprimbuf[64];

	/*
	 * Clear out "*uerror", so it's only set for DL_ERROR_ACK/DL_SYSERR,
	 * making that the only place where EBUSY is treated specially.
	 */
	if (uerror != NULL)
		*uerror = 0;

	ctl.maxlen = MAXDLBUF;
	ctl.len = 0;
	ctl.buf = bufp;

	flags = 0;
	if (FUNC3(fd, &ctl, (struct strbuf*)NULL, &flags) < 0) {
		FUNC4(ebuf, PCAP_ERRBUF_SIZE,
		    errno, "recv_ack: %s getmsg", what);
		return (PCAP_ERROR);
	}

	dlp = FUNC0(ctl.buf);
	switch (dlp->dl_primitive) {

	case DL_INFO_ACK:
	case DL_BIND_ACK:
	case DL_OK_ACK:
#ifdef DL_HP_PPA_ACK
	case DL_HP_PPA_ACK:
#endif
		/* These are OK */
		break;

	case DL_ERROR_ACK:
		switch (dlp->error_ack.dl_errno) {

		case DL_SYSERR:
			if (uerror != NULL)
				*uerror = dlp->error_ack.dl_unix_errno;
			FUNC4(ebuf, PCAP_ERRBUF_SIZE,
			    dlp->error_ack.dl_unix_errno,
			    "recv_ack: %s: UNIX error", what);
			if (dlp->error_ack.dl_unix_errno == EPERM ||
			    dlp->error_ack.dl_unix_errno == EACCES)
				return (PCAP_ERROR_PERM_DENIED);
			break;

		default:
			FUNC5(ebuf, PCAP_ERRBUF_SIZE,
			    "recv_ack: %s: %s", what,
			    FUNC2(errmsgbuf, sizeof (errmsgbuf), dlp->error_ack.dl_errno));
			if (dlp->error_ack.dl_errno == DL_BADPPA)
				return (PCAP_ERROR_NO_SUCH_DEVICE);
			else if (dlp->error_ack.dl_errno == DL_ACCESS)
				return (PCAP_ERROR_PERM_DENIED);
			break;
		}
		return (PCAP_ERROR);

	default:
		FUNC5(ebuf, PCAP_ERRBUF_SIZE,
		    "recv_ack: %s: Unexpected primitive ack %s",
		    what, FUNC1(dlprimbuf, sizeof (dlprimbuf), dlp->dl_primitive));
		return (PCAP_ERROR);
	}

	if (ctl.len < size) {
		FUNC5(ebuf, PCAP_ERRBUF_SIZE,
		    "recv_ack: %s: Ack too small (%d < %d)",
		    what, ctl.len, size);
		return (PCAP_ERROR);
	}
	return (ctl.len);
}