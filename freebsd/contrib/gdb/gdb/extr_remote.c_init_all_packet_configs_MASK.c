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

/* Variables and functions */
 int NR_Z_PACKET_TYPES ; 
 int /*<<< orphan*/  remote_protocol_E ; 
 int /*<<< orphan*/  remote_protocol_P ; 
 int /*<<< orphan*/ * remote_protocol_Z ; 
 int /*<<< orphan*/  remote_protocol_binary_download ; 
 int /*<<< orphan*/  remote_protocol_e ; 
 int /*<<< orphan*/  remote_protocol_qPart_auxv ; 
 int /*<<< orphan*/  remote_protocol_qPart_dirty ; 
 int /*<<< orphan*/  remote_protocol_qSymbol ; 
 int /*<<< orphan*/  remote_protocol_vcont ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  int i;
  FUNC0 (&remote_protocol_e);
  FUNC0 (&remote_protocol_E);
  FUNC0 (&remote_protocol_P);
  FUNC0 (&remote_protocol_qSymbol);
  FUNC0 (&remote_protocol_vcont);
  for (i = 0; i < NR_Z_PACKET_TYPES; i++)
    FUNC0 (&remote_protocol_Z[i]);
  /* Force remote_write_bytes to check whether target supports binary
     downloading. */
  FUNC0 (&remote_protocol_binary_download);
  FUNC0 (&remote_protocol_qPart_auxv);
  FUNC0 (&remote_protocol_qPart_dirty);
}