#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hfsc_opts_v1 {int flags; scalar_t__ rtsc_m2; scalar_t__ ulsc_m2; scalar_t__ lssc_m2; scalar_t__ lssc_d; scalar_t__ rtsc_d; scalar_t__ ulsc_d; int /*<<< orphan*/  ulsc_m1; int /*<<< orphan*/  lssc_m1; int /*<<< orphan*/  rtsc_m1; } ;
struct TYPE_4__ {struct hfsc_opts_v1 hfsc_opts; } ;
struct pf_altq {scalar_t__ bandwidth; TYPE_1__ pq_u; } ;
struct node_hfsc_sc {int dummy; } ;
struct TYPE_5__ {struct node_hfsc_sc upperlimit; struct node_hfsc_sc linkshare; struct node_hfsc_sc realtime; } ;
struct TYPE_6__ {TYPE_2__ hfsc_opts; } ;
struct node_queue_opt {TYPE_3__ data; } ;

/* Variables and functions */
 int HFCF_CLEARDSCP ; 
 int HFCF_CODEL ; 
 int HFCF_DEFAULTCLASS ; 
 int HFCF_ECN ; 
 int HFCF_RED ; 
 int HFCF_RIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct node_hfsc_sc const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(const struct pf_altq *a, const struct node_queue_opt *qopts)
{
	const struct hfsc_opts_v1	*opts;
	const struct node_hfsc_sc	*rtsc, *lssc, *ulsc;

	opts = &a->pq_u.hfsc_opts;
	if (qopts == NULL)
		rtsc = lssc = ulsc = NULL;
	else {
		rtsc = &qopts->data.hfsc_opts.realtime;
		lssc = &qopts->data.hfsc_opts.linkshare;
		ulsc = &qopts->data.hfsc_opts.upperlimit;
	}

	if (opts->flags || opts->rtsc_m2 != 0 || opts->ulsc_m2 != 0 ||
	    (opts->lssc_m2 != 0 && (opts->lssc_m2 != a->bandwidth ||
	    opts->lssc_d != 0))) {
		FUNC1("hfsc(");
		if (opts->flags & HFCF_RED)
			FUNC1(" red");
		if (opts->flags & HFCF_ECN)
			FUNC1(" ecn");
		if (opts->flags & HFCF_RIO)
			FUNC1(" rio");
		if (opts->flags & HFCF_CODEL)
			FUNC1(" codel");
		if (opts->flags & HFCF_CLEARDSCP)
			FUNC1(" cleardscp");
		if (opts->flags & HFCF_DEFAULTCLASS)
			FUNC1(" default");
		if (opts->rtsc_m2 != 0)
			FUNC0("realtime", opts->rtsc_m1, opts->rtsc_d,
			    opts->rtsc_m2, rtsc);
		if (opts->lssc_m2 != 0 && (opts->lssc_m2 != a->bandwidth ||
		    opts->lssc_d != 0))
			FUNC0("linkshare", opts->lssc_m1, opts->lssc_d,
			    opts->lssc_m2, lssc);
		if (opts->ulsc_m2 != 0)
			FUNC0("upperlimit", opts->ulsc_m1, opts->ulsc_d,
			    opts->ulsc_m2, ulsc);
		FUNC1(" ) ");

		return (1);
	} else
		return (0);
}