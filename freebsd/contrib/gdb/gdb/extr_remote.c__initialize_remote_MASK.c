#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct cmd_list_element {int dummy; } ;
struct TYPE_12__ {void* detect; } ;

/* Variables and functions */
 void* AUTO_BOOLEAN_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t Z_PACKET_ACCESS_WP ; 
 size_t Z_PACKET_HARDWARE_BP ; 
 size_t Z_PACKET_READ_WP ; 
 size_t Z_PACKET_SOFTWARE_BP ; 
 size_t Z_PACKET_WRITE_WP ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_list_element**,struct cmd_list_element**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**,char*,int /*<<< orphan*/ ,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_list_element**,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cmd_list_element**,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cmd_list_element**,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  build_remote_gdbarch_data ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  class_obscure ; 
 struct cmd_list_element* cmdlist ; 
 int /*<<< orphan*/  compare_sections_command ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extended_async_remote_ops ; 
 int /*<<< orphan*/  extended_remote_ops ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  init_remote_state ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct cmd_list_element*,struct cmd_list_element*) ; 
 struct cmd_list_element* maintenancelist ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  packet_command ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_Z_packet_detect ; 
 int /*<<< orphan*/  remote_address_size ; 
 int /*<<< orphan*/  remote_async_ops ; 
 int /*<<< orphan*/  remote_binary_download ; 
 int /*<<< orphan*/  remote_break ; 
 int /*<<< orphan*/  remote_gdbarch_data_handle ; 
 int /*<<< orphan*/  remote_hw_breakpoint_limit ; 
 int /*<<< orphan*/  remote_hw_watchpoint_limit ; 
 int /*<<< orphan*/  remote_new_objfile ; 
 int /*<<< orphan*/  remote_new_objfile_chain ; 
 int /*<<< orphan*/  remote_ops ; 
 TYPE_1__ remote_protocol_E ; 
 TYPE_1__ remote_protocol_P ; 
 TYPE_1__* remote_protocol_Z ; 
 TYPE_1__ remote_protocol_binary_download ; 
 TYPE_1__ remote_protocol_e ; 
 TYPE_1__ remote_protocol_qPart_auxv ; 
 TYPE_1__ remote_protocol_qPart_dirty ; 
 TYPE_1__ remote_protocol_qSymbol ; 
 TYPE_1__ remote_protocol_vcont ; 
 int /*<<< orphan*/  set_memory_read_packet_size ; 
 int /*<<< orphan*/  set_memory_write_packet_size ; 
 int /*<<< orphan*/  set_remote_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_E_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_P_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_Z_access_wp_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_Z_hardware_bp_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_Z_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_Z_read_wp_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_Z_software_bp_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_Z_write_wp_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_binary_download_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_e_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_qPart_auxv_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_qPart_dirty_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_qSymbol_packet_cmd ; 
 int /*<<< orphan*/  set_remote_protocol_vcont_packet_cmd ; 
 struct cmd_list_element* setlist ; 
 int /*<<< orphan*/  show_memory_read_packet_size ; 
 int /*<<< orphan*/  show_memory_write_packet_size ; 
 int /*<<< orphan*/  show_remote_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_E_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_P_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_Z_access_wp_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_Z_hardware_bp_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_Z_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_Z_read_wp_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_Z_software_bp_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_Z_write_wp_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_binary_download_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_e_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_qPart_auxv_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_qPart_dirty_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_qSymbol_packet_cmd ; 
 int /*<<< orphan*/  show_remote_protocol_vcont_packet_cmd ; 
 struct cmd_list_element* showlist ; 
 int /*<<< orphan*/  target_new_objfile_hook ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  var_integer ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC19 (void)
{
  static struct cmd_list_element *remote_set_cmdlist;
  static struct cmd_list_element *remote_show_cmdlist;
  struct cmd_list_element *tmpcmd;

  /* architecture specific data */
  remote_gdbarch_data_handle = FUNC17 (init_remote_state);

  /* Old tacky stuff.  NOTE: This comes after the remote protocol so
     that the remote protocol has been initialized.  */
  FUNC0 (remote_address_size);
  FUNC10 (NULL, 0, build_remote_gdbarch_data);

  FUNC14 ();
  FUNC9 (&remote_ops);

  FUNC12 ();
  FUNC9 (&extended_remote_ops);

  FUNC13 ();
  FUNC9 (&remote_async_ops);

  FUNC11 ();
  FUNC9 (&extended_async_remote_ops);

  /* Hook into new objfile notification.  */
  remote_new_objfile_chain = target_new_objfile_hook;
  target_new_objfile_hook  = remote_new_objfile;

#if 0
  init_remote_threadtests ();
#endif

  /* set/show remote ... */

  FUNC3 ("remote", class_maintenance, set_remote_cmd, "\
Remote protocol specific variables\n\
Configure various remote-protocol specific variables such as\n\
the packets being used",
		  &remote_set_cmdlist, "set remote ",
		  0/*allow-unknown*/, &setlist);
  FUNC3 ("remote", class_maintenance, show_remote_cmd, "\
Remote protocol specific variables\n\
Configure various remote-protocol specific variables such as\n\
the packets being used",
		  &remote_show_cmdlist, "show remote ",
		  0/*allow-unknown*/, &showlist);

  FUNC1 ("compare-sections", class_obscure, compare_sections_command,
	   "Compare section data on target to the exec file.\n\
Argument is a single section name (default: all loaded sections).",
	   &cmdlist);

  FUNC1 ("packet", class_maintenance, packet_command,
	   "Send an arbitrary packet to a remote target.\n\
   maintenance packet TEXT\n\
If GDB is talking to an inferior via the GDB serial protocol, then\n\
this command sends the string TEXT to the inferior, and displays the\n\
response packet.  GDB supplies the initial `$' character, and the\n\
terminating `#' character and checksum.",
	   &maintenancelist);

  FUNC6 ("remotebreak", no_class, &remote_break,
			   "Set whether to send break if interrupted.\n",
			   "Show whether to send break if interrupted.\n",
			   NULL, NULL,
			   &setlist, &showlist);

  /* Install commands for configuring memory read/write packets. */

  FUNC1 ("remotewritesize", no_class, set_memory_write_packet_size,
	   "Set the maximum number of bytes per memory write packet (deprecated).\n",
	   &setlist);
  FUNC1 ("remotewritesize", no_class, show_memory_write_packet_size,
	   "Show the maximum number of bytes per memory write packet (deprecated).\n",
	   &showlist);
  FUNC1 ("memory-write-packet-size", no_class,
	   set_memory_write_packet_size,
	   "Set the maximum number of bytes per memory-write packet.\n"
	   "Specify the number of bytes in a packet or 0 (zero) for the\n"
	   "default packet size.  The actual limit is further reduced\n"
	   "dependent on the target.  Specify ``fixed'' to disable the\n"
	   "further restriction and ``limit'' to enable that restriction\n",
	   &remote_set_cmdlist);
  FUNC1 ("memory-read-packet-size", no_class,
	   set_memory_read_packet_size,
	   "Set the maximum number of bytes per memory-read packet.\n"
	   "Specify the number of bytes in a packet or 0 (zero) for the\n"
	   "default packet size.  The actual limit is further reduced\n"
	   "dependent on the target.  Specify ``fixed'' to disable the\n"
	   "further restriction and ``limit'' to enable that restriction\n",
	   &remote_set_cmdlist);
  FUNC1 ("memory-write-packet-size", no_class,
	   show_memory_write_packet_size,
	   "Show the maximum number of bytes per memory-write packet.\n",
	   &remote_show_cmdlist);
  FUNC1 ("memory-read-packet-size", no_class,
	   show_memory_read_packet_size,
	   "Show the maximum number of bytes per memory-read packet.\n",
	   &remote_show_cmdlist);

  FUNC7 ("hardware-watchpoint-limit", no_class,
		   var_zinteger, &remote_hw_watchpoint_limit, "\
Set the maximum number of target hardware watchpoints.\n\
Specify a negative limit for unlimited.", "\
Show the maximum number of target hardware watchpoints.\n",
		   NULL, NULL, &remote_set_cmdlist, &remote_show_cmdlist);
  FUNC7 ("hardware-breakpoint-limit", no_class,
		   var_zinteger, &remote_hw_breakpoint_limit, "\
Set the maximum number of target hardware breakpoints.\n\
Specify a negative limit for unlimited.", "\
Show the maximum number of target hardware breakpoints.\n",
		   NULL, NULL, &remote_set_cmdlist, &remote_show_cmdlist);

  FUNC8
    (FUNC4 ("remoteaddresssize", class_obscure,
		  var_integer, (char *) &remote_address_size,
		  "Set the maximum size of the address (in bits) \
in a memory packet.\n",
		  &setlist),
     &showlist);

  FUNC2 (&remote_protocol_binary_download,
			 "X", "binary-download",
			 set_remote_protocol_binary_download_cmd,
			 show_remote_protocol_binary_download_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 1);
#if 0
  /* XXXX - should ``set remotebinarydownload'' be retained for
     compatibility. */
  add_show_from_set
    (add_set_cmd ("remotebinarydownload", no_class,
		  var_boolean, (char *) &remote_binary_download,
		  "Set binary downloads.\n", &setlist),
     &showlist);
#endif

  FUNC2 (&remote_protocol_vcont,
			 "vCont", "verbose-resume",
			 set_remote_protocol_vcont_packet_cmd,
			 show_remote_protocol_vcont_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_qSymbol,
			 "qSymbol", "symbol-lookup",
			 set_remote_protocol_qSymbol_packet_cmd,
			 show_remote_protocol_qSymbol_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_e,
			 "e", "step-over-range",
			 set_remote_protocol_e_packet_cmd,
			 show_remote_protocol_e_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);
  /* Disable by default.  The ``e'' packet has nasty interactions with
     the threading code - it relies on global state.  */
  remote_protocol_e.detect = AUTO_BOOLEAN_FALSE;
  FUNC18 (&remote_protocol_e);

  FUNC2 (&remote_protocol_E,
			 "E", "step-over-range-w-signal",
			 set_remote_protocol_E_packet_cmd,
			 show_remote_protocol_E_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);
  /* Disable by default.  The ``e'' packet has nasty interactions with
     the threading code - it relies on global state.  */
  remote_protocol_E.detect = AUTO_BOOLEAN_FALSE;
  FUNC18 (&remote_protocol_E);

  FUNC2 (&remote_protocol_P,
			 "P", "set-register",
			 set_remote_protocol_P_packet_cmd,
			 show_remote_protocol_P_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 1);

  FUNC2 (&remote_protocol_Z[Z_PACKET_SOFTWARE_BP],
			 "Z0", "software-breakpoint",
			 set_remote_protocol_Z_software_bp_packet_cmd,
			 show_remote_protocol_Z_software_bp_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_Z[Z_PACKET_HARDWARE_BP],
			 "Z1", "hardware-breakpoint",
			 set_remote_protocol_Z_hardware_bp_packet_cmd,
			 show_remote_protocol_Z_hardware_bp_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_Z[Z_PACKET_WRITE_WP],
			 "Z2", "write-watchpoint",
			 set_remote_protocol_Z_write_wp_packet_cmd,
			 show_remote_protocol_Z_write_wp_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_Z[Z_PACKET_READ_WP],
			 "Z3", "read-watchpoint",
			 set_remote_protocol_Z_read_wp_packet_cmd,
			 show_remote_protocol_Z_read_wp_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_Z[Z_PACKET_ACCESS_WP],
			 "Z4", "access-watchpoint",
			 set_remote_protocol_Z_access_wp_packet_cmd,
			 show_remote_protocol_Z_access_wp_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_qPart_auxv,
			 "qPart_auxv", "read-aux-vector",
			 set_remote_protocol_qPart_auxv_packet_cmd,
			 show_remote_protocol_qPart_auxv_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  FUNC2 (&remote_protocol_qPart_dirty,
			 "qPart_dirty", "read-dirty-registers",
			 set_remote_protocol_qPart_dirty_packet_cmd,
			 show_remote_protocol_qPart_dirty_packet_cmd,
			 &remote_set_cmdlist, &remote_show_cmdlist,
			 0);

  /* Keep the old ``set remote Z-packet ...'' working. */
  FUNC5 ("Z-packet", class_obscure,
				&remote_Z_packet_detect, "\
Set use of remote protocol `Z' packets",
				"Show use of remote protocol `Z' packets ",
				set_remote_protocol_Z_packet_cmd,
				show_remote_protocol_Z_packet_cmd,
				&remote_set_cmdlist, &remote_show_cmdlist);

  /* Eventually initialize fileio.  See fileio.c */
  FUNC16 (remote_set_cmdlist, remote_show_cmdlist);
}