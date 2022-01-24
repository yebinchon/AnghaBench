#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct pcap_dlpi {int /*<<< orphan*/  dlpi_hd; } ;
struct TYPE_11__ {int /*<<< orphan*/  device; scalar_t__ promisc; scalar_t__ rfmon; } ;
struct TYPE_12__ {scalar_t__ snapshot; int /*<<< orphan*/  (* cleanup_op ) (TYPE_2__*) ;int /*<<< orphan*/  stats_op; int /*<<< orphan*/  setnonblock_op; int /*<<< orphan*/  getnonblock_op; int /*<<< orphan*/ * set_datalink_op; int /*<<< orphan*/ * setdirection_op; int /*<<< orphan*/  setfilter_op; int /*<<< orphan*/  inject_op; int /*<<< orphan*/  read_op; int /*<<< orphan*/  fd; int /*<<< orphan*/  selectable_fd; int /*<<< orphan*/  errbuf; TYPE_1__ opt; struct pcap_dlpi* priv; } ;
typedef  TYPE_2__ pcap_t ;
struct TYPE_13__ {int /*<<< orphan*/  di_mactype; } ;
typedef  TYPE_3__ dlpi_info_t ;
typedef  int /*<<< orphan*/  dlpi_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLPI_ANY_SAP ; 
 int DLPI_ELINKNAMEINVAL ; 
 int DLPI_ENOLINK ; 
 int DLPI_PASSIVE ; 
 int DLPI_RAW ; 
 int DLPI_SUCCESS ; 
 int /*<<< orphan*/  DL_PROMISC_MULTI ; 
 int /*<<< orphan*/  DL_PROMISC_PHYS ; 
 int /*<<< orphan*/  DL_PROMISC_SAP ; 
 int DL_SYSERR ; 
 scalar_t__ EACCES ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  FLUSHR ; 
 int /*<<< orphan*/  I_FLUSH ; 
 scalar_t__ MAXIMUM_SNAPLEN ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int PCAP_ERROR_NO_SUCH_DEVICE ; 
 int PCAP_ERROR_PERM_DENIED ; 
 int PCAP_ERROR_PROMISC_PERM_DENIED ; 
 int PCAP_ERROR_RFMON_NOTSUP ; 
 int PCAP_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  install_bpf_program ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  pcap_getnonblock_fd ; 
 int /*<<< orphan*/  pcap_inject_libdlpi ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcap_read_libdlpi ; 
 int /*<<< orphan*/  pcap_setnonblock_fd ; 
 int /*<<< orphan*/  pcap_stats_dlpi ; 

__attribute__((used)) static int
FUNC12(pcap_t *p)
{
	struct pcap_dlpi *pd = p->priv;
	int status = 0;
	int retv;
	dlpi_handle_t dh;
	dlpi_info_t dlinfo;

	/*
	 * Enable Solaris raw and passive DLPI extensions;
	 * dlpi_open() will not fail if the underlying link does not support
	 * passive mode. See dlpi(7P) for details.
	 */
	retv = FUNC3(p->opt.device, &dh, DLPI_RAW|DLPI_PASSIVE);
	if (retv != DLPI_SUCCESS) {
		if (retv == DLPI_ELINKNAMEINVAL || retv == DLPI_ENOLINK)
			status = PCAP_ERROR_NO_SUCH_DEVICE;
		else if (retv == DL_SYSERR &&
		    (errno == EPERM || errno == EACCES))
			status = PCAP_ERROR_PERM_DENIED;
		else
			status = PCAP_ERROR;
		FUNC10(p->opt.device, "dlpi_open", retv,
		    p->errbuf);
		return (status);
	}
	pd->dlpi_hd = dh;

	if (p->opt.rfmon) {
		/*
		 * This device exists, but we don't support monitor mode
		 * any platforms that support DLPI.
		 */
		status = PCAP_ERROR_RFMON_NOTSUP;
		goto bad;
	}

	/* Bind with DLPI_ANY_SAP. */
	if ((retv = FUNC0(pd->dlpi_hd, DLPI_ANY_SAP, 0)) != DLPI_SUCCESS) {
		status = PCAP_ERROR;
		FUNC10(p->opt.device, "dlpi_bind", retv, p->errbuf);
		goto bad;
	}

	/*
	 * Turn a negative snapshot value (invalid), a snapshot value of
	 * 0 (unspecified), or a value bigger than the normal maximum
	 * value, into the maximum allowed value.
	 *
	 * If some application really *needs* a bigger snapshot
	 * length, we should just increase MAXIMUM_SNAPLEN.
	 */
	if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
		p->snapshot = MAXIMUM_SNAPLEN;

	/* Enable promiscuous mode. */
	if (p->opt.promisc) {
		retv = FUNC4(p, DL_PROMISC_PHYS);
		if (retv < 0) {
			/*
			 * "You don't have permission to capture on
			 * this device" and "you don't have permission
			 * to capture in promiscuous mode on this
			 * device" are different; let the user know,
			 * so if they can't get permission to
			 * capture in promiscuous mode, they can at
			 * least try to capture in non-promiscuous
			 * mode.
			 *
			 * XXX - you might have to capture in
			 * promiscuous mode to see outgoing packets.
			 */
			if (retv == PCAP_ERROR_PERM_DENIED)
				status = PCAP_ERROR_PROMISC_PERM_DENIED;
			else
				status = retv;
			goto bad;
		}
	} else {
		/* Try to enable multicast. */
		retv = FUNC4(p, DL_PROMISC_MULTI);
		if (retv < 0) {
			status = retv;
			goto bad;
		}
	}

	/* Try to enable SAP promiscuity. */
	retv = FUNC4(p, DL_PROMISC_SAP);
	if (retv < 0) {
		/*
		 * Not fatal, since the DL_PROMISC_PHYS mode worked.
		 * Report it as a warning, however.
		 */
		if (p->opt.promisc)
			status = PCAP_WARNING;
		else {
			status = retv;
			goto bad;
		}
	}

	/* Determine link type.  */
	if ((retv = FUNC2(pd->dlpi_hd, &dlinfo, 0)) != DLPI_SUCCESS) {
		status = PCAP_ERROR;
		FUNC10(p->opt.device, "dlpi_info", retv, p->errbuf);
		goto bad;
	}

	if (FUNC11(p, dlinfo.di_mactype) != 0) {
		status = PCAP_ERROR;
		goto bad;
	}

	p->fd = FUNC1(pd->dlpi_hd);

	/* Push and configure bufmod. */
	if (FUNC8(p, p->snapshot) != 0) {
		status = PCAP_ERROR;
		goto bad;
	}

	/*
	 * Flush the read side.
	 */
	if (FUNC5(p->fd, I_FLUSH, FLUSHR) != 0) {
		status = PCAP_ERROR;
		FUNC9(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "FLUSHR");
		goto bad;
	}

	/* Allocate data buffer. */
	if (FUNC6(p) != 0) {
		status = PCAP_ERROR;
		goto bad;
	}

	/*
	 * "p->fd" is a FD for a STREAMS device, so "select()" and
	 * "poll()" should work on it.
	 */
	p->selectable_fd = p->fd;

	p->read_op = pcap_read_libdlpi;
	p->inject_op = pcap_inject_libdlpi;
	p->setfilter_op = install_bpf_program;	/* No kernel filtering */
	p->setdirection_op = NULL;	/* Not implemented */
	p->set_datalink_op = NULL;	/* Can't change data link type */
	p->getnonblock_op = pcap_getnonblock_fd;
	p->setnonblock_op = pcap_setnonblock_fd;
	p->stats_op = pcap_stats_dlpi;
	p->cleanup_op = pcap_cleanup_libdlpi;

	return (status);
bad:
	FUNC7(p);
	return (status);
}