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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/  const*) ; 
 int FUNC18 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static ldns_status
FUNC20(ldns_buffer *buffer, const ldns_pkt *packet)
{
	uint8_t flags;
	uint16_t arcount;

	if (FUNC0(buffer, 12)) {
		FUNC2(buffer, FUNC12(packet));
		
		flags = FUNC15(packet) << 7
		        | FUNC10(packet) << 3
		        | FUNC4(packet) << 2
		        | FUNC18(packet) << 1 | FUNC17(packet);
		FUNC3(buffer, flags);
		
		flags = FUNC16(packet) << 7
		        /*| ldns_pkt_z(packet) << 6*/
		        | FUNC5(packet) << 5
		        | FUNC8(packet) << 4
			| FUNC11(packet);
		FUNC3(buffer, flags);
		
		FUNC2(buffer, FUNC14(packet));
		FUNC2(buffer, FUNC6(packet));
		FUNC2(buffer, FUNC13(packet));
		/* add EDNS0 and TSIG to additional if they are there */
		arcount = FUNC7(packet);
		if (FUNC19(packet)) {
			arcount++;
		}
		if (FUNC9(packet)) {
			arcount++;
		}
		FUNC2(buffer, arcount);
	}
	
	return FUNC1(buffer);
}