#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct TYPE_3__ {scalar_t__ support; } ;

/* Variables and functions */
 scalar_t__ PACKET_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*,int) ; 
 struct minimal_symbol* FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__ remote_protocol_qSymbol ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,...) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC12 (struct objfile *objfile)
{
  struct remote_state *rs = FUNC2 ();
  char *msg, *reply, *tmp;
  struct minimal_symbol *sym;
  int end;

  if (remote_protocol_qSymbol.support == PACKET_DISABLE)
    return;

  msg   = FUNC1 (rs->remote_packet_size);
  reply = FUNC1 (rs->remote_packet_size);

  /* Invite target to request symbol lookups. */

  FUNC8 ("qSymbol::");
  FUNC3 (reply, (rs->remote_packet_size), 0);
  FUNC6 (reply, &remote_protocol_qSymbol);

  while (FUNC11 (reply, "qSymbol:", 8) == 0)
    {
      tmp = &reply[8];
      end = FUNC4 (tmp, msg, FUNC10 (tmp) / 2);
      msg[end] = '\0';
      sym = FUNC5 (msg, NULL, NULL);
      if (sym == NULL)
	FUNC9 (msg, "qSymbol::%s", &reply[8]);
      else
	FUNC9 (msg, "qSymbol:%s:%s",
		 FUNC7 (FUNC0 (sym)),
		 &reply[8]);
      FUNC8 (msg);
      FUNC3 (reply, (rs->remote_packet_size), 0);
    }
}