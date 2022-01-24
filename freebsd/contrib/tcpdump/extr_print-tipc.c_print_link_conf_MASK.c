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
struct link_conf_tipc_pkthdr {int /*<<< orphan*/  w5; int /*<<< orphan*/  ntwrk_id; int /*<<< orphan*/  prev_node; int /*<<< orphan*/  dest_domain; int /*<<< orphan*/  w1; int /*<<< orphan*/  w0; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (void*) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  tipc_linkconf_mtype_values ; 
 int /*<<< orphan*/  tipcuser_values ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC14(netdissect_options *ndo, const struct link_conf_tipc_pkthdr *ap)
{
	uint32_t w0, w1, w5;
	u_int user;
	u_int hsize;
	u_int msize;
	u_int mtype;
	u_int node_sig;
	u_int prev_node;
	u_int dest_domain;
	u_int ntwrk_id;
	u_int media_id;

	FUNC2(ap->prev_node);
	w0 = FUNC0(&ap->w0);
	user = FUNC10(w0);
	hsize = FUNC4(w0);
	msize = FUNC6(w0);
	w1 = FUNC0(&ap->w1);
	mtype = FUNC7(w1);
	dest_domain = FUNC0(&ap->dest_domain);
	prev_node = FUNC0(&ap->prev_node);

	FUNC1((ndo, "TIPC v%u.0 %u.%u.%u > %u.%u.%u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s",
	    FUNC11(w0),
	    FUNC12(prev_node), FUNC3(prev_node), FUNC8(prev_node),
	    FUNC12(dest_domain), FUNC3(dest_domain), FUNC8(dest_domain),
	    hsize*4, msize,
	    FUNC13(tipcuser_values, "unknown", user),
	    FUNC13(tipc_linkconf_mtype_values, "Unknown", mtype)));
	if (ndo->ndo_vflag) {
		FUNC2(ap->w5);
		node_sig = FUNC9(w1);
		ntwrk_id = FUNC0(&ap->ntwrk_id);
		w5 = FUNC0(&ap->w5);
		media_id = FUNC5(w5);
		FUNC1((ndo, "\n\tNodeSignature %u, network_id %u, media_id %u",
		    node_sig, ntwrk_id, media_id));
	}
	return;

trunc:
	FUNC1((ndo, "%s", tstr));
}