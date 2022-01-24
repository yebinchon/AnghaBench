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
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;
typedef  int /*<<< orphan*/  ULONGEST ;
struct TYPE_2__ {int support; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
#define  PACKET_DISABLE 130 
#define  PACKET_ENABLE 129 
#define  PACKET_SUPPORT_UNKNOWN 128 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 struct remote_state* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  remote_debug ; 
 TYPE_1__ remote_protocol_binary_download ; 

__attribute__((used)) static void
FUNC6 (CORE_ADDR addr)
{
  struct remote_state *rs = FUNC2 ();
  switch (remote_protocol_binary_download.support)
    {
    case PACKET_DISABLE:
      break;
    case PACKET_ENABLE:
      break;
    case PACKET_SUPPORT_UNKNOWN:
      {
	char *buf = FUNC0 (rs->remote_packet_size);
	char *p;

	p = buf;
	*p++ = 'X';
	p += FUNC4 (p, (ULONGEST) addr);
	*p++ = ',';
	p += FUNC4 (p, (ULONGEST) 0);
	*p++ = ':';
	*p = '\0';

	FUNC5 (buf, (int) (p - buf));
	FUNC3 (buf, (rs->remote_packet_size), 0);

	if (buf[0] == '\0')
	  {
	    if (remote_debug)
	      FUNC1 (gdb_stdlog,
				  "binary downloading NOT suppported by target\n");
	    remote_protocol_binary_download.support = PACKET_DISABLE;
	  }
	else
	  {
	    if (remote_debug)
	      FUNC1 (gdb_stdlog,
				  "binary downloading suppported by target\n");
	    remote_protocol_binary_download.support = PACKET_ENABLE;
	  }
	break;
      }
    }
}