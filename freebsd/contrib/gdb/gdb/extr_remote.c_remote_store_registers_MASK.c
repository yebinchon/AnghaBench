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
struct remote_state {int /*<<< orphan*/  remote_packet_size; struct packet_reg* regs; int /*<<< orphan*/  sizeof_g_packet; } ;
struct packet_reg {int offset; int /*<<< orphan*/  regnum; scalar_t__ in_g_packet; } ;
struct TYPE_2__ {int support; } ;

/* Variables and functions */
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
#define  PACKET_DISABLE 130 
#define  PACKET_ENABLE 129 
#define  PACKET_SUPPORT_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct remote_state* FUNC4 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  register_bytes_found ; 
 TYPE_1__ remote_protocol_P ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10 (int regnum)
{
  struct remote_state *rs = FUNC4 ();
  char *buf;
  char *regs;
  int i;
  char *p;

  FUNC8 (FUNC0 (inferior_ptid), 1);

  if (regnum >= 0)
    {
      switch (remote_protocol_P.support)
	{
	case PACKET_DISABLE:
	  break;
	case PACKET_ENABLE:
	  if (FUNC9 (regnum))
	    return;
	  else
	    FUNC3 ("Protocol error: P packet not recognized by stub");
	case PACKET_SUPPORT_UNKNOWN:
	  if (FUNC9 (regnum))
	    {
	      /* The stub recognized the 'P' packet.  Remember this.  */
	      remote_protocol_P.support = PACKET_ENABLE;
	      return;
	    }
	  else
	    {
	      /* The stub does not support the 'P' packet.  Use 'G'
	         instead, and don't try using 'P' in the future (it
	         will just waste our time).  */
	      remote_protocol_P.support = PACKET_DISABLE;
	      break;
	    }
	}
    }

  /* Extract all the registers in the regcache copying them into a
     local buffer.  */
  {
    int i;
    regs = FUNC1 (rs->sizeof_g_packet);
    FUNC5 (regs, 0, rs->sizeof_g_packet);
    for (i = 0; i < NUM_REGS + NUM_PSEUDO_REGS; i++)
      {
	struct packet_reg *r = &rs->regs[i];
	if (r->in_g_packet)
	  FUNC6 (r->regnum, regs + r->offset);
      }
  }

  /* Command describes registers byte by byte,
     each byte encoded as two hex characters.  */
  buf = FUNC1 (rs->remote_packet_size);
  p = buf;
  *p++ = 'G';
  /* remote_prepare_to_store insures that register_bytes_found gets set.  */
  FUNC2 (regs, p, register_bytes_found);
  FUNC7 (buf, (rs->remote_packet_size));
}