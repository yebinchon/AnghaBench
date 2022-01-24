#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct rpcap_header {int /*<<< orphan*/  plen; int /*<<< orphan*/  value; void* type; void* ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcap_header*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct rpcap_header *header, uint8 ver, uint8 type, uint16 value, uint32 length)
{
	FUNC2(header, 0, sizeof(struct rpcap_header));

	header->ver = ver;
	header->type = type;
	header->value = FUNC1(value);
	header->plen = FUNC0(length);
}