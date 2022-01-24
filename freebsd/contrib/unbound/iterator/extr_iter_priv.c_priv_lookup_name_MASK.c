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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iter_priv {int /*<<< orphan*/  n; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  decomp ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC4(struct iter_priv* priv, sldns_buffer* pkt,
	uint8_t* name, size_t name_len, uint16_t dclass)
{
	size_t len;
	uint8_t decomp[256];
	int labs;
	if(name_len >= sizeof(decomp))
		return 0;
	FUNC1(pkt, decomp, name);
	labs = FUNC0(decomp, &len);
	FUNC2(name_len == len);
	return FUNC3(&priv->n, decomp, len, labs, dclass) != NULL;
}