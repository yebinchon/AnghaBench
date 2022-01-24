#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  addrs; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ rr_ns ;
struct TYPE_11__ {int sin6_len; void* sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_10__ {int sin_len; void* sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct TYPE_14__ {TYPE_2__ sin6; TYPE_1__ sin; } ;
struct TYPE_13__ {TYPE_6__ addr; } ;
typedef  TYPE_4__ rr_a ;
typedef  int /*<<< orphan*/  res_state ;
typedef  int /*<<< orphan*/  ns_sect ;
typedef  int /*<<< orphan*/  ns_rr ;
typedef  int /*<<< orphan*/  ns_msg ;
typedef  scalar_t__ ns_class ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMESERVER_PORT ; 
 scalar_t__ NS_INADDRSZ ; 
 int RES_IPV4ONLY ; 
 int RES_IPV6ONLY ; 
 int /*<<< orphan*/  RR_NS_HAVE_V4 ; 
 int /*<<< orphan*/  RR_NS_HAVE_V6 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 TYPE_4__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_o_query ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,char const*) ; 
#define  ns_t_a 129 
#define  ns_t_aaaa 128 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(res_state statp, ns_msg *msg, ns_sect sect,
       const char *owner, ns_class class, int opts,
       rr_ns *nsrr)
{
	int i;

	for (i = 0; i < FUNC8(*msg, sect); i++) {
		ns_rr rr;
		rr_a *arr;

		if (FUNC9(msg, sect, i, &rr) < 0) {
			FUNC1(("save_a: ns_parserr(%s, %d) failed",
				 FUNC16(sect, ns_o_query), i));
			return (-1);
		}
		if ((FUNC14(rr) != ns_t_a &&
		     FUNC14(rr) != ns_t_aaaa) ||
		    FUNC10(rr) != class ||
		    FUNC15(FUNC11(rr), owner) != 1 ||
		    FUNC13(rr) != NS_INADDRSZ)
			continue;
		if ((opts & RES_IPV6ONLY) != 0 && FUNC14(rr) != ns_t_aaaa)
			continue;
		if ((opts & RES_IPV4ONLY) != 0 && FUNC14(rr) != ns_t_a)
			continue;
		arr = FUNC5(sizeof *arr);
		if (arr == NULL) {
			FUNC1(("save_a: malloc failed"));
			return (-1);
		}
		FUNC2(arr, link);
		FUNC7(&arr->addr, 0, sizeof(arr->addr));
		switch (FUNC14(rr)) {
		case ns_t_a:
			arr->addr.sin.sin_family = AF_INET;
#ifdef HAVE_SA_LEN
			arr->addr.sin.sin_len = sizeof(arr->addr.sin);
#endif
			FUNC6(&arr->addr.sin.sin_addr, FUNC12(rr),
			       NS_INADDRSZ);
			arr->addr.sin.sin_port = FUNC4(NAMESERVER_PORT);
			nsrr->flags |= RR_NS_HAVE_V4;
			break;
		case ns_t_aaaa:
			arr->addr.sin6.sin6_family = AF_INET6;
#ifdef HAVE_SA_LEN
			arr->addr.sin6.sin6_len = sizeof(arr->addr.sin6);
#endif
			FUNC6(&arr->addr.sin6.sin6_addr, FUNC12(rr), 16);
			arr->addr.sin6.sin6_port = FUNC4(NAMESERVER_PORT);
			nsrr->flags |= RR_NS_HAVE_V6;
			break;
		default:
			FUNC3();
		}
		FUNC0(nsrr->addrs, arr, link);
	}
	return (0);
}