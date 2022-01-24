#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
union ccb {int /*<<< orphan*/  csio; int /*<<< orphan*/  ataio; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ses_control_page_hdr {int /*<<< orphan*/  control_flags; } ;
struct ses_comstat {int dummy; } ;
struct enc_fsm_state {int /*<<< orphan*/  timeout; } ;
struct TYPE_15__ {int /*<<< orphan*/  ses_pending_requests; int /*<<< orphan*/  ses_requests; } ;
typedef  TYPE_1__ ses_softc_t ;
struct TYPE_16__ {scalar_t__ result; } ;
typedef  TYPE_2__ ses_control_request_t ;
struct TYPE_17__ {TYPE_10__* status_page; } ;
typedef  TYPE_3__ ses_cache_t ;
struct TYPE_19__ {TYPE_3__* private; } ;
struct TYPE_18__ {scalar_t__ enc_type; TYPE_5__ enc_daemon_cache; TYPE_1__* enc_private; } ;
typedef  TYPE_4__ enc_softc_t ;
typedef  TYPE_5__ enc_cache_t ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ ENC_SEMB_SES ; 
 int ENOENT ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SESCTL_CSEL ; 
 int /*<<< orphan*/  SES_ENCSTAT_INVOP ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_10__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,size_t,TYPE_2__*) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC11(enc_softc_t *enc, struct enc_fsm_state *state,
			 union ccb *ccb, uint8_t *buf)
{
	ses_softc_t			*ses;
	enc_cache_t			*enc_cache;
	ses_cache_t			*ses_cache;
	struct ses_control_page_hdr	*hdr;
	ses_control_request_t		*req;
	size_t				 plength;
	size_t				 offset;

	ses = enc->enc_private;
	enc_cache = &enc->enc_daemon_cache;
	ses_cache = enc_cache->private;
	hdr = (struct ses_control_page_hdr *)buf;
	
	if (ses_cache->status_page == NULL) {
		FUNC9(&ses->ses_requests, EIO);
		return (EIO);
	}

	plength = FUNC8(&ses_cache->status_page->hdr);
	FUNC4(buf, ses_cache->status_page, plength);

	/* Disable the select bits in all status entries.  */
	offset = sizeof(struct ses_control_page_hdr);
	for (offset = sizeof(struct ses_control_page_hdr);
	     offset < plength; offset += sizeof(struct ses_comstat)) {
		buf[offset] &= ~SESCTL_CSEL;
	}

	/* And make sure the INVOP bit is clear.  */
	hdr->control_flags &= ~SES_ENCSTAT_INVOP;

	/* Apply incoming requests. */
	while ((req = FUNC1(&ses->ses_requests)) != NULL) {

		FUNC3(&ses->ses_requests, req, links);
		req->result = FUNC7(enc, buf, plength, req);
		if (req->result != 0) {
			FUNC10(req);
			continue;
		}
		FUNC2(&ses->ses_pending_requests, req, links);
	}

	if (FUNC0(&ses->ses_pending_requests) != 0)
		return (ENOENT);

	/* Fill out the ccb */
	if (enc->enc_type == ENC_SEMB_SES) {
		FUNC6(&ccb->ataio, /*retries*/5, NULL,
			     MSG_SIMPLE_Q_TAG,
			     buf, FUNC8(&ses_cache->status_page->hdr),
			     state->timeout);
	} else {
		FUNC5(&ccb->csio, /*retries*/5, NULL,
			     MSG_SIMPLE_Q_TAG, /*unit_offline*/0,
			     /*device_offline*/0, /*self_test*/0,
			     /*page_format*/1, /*self_test_code*/0,
			     buf, FUNC8(&ses_cache->status_page->hdr),
			     SSD_FULL_SIZE, state->timeout);
	}
	return (0);
}