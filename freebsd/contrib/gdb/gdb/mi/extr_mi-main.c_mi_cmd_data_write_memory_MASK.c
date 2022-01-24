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
struct mi_opt {char* member_0; int member_1; int member_2; } ;
struct cleanup {int dummy; } ;
typedef  enum opt { ____Placeholder_opt } opt ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef  void* LONGEST ;
typedef  long CORE_ADDR ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int MI_CMD_ERROR ; 
 long FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  mi_error_message ; 
 int FUNC3 (char*,int,char**,struct mi_opt*,int*,char**) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,long,void*) ; 
 int /*<<< orphan*/  FUNC6 (long,void*,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  xfree ; 
 void* FUNC8 (long) ; 

enum mi_cmd_result
FUNC9 (char *command, char **argv, int argc)
{
  CORE_ADDR addr;
  char word_format;
  long word_size;
  /* FIXME: ezannoni 2000-02-17 LONGEST could possibly not be big
     enough when using a compiler other than GCC. */
  LONGEST value;
  void *buffer;
  struct cleanup *old_chain;
  long offset = 0;
  int optind = 0;
  char *optarg;
  enum opt
    {
      OFFSET_OPT
    };
  static struct mi_opt opts[] =
  {
    {"o", OFFSET_OPT, 1},
    0
  };

  while (1)
    {
      int opt = FUNC3 ("mi_cmd_data_write_memory", argc, argv, opts,
			   &optind, &optarg);
      if (opt < 0)
	break;
      switch ((enum opt) opt)
	{
	case OFFSET_OPT:
	  offset = FUNC0 (optarg);
	  break;
	}
    }
  argv += optind;
  argc -= optind;

  if (argc != 4)
    {
      FUNC7 (&mi_error_message,
		 "mi_cmd_data_write_memory: Usage: [-o COLUMN_OFFSET] ADDR FORMAT WORD-SIZE VALUE.");
      return MI_CMD_ERROR;
    }

  /* Extract all the arguments. */
  /* Start address of the memory dump. */
  addr = FUNC4 (argv[0]);
  /* The format character to use when displaying a memory word. See
     the ``x'' command. */
  word_format = argv[1][0];
  /* The size of the memory word. */
  word_size = FUNC0 (argv[2]);

  /* Calculate the real address of the write destination. */
  addr += (offset * word_size);

  /* Get the value as a number */
  value = FUNC4 (argv[3]);
  /* Get the value into an array */
  buffer = FUNC8 (word_size);
  old_chain = FUNC2 (xfree, buffer);
  FUNC5 (buffer, word_size, value);
  /* Write it down to memory */
  FUNC6 (addr, buffer, word_size);
  /* Free the buffer.  */
  FUNC1 (old_chain);

  return MI_CMD_DONE;
}