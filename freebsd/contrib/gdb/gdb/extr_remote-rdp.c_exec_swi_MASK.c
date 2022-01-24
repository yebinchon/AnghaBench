#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int n; char* s; } ;
typedef  TYPE_1__ argsin ;
struct TYPE_22__ {char (* system ) (TYPE_2__*,char*) ;char (* get_errno ) (TYPE_2__*) ;char (* time ) (TYPE_2__*,int /*<<< orphan*/ *) ;int (* unlink ) (TYPE_2__*,char*) ;int (* rename ) (TYPE_2__*,char*,char*) ;int (* open ) (TYPE_2__*,char*,int) ;int (* close ) (TYPE_2__*,int) ;int (* write ) (TYPE_2__*,int,char*,int) ;int (* read ) (TYPE_2__*,int,char*,int) ;long (* lseek ) (TYPE_2__*,int,long,int /*<<< orphan*/ ) ;int (* isatty ) (TYPE_2__*,int) ;int /*<<< orphan*/  (* read_stdin ) (TYPE_2__*,char*,int) ;int /*<<< orphan*/  (* write_stdout ) (TYPE_2__*,char*,int) ;} ;

/* Variables and functions */
 int CLOCKS_PER_SEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
#define  SWI_CLI 144 
#define  SWI_Clock 143 
#define  SWI_Close 142 
#define  SWI_Flen 141 
#define  SWI_GetEnv 140 
#define  SWI_GetErrno 139 
#define  SWI_IsTTY 138 
#define  SWI_Open 137 
#define  SWI_Read 136 
#define  SWI_ReadC 135 
#define  SWI_Remove 134 
#define  SWI_Rename 133 
#define  SWI_Seek 132 
#define  SWI_Time 131 
#define  SWI_Write 130 
#define  SWI_Write0 129 
#define  SWI_WriteC 128 
 char* FUNC0 (int) ; 
 TYPE_2__* callback ; 
 int FUNC1 () ; 
 char* commandline ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*,int,char*,int) ; 
 int FUNC8 (TYPE_2__*,int,char*,int) ; 
 long FUNC9 (TYPE_2__*,int,long,int /*<<< orphan*/ ) ; 
 long FUNC10 (TYPE_2__*,int,long,int /*<<< orphan*/ ) ; 
 long FUNC11 (TYPE_2__*,int,long,int /*<<< orphan*/ ) ; 
 long FUNC12 (TYPE_2__*,int,long,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*,int) ; 
 char FUNC16 (TYPE_2__*,char*) ; 
 char FUNC17 (TYPE_2__*) ; 
 char FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_2__*,char*) ; 
 int FUNC20 (TYPE_2__*,char*,char*) ; 
 int FUNC21 (TYPE_2__*,char*,int) ; 
 int* translate_open_mode ; 

__attribute__((used)) static int
FUNC22 (int swi, argsin *args)
{
  int i;
  char c;
  switch (swi)
    {
    case SWI_WriteC:
      callback->write_stdout (callback, &c, 1);
      return 0;
    case SWI_Write0:
      for (i = 0; i < args->n; i++)
	callback->write_stdout (callback, args->s, FUNC4 (args->s));
      return 0;
    case SWI_ReadC:
      callback->read_stdin (callback, &c, 1);
      args->n = c;
      return 1;
    case SWI_CLI:
      args->n = callback->system (callback, args->s);
      return 1;
    case SWI_GetErrno:
      args->n = callback->get_errno (callback);
      return 1;
    case SWI_Time:
      args->n = callback->time (callback, NULL);
      return 1;

    case SWI_Clock:
      /* return number of centi-seconds... */
      args->n =
#ifdef CLOCKS_PER_SEC
	(CLOCKS_PER_SEC >= 100)
	? (clock () / (CLOCKS_PER_SEC / 100))
	: ((clock () * 100) / CLOCKS_PER_SEC);
#else
      /* presume unix... clock() returns microseconds */
	FUNC1 () / 10000;
#endif
      return 1;

    case SWI_Remove:
      args->n = callback->unlink (callback, args->s);
      return 1;
    case SWI_Rename:
      args->n = callback->rename (callback, args[0].s, args[1].s);
      return 1;

    case SWI_Open:
      /* Now we need to decode the Demon open mode */
      i = translate_open_mode[args[1].n];

      /* Filename ":tt" is special: it denotes stdin/out */
      if (FUNC3 (args->s, ":tt") == 0)
	{
	  if (i == O_RDONLY)	/* opening tty "r" */
	    args->n = 0 /* stdin */ ;
	  else
	    args->n = 1 /* stdout */ ;
	}
      else
	args->n = callback->open (callback, args->s, i);
      return 1;

    case SWI_Close:
      args->n = callback->close (callback, args->n);
      return 1;

    case SWI_Write:
      /* Return the number of bytes *not* written */
      args->n = args[1].n -
	callback->write (callback, args[0].n, args[1].s, args[1].n);
      return 1;

    case SWI_Read:
      {
	char *copy = FUNC0 (args[2].n);
	int done = callback->read (callback, args[0].n, copy, args[2].n);
	if (done > 0)
	  FUNC2 (args[1].n, copy, done, 1, 0, 0);
	args->n = args[2].n - done;
	return 1;
      }

    case SWI_Seek:
      /* Return non-zero on failure */
      args->n = callback->lseek (callback, args[0].n, args[1].n, 0) < 0;
      return 1;

    case SWI_Flen:
      {
	long old = callback->lseek (callback, args->n, 0, SEEK_CUR);
	args->n = callback->lseek (callback, args->n, 0, SEEK_END);
	callback->lseek (callback, args->n, old, 0);
	return 1;
      }

    case SWI_IsTTY:
      args->n = callback->isatty (callback, args->n);
      return 1;

    case SWI_GetEnv:
      if (commandline != NULL)
	{
	  int len = FUNC4 (commandline);
	  if (len > 255)
	    {
	      len = 255;
	      commandline[255] = '\0';
	    }
	  FUNC2 (args[0].n,
					   commandline, len + 1, 1, 0, 0);
	}
      else
	FUNC2 (args[0].n, "", 1, 1, 0, 0);
      return 1;

    default:
      return 0;
    }
}