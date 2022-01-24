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
struct section_addr_info {int dummy; } ;
struct safe_symbol_file_add_args {char* name; int from_tty; int mainline; int flags; struct objfile* ret; struct section_addr_info* addrs; void* out; void* err; } ;
struct objfile {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct safe_symbol_file_add_args*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* gdb_stderr ; 
 void* gdb_stdout ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,struct safe_symbol_file_add_args*) ; 
 int /*<<< orphan*/  safe_symbol_file_add_cleanup ; 
 int /*<<< orphan*/  safe_symbol_file_add_stub ; 
 void* FUNC4 () ; 

__attribute__((used)) static struct objfile *
FUNC5 (char *name, int from_tty,
		      struct section_addr_info *addrs,
		      int mainline, int flags)
{
  struct safe_symbol_file_add_args p;
  struct cleanup *cleanup;

  cleanup = FUNC3 (safe_symbol_file_add_cleanup, &p);

  p.err = gdb_stderr;
  p.out = gdb_stdout;
  FUNC2 (gdb_stderr);
  FUNC2 (gdb_stdout);
  gdb_stderr = FUNC4 ();
  gdb_stdout = FUNC4 ();
  p.name = name;
  p.from_tty = from_tty;
  p.addrs = addrs;
  p.mainline = mainline;
  p.flags = flags;
  FUNC0 (safe_symbol_file_add_stub, &p, "", RETURN_MASK_ERROR);

  FUNC1 (cleanup);
  return p.ret;
}