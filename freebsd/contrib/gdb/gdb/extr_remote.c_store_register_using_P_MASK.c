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
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;
struct packet_reg {int /*<<< orphan*/  regnum; int /*<<< orphan*/  pnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_REGISTER_SIZE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC3 () ; 
 struct packet_reg* FUNC4 (struct remote_state*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10 (int regnum)
{
  struct remote_state *rs = FUNC3 ();
  struct packet_reg *reg = FUNC4 (rs, regnum);
  /* Try storing a single register.  */
  char *buf = FUNC1 (rs->remote_packet_size);
  char regp[MAX_REGISTER_SIZE];
  char *p;
  int i;

  FUNC8 (buf, "P%s=", FUNC5 (reg->pnum, 0));
  p = buf + FUNC9 (buf);
  FUNC6 (reg->regnum, regp);
  FUNC2 (regp, p, FUNC0 (reg->regnum));
  FUNC7 (buf, rs->remote_packet_size);

  return buf[0] != '\0';
}