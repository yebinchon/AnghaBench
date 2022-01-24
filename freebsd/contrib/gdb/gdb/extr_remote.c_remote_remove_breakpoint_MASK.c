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
struct TYPE_2__ {scalar_t__ support; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int*) ; 
 scalar_t__ PACKET_DISABLE ; 
 size_t Z_PACKET_SOFTWARE_BP ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_1__* remote_protocol_Z ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (scalar_t__,char*,int) ; 

__attribute__((used)) static int
FUNC10 (CORE_ADDR addr, char *contents_cache)
{
  struct remote_state *rs = FUNC2 ();
  int bp_size;

  if (remote_protocol_Z[Z_PACKET_SOFTWARE_BP].support != PACKET_DISABLE)
    {
      char *buf = FUNC1 (rs->remote_packet_size);
      char *p = buf;

      *(p++) = 'z';
      *(p++) = '0';
      *(p++) = ',';

      addr = FUNC7 (addr);
      p += FUNC4 (p, (ULONGEST) addr);
      FUNC0 (&addr, &bp_size);
      FUNC8 (p, ",%d", bp_size);

      FUNC6 (buf);
      FUNC3 (buf, (rs->remote_packet_size), 0);

      return (buf[0] == 'E');
    }

#ifdef DEPRECATED_REMOTE_BREAKPOINT
  return target_write_memory (addr, contents_cache, sizeof big_break_insn);
#else
  return FUNC5 (addr, contents_cache);
#endif /* DEPRECATED_REMOTE_BREAKPOINT */
}