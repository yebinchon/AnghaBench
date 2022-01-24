#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_11__ {scalar_t__ ps_ifdrop; scalar_t__ ps_recv; scalar_t__ ps_drop; } ;
struct pcap_dag {int dag_stream; int dag_fcs_bits; int dag_timeout; int /*<<< orphan*/ * dag_ref; TYPE_1__ stat; scalar_t__ dag_mem_top; scalar_t__ dag_mem_bottom; struct timeval required_select_timeout; int /*<<< orphan*/  drop_attr; int /*<<< orphan*/  dag_root; } ;
struct TYPE_12__ {char* device; int timeout; scalar_t__ immediate; } ;
struct TYPE_13__ {scalar_t__ snapshot; int linktype; int selectable_fd; int /*<<< orphan*/  fd; int /*<<< orphan*/  cleanup_op; int /*<<< orphan*/  stats_op; int /*<<< orphan*/  setnonblock_op; int /*<<< orphan*/  getnonblock_op; int /*<<< orphan*/  set_datalink_op; int /*<<< orphan*/ * setdirection_op; int /*<<< orphan*/  setfilter_op; int /*<<< orphan*/  inject_op; int /*<<< orphan*/  read_op; int /*<<< orphan*/  errbuf; scalar_t__ bufsize; TYPE_2__ opt; void* linktype_ext; struct timeval* required_select_timeout; struct pcap_dag* priv; } ;
typedef  TYPE_3__ pcap_t ;
struct TYPE_14__ {int device_code; } ;
typedef  TYPE_4__ daginf_t ;
typedef  int dag_size_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ MAXIMUM_SNAPLEN ; 
 scalar_t__ MAX_DAG_SNAPLEN ; 
 scalar_t__ MIN_DAG_SNAPLEN ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int*,struct timeval*,struct timeval*) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dag_inject ; 
 scalar_t__ FUNC13 (char*,char*,scalar_t__,int*) ; 
 int /*<<< orphan*/  dag_platform_cleanup ; 
 int /*<<< orphan*/  dag_read ; 
 int /*<<< orphan*/  dag_set_datalink ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  dag_setfilter ; 
 int /*<<< orphan*/  dag_setnonblock ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dag_stats ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  kComponentStreamFeatures ; 
 int /*<<< orphan*/  kNullAttributeUuid ; 
 int /*<<< orphan*/  kUint32AttributeStreamDropCount ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  pcap_getnonblock_fd ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ snaplen ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char*) ; 

__attribute__((used)) static int FUNC28(pcap_t* p)
{
	struct pcap_dag *pd = p->priv;
	char *s;
	int n;
	daginf_t* daginf;
	char * newDev = NULL;
	char * device = p->opt.device;
	dag_size_t mindata;
	struct timeval maxwait;
	struct timeval poll;

	if (device == NULL) {
		FUNC25(p->errbuf, PCAP_ERRBUF_SIZE, "device is NULL");
		return -1;
	}

	/* Initialize some components of the pcap structure. */
	newDev = (char *)FUNC21(FUNC27(device) + 16);
	if (newDev == NULL) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "Can't allocate string for device name");
		goto fail;
	}

	/* Parse input name to get dag device and stream number if provided */
	if (FUNC13(device, newDev, FUNC27(device) + 16, &pd->dag_stream) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_parse_name");
		goto fail;
	}
	device = newDev;

	if (pd->dag_stream%2) {
		FUNC25(p->errbuf, PCAP_ERRBUF_SIZE, "dag_parse_name: tx (even numbered) streams not supported for capture");
		goto fail;
	}

	/* setup device parameters */
	if((pd->dag_ref = FUNC8((char *)device)) == NULL) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_config_init %s", device);
		goto fail;
	}

	if((p->fd = FUNC5(pd->dag_ref)) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_config_get_card_fd %s", device);
		goto fail;
	}

	/* Open requested stream. Can fail if already locked or on error */
	if (FUNC2(p->fd, pd->dag_stream, 0, 0) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_attach_stream");
		goto failclose;
	}

	/* Try to find Stream Drop attribute */
	pd->drop_attr = kNullAttributeUuid;
	pd->dag_root = FUNC7(pd->dag_ref);
	if ( FUNC3(pd->dag_root, kComponentStreamFeatures, 0) )
	{
		pd->drop_attr = FUNC6(pd->dag_ref, kUint32AttributeStreamDropCount, pd->dag_stream/2);
	}

	/* Set up default poll parameters for stream
	 * Can be overridden by pcap_set_nonblock()
	 */
	if (FUNC11(p->fd, pd->dag_stream,
				&mindata, &maxwait, &poll) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_get_stream_poll");
		goto faildetach;
	}

	/* Use the poll time as the required select timeout for callers
	 * who are using select()/etc. in an event loop waiting for
	 * packets to arrive.
	 */
	pd->required_select_timeout = poll;
	p->required_select_timeout = &pd->required_select_timeout;

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

	if (p->opt.immediate) {
		/* Call callback immediately.
		 * XXX - is this the right way to p this?
		 */
		mindata = 0;
	} else {
		/* Amount of data to collect in Bytes before calling callbacks.
		 * Important for efficiency, but can introduce latency
		 * at low packet rates if to_ms not set!
		 */
		mindata = 65536;
	}

	/* Obey opt.timeout (was to_ms) if supplied. This is a good idea!
	 * Recommend 10-100ms. Calls will time out even if no data arrived.
	 */
	maxwait.tv_sec = p->opt.timeout/1000;
	maxwait.tv_usec = (p->opt.timeout%1000) * 1000;

	if (FUNC14(p->fd, pd->dag_stream,
				mindata, &maxwait, &poll) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_set_stream_poll");
		goto faildetach;
	}

        /* XXX Not calling dag_configure() to set slen; this is unsafe in
	 * multi-stream environments as the gpp config is global.
         * Once the firmware provides 'per-stream slen' this can be supported
	 * again via the Config API without side-effects */
#if 0
	/* set the card snap length to the specified snaplen parameter */
	/* This is a really bad idea, as different cards have different
	 * valid slen ranges. Should fix in Config API. */
	if (p->snapshot == 0 || p->snapshot > MAX_DAG_SNAPLEN) {
		p->snapshot = MAX_DAG_SNAPLEN;
	} else if (snaplen < MIN_DAG_SNAPLEN) {
		p->snapshot = MIN_DAG_SNAPLEN;
	}
	/* snap len has to be a multiple of 4 */
#endif

	if(FUNC15(p->fd, pd->dag_stream) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "dag_start_stream %s", device);
		goto faildetach;
	}

	/*
	 * Important! You have to ensure bottom is properly
	 * initialized to zero on startup, it won't give you
	 * a compiler warning if you make this mistake!
	 */
	pd->dag_mem_bottom = 0;
	pd->dag_mem_top = 0;

	/*
	 * Find out how many FCS bits we should strip.
	 * First, query the card to see if it strips the FCS.
	 */
	daginf = FUNC12(p->fd);
	if ((0x4200 == daginf->device_code) || (0x4230 == daginf->device_code))	{
		/* DAG 4.2S and 4.23S already strip the FCS.  Stripping the final word again truncates the packet. */
		pd->dag_fcs_bits = 0;

		/* Note that no FCS will be supplied. */
		p->linktype_ext = FUNC0(0);
	} else {
		/*
		 * Start out assuming it's 32 bits.
		 */
		pd->dag_fcs_bits = 32;

		/* Allow an environment variable to override. */
		if ((s = FUNC20("ERF_FCS_BITS")) != NULL) {
			if ((n = FUNC1(s)) == 0 || n == 16 || n == 32) {
				pd->dag_fcs_bits = n;
			} else {
				FUNC25(p->errbuf, PCAP_ERRBUF_SIZE,
					"pcap_activate %s: bad ERF_FCS_BITS value (%d) in environment", device, n);
				goto failstop;
			}
		}

		/*
		 * Did the user request that they not be stripped?
		 */
		if ((s = FUNC20("ERF_DONT_STRIP_FCS")) != NULL) {
			/* Yes.  Note the number of bytes that will be
			   supplied. */
			p->linktype_ext = FUNC0(pd->dag_fcs_bits/16);

			/* And don't strip them. */
			pd->dag_fcs_bits = 0;
		}
	}

	pd->dag_timeout	= p->opt.timeout;

	p->linktype = -1;
	if (FUNC10(p) < 0)
		goto failstop;

	p->bufsize = 0;

	if (FUNC22(p) < 0) {
		FUNC24(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "new_pcap_dag %s", device);
		goto failstop;
	}

	/*
	 * "select()" and "poll()" don't work on DAG device descriptors.
	 */
	p->selectable_fd = -1;

	if (newDev != NULL) {
		FUNC19((char *)newDev);
	}

	p->read_op = dag_read;
	p->inject_op = dag_inject;
	p->setfilter_op = dag_setfilter;
	p->setdirection_op = NULL; /* Not implemented.*/
	p->set_datalink_op = dag_set_datalink;
	p->getnonblock_op = pcap_getnonblock_fd;
	p->setnonblock_op = dag_setnonblock;
	p->stats_op = dag_stats;
	p->cleanup_op = dag_platform_cleanup;
	pd->stat.ps_drop = 0;
	pd->stat.ps_recv = 0;
	pd->stat.ps_ifdrop = 0;
	return 0;

failstop:
	if (FUNC16(p->fd, pd->dag_stream) < 0) {
		FUNC18(stderr,"dag_stop_stream: %s\n", FUNC26(errno));
	}

faildetach:
	if (FUNC9(p->fd, pd->dag_stream) < 0)
		FUNC18(stderr,"dag_detach_stream: %s\n", FUNC26(errno));

failclose:
	FUNC4(pd->dag_ref);
	FUNC17(p);

fail:
	FUNC23(p);
	if (newDev != NULL) {
		FUNC19((char *)newDev);
	}

	return PCAP_ERROR;
}