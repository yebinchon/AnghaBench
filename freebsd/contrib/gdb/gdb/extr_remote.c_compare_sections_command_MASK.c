#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
struct TYPE_9__ {TYPE_2__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_10__ {int flags; scalar_t__ lma; struct TYPE_10__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_11__ {char* to_shortname; } ;

/* Variables and functions */
 int SEC_LOAD ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 unsigned long FUNC4 (unsigned char*,scalar_t__,int) ; 
 TYPE_3__ current_target ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 unsigned long FUNC7 (char) ; 
 struct remote_state* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC10 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,long,long) ; 
 scalar_t__ FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC17 (scalar_t__) ; 

__attribute__((used)) static void
FUNC18 (char *args, int from_tty)
{
  struct remote_state *rs = FUNC8 ();
  asection *s;
  unsigned long host_crc, target_crc;
  extern bfd *exec_bfd;
  struct cleanup *old_chain;
  char *tmp;
  char *sectdata;
  const char *sectname;
  char *buf = FUNC0 (rs->remote_packet_size);
  bfd_size_type size;
  bfd_vma lma;
  int matched = 0;
  int mismatched = 0;

  if (!exec_bfd)
    FUNC6 ("command cannot be used without an exec file");
  if (!current_target.to_shortname ||
      FUNC15 (current_target.to_shortname, "remote") != 0)
    FUNC6 ("command can only be used with remote target");

  for (s = exec_bfd->sections; s; s = s->next)
    {
      if (!(s->flags & SEC_LOAD))
	continue;		/* skip non-loadable section */

      size = FUNC3 (s);
      if (size == 0)
	continue;		/* skip zero-length section */

      sectname = FUNC2 (exec_bfd, s);
      if (args && FUNC15 (args, sectname) != 0)
	continue;		/* not the section selected by user */

      matched = 1;		/* do this section */
      lma = s->lma;
      /* FIXME: assumes lma can fit into long */
      FUNC14 (buf, "qCRC:%lx,%lx", (long) lma, (long) size);
      FUNC13 (buf);

      /* be clever; compute the host_crc before waiting for target reply */
      sectdata = FUNC17 (size);
      old_chain = FUNC10 (xfree, sectdata);
      FUNC1 (exec_bfd, s, sectdata, 0, size);
      host_crc = FUNC4 ((unsigned char *) sectdata, size, 0xffffffff);

      FUNC9 (buf, (rs->remote_packet_size), 0);
      if (buf[0] == 'E')
	FUNC6 ("target memory fault, section %s, range 0x%s -- 0x%s",
	       sectname, FUNC11 (lma), FUNC11 (lma + size));
      if (buf[0] != 'C')
	FUNC6 ("remote target does not support this operation");

      for (target_crc = 0, tmp = &buf[1]; *tmp; tmp++)
	target_crc = target_crc * 16 + FUNC7 (*tmp);

      FUNC12 ("Section %s, range 0x%s -- 0x%s: ",
		       sectname, FUNC11 (lma), FUNC11 (lma + size));
      if (host_crc == target_crc)
	FUNC12 ("matched.\n");
      else
	{
	  FUNC12 ("MIS-MATCHED!\n");
	  mismatched++;
	}

      FUNC5 (old_chain);
    }
  if (mismatched > 0)
    FUNC16 ("One or more sections of the remote executable does not match\n\
the loaded file\n");
  if (args && !matched)
    FUNC12 ("No loaded section named '%s'.\n", args);
}