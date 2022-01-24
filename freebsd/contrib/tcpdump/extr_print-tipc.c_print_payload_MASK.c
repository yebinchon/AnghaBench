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
typedef  void* uint32_t ;
typedef  int u_int ;
struct payload_tipc_pkthdr {int /*<<< orphan*/  w2; int /*<<< orphan*/  dest_node; int /*<<< orphan*/  orig_node; int /*<<< orphan*/  dest_port; int /*<<< orphan*/  orig_port; int /*<<< orphan*/  prev_node; int /*<<< orphan*/  w1; int /*<<< orphan*/  w0; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int FUNC7 (void*) ; 
 int FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  tipcmtype_values ; 
 int /*<<< orphan*/  tipcuser_values ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC15(netdissect_options *ndo, const struct payload_tipc_pkthdr *ap)
{
	uint32_t w0, w1, w2;
	u_int user;
	u_int hsize;
	u_int msize;
	u_int mtype;
	u_int broadcast_ack;
	u_int link_ack;
	u_int link_seq;
	u_int prev_node;
	u_int orig_port;
	u_int dest_port;
	u_int orig_node;
	u_int dest_node;

	FUNC2(ap->dest_port);
	w0 = FUNC0(&ap->w0);
	user = FUNC11(w0);
	hsize = FUNC5(w0);
	msize = FUNC8(w0);
	w1 = FUNC0(&ap->w1);
	mtype = FUNC9(w1);
	prev_node = FUNC0(&ap->prev_node);
	orig_port = FUNC0(&ap->orig_port);
	dest_port = FUNC0(&ap->dest_port);
	if (hsize <= 6) {
		FUNC1((ndo, "TIPC v%u.0 %u.%u.%u:%u > %u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s",
		    FUNC12(w0),
		    FUNC13(prev_node), FUNC4(prev_node), FUNC10(prev_node),
		    orig_port, dest_port,
		    hsize*4, msize,
		    FUNC14(tipcuser_values, "unknown", user),
		    FUNC14(tipcmtype_values, "Unknown", mtype)));
	} else {
		FUNC2(ap->dest_node);
		orig_node = FUNC0(&ap->orig_node);
		dest_node = FUNC0(&ap->dest_node);
		FUNC1((ndo, "TIPC v%u.0 %u.%u.%u:%u > %u.%u.%u:%u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s",
		    FUNC12(w0),
		    FUNC13(orig_node), FUNC4(orig_node), FUNC10(orig_node),
		    orig_port,
		    FUNC13(dest_node), FUNC4(dest_node), FUNC10(dest_node),
		    dest_port,
		    hsize*4, msize,
		    FUNC14(tipcuser_values, "unknown", user),
		    FUNC14(tipcmtype_values, "Unknown", mtype)));

		if (ndo->ndo_vflag) {
			broadcast_ack = FUNC3(w1);
			w2 = FUNC0(&ap->w2);
			link_ack = FUNC6(w2);
			link_seq = FUNC7(w2);
			FUNC1((ndo, "\n\tPrevious Node %u.%u.%u, Broadcast Ack %u, Link Ack %u, Link Sequence %u",
			    FUNC13(prev_node), FUNC4(prev_node), FUNC10(prev_node),
			    broadcast_ack, link_ack, link_seq));
		}
	}
	return;

trunc:
	FUNC1((ndo, "%s", tstr));
}