#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum exit_status_type { ____Placeholder_exit_status_type } exit_status_type ;
struct TYPE_4__ {int arg_count; char** arg_names; int /*<<< orphan*/  files_file; int /*<<< orphan*/ * files_name; } ;
typedef  TYPE_1__ args_info ;

/* Variables and functions */
 int E_ERROR ; 
 int E_SUCCESS ; 
 int E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MODE_COMPRESS ; 
 scalar_t__ MODE_LIST ; 
 int /*<<< orphan*/  PACKAGE ; 
 scalar_t__ V_SILENT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,char**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void FUNC8 (char const*) ; 
 int exit_status ; 
 int /*<<< orphan*/  exit_status_cs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 void FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 scalar_t__ no_warn ; 
 scalar_t__ opt_mode ; 
 scalar_t__ opt_robot ; 
 scalar_t__ opt_stdout ; 
 char* FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/ * stdin_filename ; 
 scalar_t__ FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char**) ; 
 int /*<<< orphan*/  user_abort ; 

int
FUNC30(int argc, char **argv)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	InitializeCriticalSection(&exit_status_cs);
#endif

	// Set up the progname variable.
	FUNC29(argv);

	// Initialize the file I/O. This makes sure that
	// stdin, stdout, and stderr are something valid.
	FUNC12();

	// Set up the locale and message translations.
	FUNC28(PACKAGE, LOCALEDIR);

	// Initialize handling of error/warning/other messages.
	FUNC19();

	// Set hardware-dependent default values. These can be overriden
	// on the command line, thus this must be done before args_parse().
	FUNC10();

	// Parse the command line arguments and get an array of filenames.
	// This doesn't return if something is wrong with the command line
	// arguments. If there are no arguments, one filename ("-") is still
	// returned to indicate stdin.
	args_info args;
	FUNC5(&args, argc, argv);

	if (opt_mode != MODE_LIST && opt_robot)
		FUNC18(FUNC3("Compression and decompression with --robot "
			"are not supported yet."));

	// Tell the message handling code how many input files there are if
	// we know it. This way the progress indicator can show it.
	if (args.files_name != NULL)
		FUNC20(0);
	else
		FUNC20(args.arg_count);

	// Refuse to write compressed data to standard output if it is
	// a terminal.
	if (opt_mode == MODE_COMPRESS) {
		if (opt_stdout || (args.arg_count == 1
				&& FUNC26(args.arg_names[0], "-") == 0)) {
			if (FUNC14()) {
				FUNC21();
				FUNC27(E_ERROR, E_ERROR, false);
			}
		}
	}

	// Set up the signal handlers. We don't need these before we
	// start the actual action and not in --list mode, so this is
	// done after parsing the command line arguments.
	//
	// It's good to keep signal handlers in normal compression and
	// decompression modes even when only writing to stdout, because
	// we might need to restore O_APPEND flag on stdout before exiting.
	// In --test mode, signal handlers aren't really needed, but let's
	// keep them there for consistency with normal decompression.
	if (opt_mode != MODE_LIST)
		FUNC25();

#ifdef ENABLE_SANDBOX
	// Set a flag that sandboxing is allowed if all these are true:
	//   - --files or --files0 wasn't used.
	//   - There is exactly one input file or we are reading from stdin.
	//   - We won't create any files: output goes to stdout or --test
	//     or --list was used. Note that --test implies opt_stdout = true
	//     but --list doesn't.
	//
	// This is obviously not ideal but it was easy to implement and
	// it covers the most common use cases.
	//
	// TODO: Make sandboxing work for other situations too.
	if (args.files_name == NULL && args.arg_count == 1
			&& (opt_stdout || strcmp("-", args.arg_names[0]) == 0
				|| opt_mode == MODE_LIST))
		io_allow_sandbox();
#endif

	// coder_run() handles compression, decompression, and testing.
	// list_file() is for --list.
	void (*run)(const char *filename) = &coder_run;
#ifdef HAVE_DECODERS
	if (opt_mode == MODE_LIST)
		run = &list_file;
#endif

	// Process the files given on the command line. Note that if no names
	// were given, args_parse() gave us a fake "-" filename.
	for (unsigned i = 0; i < args.arg_count && !user_abort; ++i) {
		if (FUNC26("-", args.arg_names[i]) == 0) {
			// Processing from stdin to stdout. Check that we
			// aren't writing compressed data to a terminal or
			// reading it from a terminal.
			if (opt_mode == MODE_COMPRESS) {
				if (FUNC14())
					continue;
			} else if (FUNC13()) {
				continue;
			}

			// It doesn't make sense to compress data from stdin
			// if we are supposed to read filenames from stdin
			// too (enabled with --files or --files0).
			if (args.files_name == stdin_filename) {
				FUNC17(FUNC3("Cannot read data from "
						"standard input when "
						"reading filenames "
						"from standard input"));
				continue;
			}

			// Replace the "-" with a special pointer, which is
			// recognized by coder_run() and other things.
			// This way error messages get a proper filename
			// string and the code still knows that it is
			// handling the special case of stdin.
			args.arg_names[i] = (char *)stdin_filename;
		}

		// Do the actual compression or decompression.
		run(args.arg_names[i]);
	}

	// If --files or --files0 was used, process the filenames from the
	// given file or stdin. Note that here we don't consider "-" to
	// indicate stdin like we do with the command line arguments.
	if (args.files_name != NULL) {
		// read_name() checks for user_abort so we don't need to
		// check it as loop termination condition.
		while (true) {
			const char *name = FUNC23(&args);
			if (name == NULL)
				break;

			// read_name() doesn't return empty names.
			FUNC6(name[0] != '\0');
			run(name);
		}

		if (args.files_name != stdin_filename)
			(void)FUNC9(args.files_file);
	}

#ifdef HAVE_DECODERS
	// All files have now been handled. If in --list mode, display
	// the totals before exiting. We don't have signal handlers
	// enabled in --list mode, so we don't need to check user_abort.
	if (opt_mode == MODE_LIST) {
		assert(!user_abort);
		list_totals();
	}
#endif

#ifndef NDEBUG
	FUNC7();
	FUNC4();
#endif

	// If we have got a signal, raise it to kill the program instead
	// of calling tuklib_exit().
	FUNC24();

	// Make a local copy of exit_status to keep the Windows code
	// thread safe. At this point it is fine if we miss the user
	// pressing C-c and don't set the exit_status to E_ERROR on
	// Windows.
#if defined(_WIN32) && !defined(__CYGWIN__)
	EnterCriticalSection(&exit_status_cs);
#endif

	enum exit_status_type es = exit_status;

#if defined(_WIN32) && !defined(__CYGWIN__)
	LeaveCriticalSection(&exit_status_cs);
#endif

	// Suppress the exit status indicating a warning if --no-warn
	// was specified.
	if (es == E_WARNING && no_warn)
		es = E_SUCCESS;

	FUNC27(es, E_ERROR, FUNC22() != V_SILENT);
}