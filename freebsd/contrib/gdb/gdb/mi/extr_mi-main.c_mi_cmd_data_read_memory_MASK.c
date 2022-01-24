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
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct type {int dummy; } ;
struct mi_opt {char* member_0; int member_1; int member_2; } ;
struct cleanup {int dummy; } ;
typedef  enum opt { ____Placeholder_opt } opt ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int MI_CMD_ERROR ; 
 long FUNC0 (char*) ; 
 struct type* builtin_type_int16 ; 
 struct type* builtin_type_int32 ; 
 struct type* builtin_type_int64 ; 
 struct type* builtin_type_int8 ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mi_error_message ; 
 int FUNC6 (char*,int,char**,struct mi_opt*,int*,char**) ; 
 int /*<<< orphan*/  null_cleanup ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct type*,char,char,int /*<<< orphan*/ ) ; 
 long FUNC9 (scalar_t__,char*,long,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct ui_stream*) ; 
 struct ui_stream* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC18 (long,int) ; 
 int /*<<< orphan*/  xfree ; 

enum mi_cmd_result
FUNC19 (char *command, char **argv, int argc)
{
  struct cleanup *cleanups = FUNC3 (null_cleanup, NULL);
  CORE_ADDR addr;
  long total_bytes;
  long nr_cols;
  long nr_rows;
  char word_format;
  struct type *word_type;
  long word_size;
  char word_asize;
  char aschar;
  char *mbuf;
  int nr_bytes;
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
      int opt = FUNC6 ("mi_cmd_data_read_memory", argc, argv, opts,
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

  if (argc < 5 || argc > 6)
    {
      FUNC17 (&mi_error_message,
		 "mi_cmd_data_read_memory: Usage: ADDR WORD-FORMAT WORD-SIZE NR-ROWS NR-COLS [ASCHAR].");
      return MI_CMD_ERROR;
    }

  /* Extract all the arguments. */

  /* Start address of the memory dump. */
  addr = FUNC7 (argv[0]) + offset;
  /* The format character to use when displaying a memory word. See
     the ``x'' command. */
  word_format = argv[1][0];
  /* The size of the memory word. */
  word_size = FUNC0 (argv[2]);
  switch (word_size)
    {
    case 1:
      word_type = builtin_type_int8;
      word_asize = 'b';
      break;
    case 2:
      word_type = builtin_type_int16;
      word_asize = 'h';
      break;
    case 4:
      word_type = builtin_type_int32;
      word_asize = 'w';
      break;
    case 8:
      word_type = builtin_type_int64;
      word_asize = 'g';
      break;
    default:
      word_type = builtin_type_int8;
      word_asize = 'b';
    }
  /* The number of rows */
  nr_rows = FUNC0 (argv[3]);
  if (nr_rows <= 0)
    {
      FUNC17 (&mi_error_message,
		 "mi_cmd_data_read_memory: invalid number of rows.");
      return MI_CMD_ERROR;
    }
  /* number of bytes per row. */
  nr_cols = FUNC0 (argv[4]);
  if (nr_cols <= 0)
    {
      FUNC17 (&mi_error_message,
		 "mi_cmd_data_read_memory: invalid number of columns.");
    }
  /* The un-printable character when printing ascii. */
  if (argc == 6)
    aschar = *argv[5];
  else
    aschar = 0;

  /* create a buffer and read it in. */
  total_bytes = word_size * nr_rows * nr_cols;
  mbuf = FUNC18 (total_bytes, 1);
  FUNC3 (xfree, mbuf);
  if (mbuf == NULL)
    {
      FUNC17 (&mi_error_message,
		 "mi_cmd_data_read_memory: out of memory.");
      return MI_CMD_ERROR;
    }
  nr_bytes = 0;
  while (nr_bytes < total_bytes)
    {
      int error;
      long num = FUNC9 (addr + nr_bytes, mbuf + nr_bytes,
					     total_bytes - nr_bytes,
					     &error);
      if (num <= 0)
	break;
      nr_bytes += num;
    }

  /* output the header information. */
  FUNC11 (uiout, "addr", addr);
  FUNC12 (uiout, "nr-bytes", nr_bytes);
  FUNC12 (uiout, "total-bytes", total_bytes);
  FUNC11 (uiout, "next-row", addr + word_size * nr_cols);
  FUNC11 (uiout, "prev-row", addr - word_size * nr_cols);
  FUNC11 (uiout, "next-page", addr + total_bytes);
  FUNC11 (uiout, "prev-page", addr - total_bytes);

  /* Build the result as a two dimentional table. */
  {
    struct ui_stream *stream = FUNC16 (uiout);
    struct cleanup *cleanup_list_memory;
    int row;
    int row_byte;
    cleanup_list_memory = FUNC4 (uiout, "memory");
    for (row = 0, row_byte = 0;
	 row < nr_rows;
	 row++, row_byte += nr_cols * word_size)
      {
	int col;
	int col_byte;
	struct cleanup *cleanup_tuple;
	struct cleanup *cleanup_list_data;
	cleanup_tuple = FUNC5 (uiout, NULL);
	FUNC11 (uiout, "addr", addr + row_byte);
	/* ui_out_field_core_addr_symbolic (uiout, "saddr", addr + row_byte); */
	cleanup_list_data = FUNC4 (uiout, "data");
	for (col = 0, col_byte = row_byte;
	     col < nr_cols;
	     col++, col_byte += word_size)
	  {
	    if (col_byte + word_size > nr_bytes)
	      {
		FUNC14 (uiout, NULL, "N/A");
	      }
	    else
	      {
		FUNC10 (stream->stream);
		FUNC8 (mbuf + col_byte, word_type, word_format,
					word_asize, stream->stream);
		FUNC13 (uiout, NULL, stream);
	      }
	  }
	FUNC1 (cleanup_list_data);
	if (aschar)
	  {
	    int byte;
	    FUNC10 (stream->stream);
	    for (byte = row_byte; byte < row_byte + word_size * nr_cols; byte++)
	      {
		if (byte >= nr_bytes)
		  {
		    FUNC2 ('X', stream->stream);
		  }
		else if (mbuf[byte] < 32 || mbuf[byte] > 126)
		  {
		    FUNC2 (aschar, stream->stream);
		  }
		else
		  FUNC2 (mbuf[byte], stream->stream);
	      }
	    FUNC13 (uiout, "ascii", stream);
	  }
	FUNC1 (cleanup_tuple);
      }
    FUNC15 (stream);
    FUNC1 (cleanup_list_memory);
  }
  FUNC1 (cleanups);
  return MI_CMD_DONE;
}