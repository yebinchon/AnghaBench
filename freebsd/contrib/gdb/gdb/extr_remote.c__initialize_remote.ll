; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c__initialize_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c__initialize_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }
%struct.TYPE_12__ = type { i8* }

@_initialize_remote.remote_set_cmdlist = internal global %struct.cmd_list_element* null, align 8
@_initialize_remote.remote_show_cmdlist = internal global %struct.cmd_list_element* null, align 8
@init_remote_state = common dso_local global i32 0, align 4
@remote_gdbarch_data_handle = common dso_local global i32 0, align 4
@remote_address_size = common dso_local global i32 0, align 4
@build_remote_gdbarch_data = common dso_local global i32 0, align 4
@remote_ops = common dso_local global i32 0, align 4
@extended_remote_ops = common dso_local global i32 0, align 4
@remote_async_ops = common dso_local global i32 0, align 4
@extended_async_remote_ops = common dso_local global i32 0, align 4
@target_new_objfile_hook = common dso_local global i32 0, align 4
@remote_new_objfile_chain = common dso_local global i32 0, align 4
@remote_new_objfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@set_remote_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [119 x i8] c"Remote protocol specific variables\0AConfigure various remote-protocol specific variables such as\0Athe packets being used\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"set remote \00", align 1
@setlist = common dso_local global %struct.cmd_list_element* null, align 8
@show_remote_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"show remote \00", align 1
@showlist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"compare-sections\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@compare_sections_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [115 x i8] c"Compare section data on target to the exec file.\0AArgument is a single section name (default: all loaded sections).\00", align 1
@cmdlist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@packet_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [314 x i8] c"Send an arbitrary packet to a remote target.\0A   maintenance packet TEXT\0AIf GDB is talking to an inferior via the GDB serial protocol, then\0Athis command sends the string TEXT to the inferior, and displays the\0Aresponse packet.  GDB supplies the initial `$' character, and the\0Aterminating `#' character and checksum.\00", align 1
@maintenancelist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"remotebreak\00", align 1
@no_class = common dso_local global i32 0, align 4
@remote_break = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"Set whether to send break if interrupted.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Show whether to send break if interrupted.\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"remotewritesize\00", align 1
@set_memory_write_packet_size = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [71 x i8] c"Set the maximum number of bytes per memory write packet (deprecated).\0A\00", align 1
@show_memory_write_packet_size = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [72 x i8] c"Show the maximum number of bytes per memory write packet (deprecated).\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"memory-write-packet-size\00", align 1
@.str.15 = private unnamed_addr constant [296 x i8] c"Set the maximum number of bytes per memory-write packet.\0ASpecify the number of bytes in a packet or 0 (zero) for the\0Adefault packet size.  The actual limit is further reduced\0Adependent on the target.  Specify ``fixed'' to disable the\0Afurther restriction and ``limit'' to enable that restriction\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"memory-read-packet-size\00", align 1
@set_memory_read_packet_size = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [295 x i8] c"Set the maximum number of bytes per memory-read packet.\0ASpecify the number of bytes in a packet or 0 (zero) for the\0Adefault packet size.  The actual limit is further reduced\0Adependent on the target.  Specify ``fixed'' to disable the\0Afurther restriction and ``limit'' to enable that restriction\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"Show the maximum number of bytes per memory-write packet.\0A\00", align 1
@show_memory_read_packet_size = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [58 x i8] c"Show the maximum number of bytes per memory-read packet.\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"hardware-watchpoint-limit\00", align 1
@var_zinteger = common dso_local global i32 0, align 4
@remote_hw_watchpoint_limit = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [95 x i8] c"Set the maximum number of target hardware watchpoints.\0ASpecify a negative limit for unlimited.\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Show the maximum number of target hardware watchpoints.\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"hardware-breakpoint-limit\00", align 1
@remote_hw_breakpoint_limit = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [95 x i8] c"Set the maximum number of target hardware breakpoints.\0ASpecify a negative limit for unlimited.\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"Show the maximum number of target hardware breakpoints.\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"remoteaddresssize\00", align 1
@var_integer = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [67 x i8] c"Set the maximum size of the address (in bits) in a memory packet.\0A\00", align 1
@remote_protocol_binary_download = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"binary-download\00", align 1
@set_remote_protocol_binary_download_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_binary_download_cmd = common dso_local global i32 0, align 4
@remote_protocol_vcont = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"vCont\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"verbose-resume\00", align 1
@set_remote_protocol_vcont_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_vcont_packet_cmd = common dso_local global i32 0, align 4
@remote_protocol_qSymbol = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"qSymbol\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"symbol-lookup\00", align 1
@set_remote_protocol_qSymbol_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_qSymbol_packet_cmd = common dso_local global i32 0, align 4
@remote_protocol_e = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"step-over-range\00", align 1
@set_remote_protocol_e_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_e_packet_cmd = common dso_local global i32 0, align 4
@AUTO_BOOLEAN_FALSE = common dso_local global i8* null, align 8
@remote_protocol_E = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"step-over-range-w-signal\00", align 1
@set_remote_protocol_E_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_E_packet_cmd = common dso_local global i32 0, align 4
@remote_protocol_P = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"set-register\00", align 1
@set_remote_protocol_P_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_P_packet_cmd = common dso_local global i32 0, align 4
@remote_protocol_Z = common dso_local global %struct.TYPE_12__* null, align 8
@Z_PACKET_SOFTWARE_BP = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c"Z0\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"software-breakpoint\00", align 1
@set_remote_protocol_Z_software_bp_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_Z_software_bp_packet_cmd = common dso_local global i32 0, align 4
@Z_PACKET_HARDWARE_BP = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [3 x i8] c"Z1\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"hardware-breakpoint\00", align 1
@set_remote_protocol_Z_hardware_bp_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_Z_hardware_bp_packet_cmd = common dso_local global i32 0, align 4
@Z_PACKET_WRITE_WP = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [3 x i8] c"Z2\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"write-watchpoint\00", align 1
@set_remote_protocol_Z_write_wp_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_Z_write_wp_packet_cmd = common dso_local global i32 0, align 4
@Z_PACKET_READ_WP = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [3 x i8] c"Z3\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"read-watchpoint\00", align 1
@set_remote_protocol_Z_read_wp_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_Z_read_wp_packet_cmd = common dso_local global i32 0, align 4
@Z_PACKET_ACCESS_WP = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [3 x i8] c"Z4\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"access-watchpoint\00", align 1
@set_remote_protocol_Z_access_wp_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_Z_access_wp_packet_cmd = common dso_local global i32 0, align 4
@remote_protocol_qPart_auxv = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.50 = private unnamed_addr constant [11 x i8] c"qPart_auxv\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"read-aux-vector\00", align 1
@set_remote_protocol_qPart_auxv_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_qPart_auxv_packet_cmd = common dso_local global i32 0, align 4
@remote_protocol_qPart_dirty = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.52 = private unnamed_addr constant [12 x i8] c"qPart_dirty\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"read-dirty-registers\00", align 1
@set_remote_protocol_qPart_dirty_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_qPart_dirty_packet_cmd = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [9 x i8] c"Z-packet\00", align 1
@remote_Z_packet_detect = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [39 x i8] c"Set use of remote protocol `Z' packets\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"Show use of remote protocol `Z' packets \00", align 1
@set_remote_protocol_Z_packet_cmd = common dso_local global i32 0, align 4
@show_remote_protocol_Z_packet_cmd = common dso_local global i32 0, align 4
@remote_binary_download = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @init_remote_state, align 4
  %3 = call i32 @register_gdbarch_data(i32 %2)
  store i32 %3, i32* @remote_gdbarch_data_handle, align 4
  %4 = load i32, i32* @remote_address_size, align 4
  %5 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %4)
  %6 = load i32, i32* @build_remote_gdbarch_data, align 4
  %7 = call i32 @deprecated_register_gdbarch_swap(i32* null, i32 0, i32 %6)
  %8 = call i32 (...) @init_remote_ops()
  %9 = call i32 @add_target(i32* @remote_ops)
  %10 = call i32 (...) @init_extended_remote_ops()
  %11 = call i32 @add_target(i32* @extended_remote_ops)
  %12 = call i32 (...) @init_remote_async_ops()
  %13 = call i32 @add_target(i32* @remote_async_ops)
  %14 = call i32 (...) @init_extended_async_remote_ops()
  %15 = call i32 @add_target(i32* @extended_async_remote_ops)
  %16 = load i32, i32* @target_new_objfile_hook, align 4
  store i32 %16, i32* @remote_new_objfile_chain, align 4
  %17 = load i32, i32* @remote_new_objfile, align 4
  store i32 %17, i32* @target_new_objfile_hook, align 4
  %18 = load i32, i32* @class_maintenance, align 4
  %19 = load i32, i32* @set_remote_cmd, align 4
  %20 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.cmd_list_element** @setlist)
  %21 = load i32, i32* @class_maintenance, align 4
  %22 = load i32, i32* @show_remote_cmd, align 4
  %23 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.cmd_list_element** @showlist)
  %24 = load i32, i32* @class_obscure, align 4
  %25 = load i32, i32* @compare_sections_command, align 4
  %26 = call i32 @add_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.5, i64 0, i64 0), %struct.cmd_list_element** @cmdlist)
  %27 = load i32, i32* @class_maintenance, align 4
  %28 = load i32, i32* @packet_command, align 4
  %29 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %27, i32 %28, i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.7, i64 0, i64 0), %struct.cmd_list_element** @maintenancelist)
  %30 = load i32, i32* @no_class, align 4
  %31 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %30, i32* @remote_break, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @setlist, %struct.cmd_list_element** @showlist)
  %32 = load i32, i32* @no_class, align 4
  %33 = load i32, i32* @set_memory_write_packet_size, align 4
  %34 = call i32 @add_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %32, i32 %33, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), %struct.cmd_list_element** @setlist)
  %35 = load i32, i32* @no_class, align 4
  %36 = load i32, i32* @show_memory_write_packet_size, align 4
  %37 = call i32 @add_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %35, i32 %36, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), %struct.cmd_list_element** @showlist)
  %38 = load i32, i32* @no_class, align 4
  %39 = load i32, i32* @set_memory_write_packet_size, align 4
  %40 = call i32 @add_cmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %38, i32 %39, i8* getelementptr inbounds ([296 x i8], [296 x i8]* @.str.15, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist)
  %41 = load i32, i32* @no_class, align 4
  %42 = load i32, i32* @set_memory_read_packet_size, align 4
  %43 = call i32 @add_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %41, i32 %42, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.17, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist)
  %44 = load i32, i32* @no_class, align 4
  %45 = load i32, i32* @show_memory_write_packet_size, align 4
  %46 = call i32 @add_cmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %44, i32 %45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist)
  %47 = load i32, i32* @no_class, align 4
  %48 = load i32, i32* @show_memory_read_packet_size, align 4
  %49 = call i32 @add_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %47, i32 %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist)
  %50 = load i32, i32* @no_class, align 4
  %51 = load i32, i32* @var_zinteger, align 4
  %52 = call i32 @add_setshow_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %50, i32 %51, i32* @remote_hw_watchpoint_limit, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist)
  %53 = load i32, i32* @no_class, align 4
  %54 = load i32, i32* @var_zinteger, align 4
  %55 = call i32 @add_setshow_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 %53, i32 %54, i32* @remote_hw_breakpoint_limit, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist)
  %56 = load i32, i32* @class_obscure, align 4
  %57 = load i32, i32* @var_integer, align 4
  %58 = call i32 @add_set_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 %56, i32 %57, i8* bitcast (i32* @remote_address_size to i8*), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0), %struct.cmd_list_element** @setlist)
  %59 = call i32 @add_show_from_set(i32 %58, %struct.cmd_list_element** @showlist)
  %60 = load i32, i32* @set_remote_protocol_binary_download_cmd, align 4
  %61 = load i32, i32* @show_remote_protocol_binary_download_cmd, align 4
  %62 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_binary_download, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %60, i32 %61, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 1)
  %63 = load i32, i32* @set_remote_protocol_vcont_packet_cmd, align 4
  %64 = load i32, i32* @show_remote_protocol_vcont_packet_cmd, align 4
  %65 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_vcont, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %63, i32 %64, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %66 = load i32, i32* @set_remote_protocol_qSymbol_packet_cmd, align 4
  %67 = load i32, i32* @show_remote_protocol_qSymbol_packet_cmd, align 4
  %68 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_qSymbol, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 %66, i32 %67, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %69 = load i32, i32* @set_remote_protocol_e_packet_cmd, align 4
  %70 = load i32, i32* @show_remote_protocol_e_packet_cmd, align 4
  %71 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_e, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i32 %69, i32 %70, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %72 = load i8*, i8** @AUTO_BOOLEAN_FALSE, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @remote_protocol_e, i32 0, i32 0), align 8
  %73 = call i32 @update_packet_config(%struct.TYPE_12__* @remote_protocol_e)
  %74 = load i32, i32* @set_remote_protocol_E_packet_cmd, align 4
  %75 = load i32, i32* @show_remote_protocol_E_packet_cmd, align 4
  %76 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_E, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i32 %74, i32 %75, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %77 = load i8*, i8** @AUTO_BOOLEAN_FALSE, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @remote_protocol_E, i32 0, i32 0), align 8
  %78 = call i32 @update_packet_config(%struct.TYPE_12__* @remote_protocol_E)
  %79 = load i32, i32* @set_remote_protocol_P_packet_cmd, align 4
  %80 = load i32, i32* @show_remote_protocol_P_packet_cmd, align 4
  %81 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_P, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 %79, i32 %80, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 1)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @remote_protocol_Z, align 8
  %83 = load i64, i64* @Z_PACKET_SOFTWARE_BP, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %83
  %85 = load i32, i32* @set_remote_protocol_Z_software_bp_packet_cmd, align 4
  %86 = load i32, i32* @show_remote_protocol_Z_software_bp_packet_cmd, align 4
  %87 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 %85, i32 %86, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @remote_protocol_Z, align 8
  %89 = load i64, i64* @Z_PACKET_HARDWARE_BP, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %89
  %91 = load i32, i32* @set_remote_protocol_Z_hardware_bp_packet_cmd, align 4
  %92 = load i32, i32* @show_remote_protocol_Z_hardware_bp_packet_cmd, align 4
  %93 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 %91, i32 %92, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @remote_protocol_Z, align 8
  %95 = load i64, i64* @Z_PACKET_WRITE_WP, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %95
  %97 = load i32, i32* @set_remote_protocol_Z_write_wp_packet_cmd, align 4
  %98 = load i32, i32* @show_remote_protocol_Z_write_wp_packet_cmd, align 4
  %99 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i32 %97, i32 %98, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @remote_protocol_Z, align 8
  %101 = load i64, i64* @Z_PACKET_READ_WP, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %101
  %103 = load i32, i32* @set_remote_protocol_Z_read_wp_packet_cmd, align 4
  %104 = load i32, i32* @show_remote_protocol_Z_read_wp_packet_cmd, align 4
  %105 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), i32 %103, i32 %104, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @remote_protocol_Z, align 8
  %107 = load i64, i64* @Z_PACKET_ACCESS_WP, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %107
  %109 = load i32, i32* @set_remote_protocol_Z_access_wp_packet_cmd, align 4
  %110 = load i32, i32* @show_remote_protocol_Z_access_wp_packet_cmd, align 4
  %111 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i32 %109, i32 %110, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %112 = load i32, i32* @set_remote_protocol_qPart_auxv_packet_cmd, align 4
  %113 = load i32, i32* @show_remote_protocol_qPart_auxv_packet_cmd, align 4
  %114 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_qPart_auxv, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %112, i32 %113, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %115 = load i32, i32* @set_remote_protocol_qPart_dirty_packet_cmd, align 4
  %116 = load i32, i32* @show_remote_protocol_qPart_dirty_packet_cmd, align 4
  %117 = call i32 @add_packet_config_cmd(%struct.TYPE_12__* @remote_protocol_qPart_dirty, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 %115, i32 %116, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, i32 0)
  %118 = load i32, i32* @class_obscure, align 4
  %119 = load i32, i32* @set_remote_protocol_Z_packet_cmd, align 4
  %120 = load i32, i32* @show_remote_protocol_Z_packet_cmd, align 4
  %121 = call i32 @add_setshow_auto_boolean_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i32 %118, i32* @remote_Z_packet_detect, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0), i32 %119, i32 %120, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist)
  %122 = load %struct.cmd_list_element*, %struct.cmd_list_element** @_initialize_remote.remote_set_cmdlist, align 8
  %123 = load %struct.cmd_list_element*, %struct.cmd_list_element** @_initialize_remote.remote_show_cmdlist, align 8
  %124 = call i32 @initialize_remote_fileio(%struct.cmd_list_element* %122, %struct.cmd_list_element* %123)
  ret void
}

declare dso_local i32 @register_gdbarch_data(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32) #1

declare dso_local i32 @deprecated_register_gdbarch_swap(i32*, i32, i32) #1

declare dso_local i32 @init_remote_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @init_extended_remote_ops(...) #1

declare dso_local i32 @init_remote_async_ops(...) #1

declare dso_local i32 @init_extended_async_remote_ops(...) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @add_setshow_cmd(i8*, i32, i32, i32*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @add_show_from_set(i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @add_packet_config_cmd(%struct.TYPE_12__*, i8*, i8*, i32, i32, %struct.cmd_list_element**, %struct.cmd_list_element**, i32) #1

declare dso_local i32 @update_packet_config(%struct.TYPE_12__*) #1

declare dso_local i32 @add_setshow_auto_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32, i32, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @initialize_remote_fileio(%struct.cmd_list_element*, %struct.cmd_list_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
