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
struct comm_reply {int /*<<< orphan*/  max_udp_size; TYPE_1__* c; int /*<<< orphan*/  nmkey; int /*<<< orphan*/  client_nonce; int /*<<< orphan*/  dnsc_cert; int /*<<< orphan*/  is_dnscrypted; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  dnscrypt_buffer; int /*<<< orphan*/  buffer; int /*<<< orphan*/  dnscrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct comm_reply*) ; 
 scalar_t__ comm_udp ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int
FUNC4(struct comm_reply *repinfo)
{
    if(!repinfo->c->dnscrypt) {
        return 1;
    }
    FUNC2(repinfo->c->dnscrypt_buffer, repinfo->c->buffer);
    if(!repinfo->is_dnscrypted) {
        return 1;
    }
	if(FUNC1(repinfo->dnsc_cert,
                             repinfo->client_nonce,
                             repinfo->nmkey,
                             repinfo->c->dnscrypt_buffer,
                             repinfo->c->type == comm_udp,
                             repinfo->max_udp_size) != 0){
		FUNC3(VERB_ALGO, "dnscrypt: Failed to curve cached missed answer");
		FUNC0(repinfo);
		return 0;
	}
    return 1;
}