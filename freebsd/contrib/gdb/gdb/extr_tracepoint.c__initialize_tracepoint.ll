; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c__initialize_tracepoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c__initialize_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }
%struct.cmd_list_element = type { i32 }

@tracepoint_chain = common dso_local global i64 0, align 8
@tracepoint_count = common dso_local global i64 0, align 8
@traceframe_number = common dso_local global i32 0, align 4
@tracepoint_number = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tpnum\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"trace_frame\00", align 1
@tracepoint_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@stepping_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@scope_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"List the variables local to a scope\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tracepoints\00", align 1
@class_trace = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Tracing of program execution without stopping the program.\00", align 1
@cmdlist = common dso_local global i32 0, align 4
@tracepoints_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [130 x i8] c"Status of tracepoints, or tracepoint number NUMBER.\0AConvenience variable \22$tpnum\22 contains the number of the\0Alast tracepoint set.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"tp\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"save-tracepoints\00", align 1
@tracepoint_save_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [116 x i8] c"Save current tracepoint definitions as a script.\0AUse the 'source' command in another debug session to restore them.\00", align 1
@filename_completer = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"tdump\00", align 1
@trace_dump_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [54 x i8] c"Print everything collected at the current tracepoint.\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"tfind\00", align 1
@trace_find_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [95 x i8] c"Select a trace frame;\0ANo argument means forward by one frame; '-' meand backward by one frame.\00", align 1
@tfindlist = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"tfind \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"outside\00", align 1
@trace_find_outside_command = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [92 x i8] c"Select a trace frame whose PC is outside the given range.\0AUsage: tfind outside addr1, addr2\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@trace_find_range_command = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [84 x i8] c"Select a trace frame whose PC is in the given range.\0AUsage: tfind range addr1,addr2\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@trace_find_line_command = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [205 x i8] c"Select a trace frame by source line.\0AArgument can be a line number (with optional source file), \0Aa function name, or '*' followed by an address.\0ADefault argument is 'the next source line that was traced'.\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"tracepoint\00", align 1
@trace_find_tracepoint_command = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [98 x i8] c"Select a trace frame by tracepoint number.\0ADefault is the tracepoint for the current trace frame.\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@trace_find_pc_command = common dso_local global i32* null, align 8
@.str.24 = private unnamed_addr constant [93 x i8] c"Select a trace frame by PC.\0ADefault is the current PC, or the PC of the current trace frame.\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@trace_find_end_command = common dso_local global i32* null, align 8
@.str.26 = private unnamed_addr constant [75 x i8] c"Synonym for 'none'.\0ADe-select any trace frame and resume 'live' debugging.\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@trace_find_none_command = common dso_local global i32* null, align 8
@.str.28 = private unnamed_addr constant [55 x i8] c"De-select any trace frame and resume 'live' debugging.\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@trace_find_start_command = common dso_local global i32* null, align 8
@.str.30 = private unnamed_addr constant [50 x i8] c"Select the first trace frame in the trace buffer.\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"tstatus\00", align 1
@trace_status_command = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [57 x i8] c"Display the status of the current trace data collection.\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"tstop\00", align 1
@trace_stop_command = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [28 x i8] c"Stop trace data collection.\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"tstart\00", align 1
@trace_start_command = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [29 x i8] c"Start trace data collection.\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"passcount\00", align 1
@trace_pass_command = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [237 x i8] c"Set the passcount for a tracepoint.\0AThe trace will end when the tracepoint has been passed 'count' times.\0AUsage: passcount COUNT TPNUM, where TPNUM may also be \22all\22;\0Aif TPNUM is omitted, passcount refers to the last tracepoint defined.\00", align 1
@end_actions_pseudocommand = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [245 x i8] c"Ends a list of commands or actions.\0ASeveral GDB commands allow you to enter a list of commands or actions.\0AEntering \22end\22 on a line by itself is the normal way to terminate\0Asuch a list.\0A\0ANote: the \22end\22 command cannot be used at the gdb prompt.\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"while-stepping\00", align 1
@while_stepping_pseudocommand = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [329 x i8] c"Specify single-stepping behavior at a tracepoint.\0AArgument is number of instructions to trace in single-step mode\0Afollowing the tracepoint.  This command is normally followed by\0Aone or more \22collect\22 commands, to specify what to collect\0Awhile single-stepping.\0A\0ANote: this command can only be used in a tracepoint \22actions\22 list.\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"ws\00", align 1
@class_alias = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"stepping\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@collect_pseudocommand = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [453 x i8] c"Specify one or more data items to be collected at a tracepoint.\0AAccepts a comma-separated list of (one or more) expressions.  GDB will\0Acollect all data (variables, registers) referenced by that expression.\0AAlso accepts the following special arguments:\0A    $regs   -- all registers.\0A    $args   -- all function arguments.\0A    $locals -- all variables local to the block/function scope.\0ANote: this command can only be used in a tracepoint \22actions\22 list.\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@trace_actions_command = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [206 x i8] c"Specify the actions to be taken at a tracepoint.\0ATracepoint actions may include collecting of specified data, \0Asingle-stepping, or enabling/disabling other tracepoints, \0Adepending on target's capabilities.\00", align 1
@delete_trace_command = common dso_local global i32* null, align 8
@.str.48 = private unnamed_addr constant [127 x i8] c"Delete specified tracepoints.\0AArguments are tracepoint numbers, separated by spaces.\0ANo argument means delete all tracepoints.\00", align 1
@deletelist = common dso_local global i32 0, align 4
@disable_trace_command = common dso_local global i32* null, align 8
@.str.49 = private unnamed_addr constant [129 x i8] c"Disable specified tracepoints.\0AArguments are tracepoint numbers, separated by spaces.\0ANo argument means disable all tracepoints.\00", align 1
@disablelist = common dso_local global i32 0, align 4
@enable_trace_command = common dso_local global i32* null, align 8
@.str.50 = private unnamed_addr constant [127 x i8] c"Enable specified tracepoints.\0AArguments are tracepoint numbers, separated by spaces.\0ANo argument means enable all tracepoints.\00", align 1
@enablelist = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@trace_command = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [313 x i8] c"Set a tracepoint at a specified line or function or address.\0AArgument may be a line number, function name, or '*' plus an address.\0AFor a line number or function, trace at the start of its code.\0AIf an address is specified, trace at that exact address.\0A\0ADo \22help tracepoints\22 for info on other tracepoint commands.\00", align 1
@location_completer = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"tra\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"trac\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_tracepoint() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  store i64 0, i64* @tracepoint_chain, align 8
  store i64 0, i64* @tracepoint_count, align 8
  store i32 -1, i32* @traceframe_number, align 4
  store i32 -1, i32* @tracepoint_number, align 4
  %2 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @builtin_type_int, align 4
  %4 = call i32 @value_from_longest(i32 %3, i32 0)
  %5 = call i32 @set_internalvar(i32 %2, i32 %4)
  %6 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @builtin_type_int, align 4
  %8 = call i32 @value_from_longest(i32 %7, i32 -1)
  %9 = call i32 @set_internalvar(i32 %6, i32 %8)
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 3), align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 0), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 0), align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* @xmalloc(i32 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 3), align 8
  br label %19

19:                                               ; preds = %12, %0
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 2), align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 1), align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @xmalloc(i32 %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tracepoint_list, i32 0, i32 2), align 8
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 3), align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 0), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 0), align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i8* @xmalloc(i32 %36)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 3), align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 2), align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 1), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 1), align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i8* @xmalloc(i32 %46)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stepping_list, i32 0, i32 2), align 8
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* @scope_info, align 4
  %51 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @class_trace, align 4
  %53 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32* @cmdlist)
  %54 = load i32, i32* @tracepoints_info, align 4
  %55 = call i32 @add_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %54, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 @add_info_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %57 = load i32, i32* @class_trace, align 4
  %58 = load i32, i32* @tracepoint_save_command, align 4
  %59 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32 %58, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cmd_list_element* %59, %struct.cmd_list_element** %1, align 8
  %60 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %61 = load i32, i32* @filename_completer, align 4
  %62 = call i32 @set_cmd_completer(%struct.cmd_list_element* %60, i32 %61)
  %63 = load i32, i32* @class_trace, align 4
  %64 = load i32, i32* @trace_dump_command, align 4
  %65 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %63, i32 %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %66 = load i32, i32* @class_trace, align 4
  %67 = load i32, i32* @trace_find_command, align 4
  %68 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %66, i32 %67, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.13, i64 0, i64 0), i32* @tfindlist, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 1, i32* @cmdlist)
  %69 = load i32, i32* @class_trace, align 4
  %70 = load i32*, i32** @trace_find_outside_command, align 8
  %71 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %69, i32* %70, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.16, i64 0, i64 0), i32* @tfindlist)
  %72 = load i32, i32* @class_trace, align 4
  %73 = load i32*, i32** @trace_find_range_command, align 8
  %74 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %72, i32* %73, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.18, i64 0, i64 0), i32* @tfindlist)
  %75 = load i32, i32* @class_trace, align 4
  %76 = load i32*, i32** @trace_find_line_command, align 8
  %77 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %75, i32* %76, i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.20, i64 0, i64 0), i32* @tfindlist)
  %78 = load i32, i32* @class_trace, align 4
  %79 = load i32*, i32** @trace_find_tracepoint_command, align 8
  %80 = call i32 @add_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %78, i32* %79, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.22, i64 0, i64 0), i32* @tfindlist)
  %81 = load i32, i32* @class_trace, align 4
  %82 = load i32*, i32** @trace_find_pc_command, align 8
  %83 = call i32 @add_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %81, i32* %82, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.24, i64 0, i64 0), i32* @tfindlist)
  %84 = load i32, i32* @class_trace, align 4
  %85 = load i32*, i32** @trace_find_end_command, align 8
  %86 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %84, i32* %85, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32* @tfindlist)
  %87 = load i32, i32* @class_trace, align 4
  %88 = load i32*, i32** @trace_find_none_command, align 8
  %89 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %87, i32* %88, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i64 0, i64 0), i32* @tfindlist)
  %90 = load i32, i32* @class_trace, align 4
  %91 = load i32*, i32** @trace_find_start_command, align 8
  %92 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 %90, i32* %91, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0), i32* @tfindlist)
  %93 = load i32, i32* @class_trace, align 4
  %94 = load i32, i32* @trace_status_command, align 4
  %95 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 %93, i32 %94, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.32, i64 0, i64 0))
  %96 = load i32, i32* @class_trace, align 4
  %97 = load i32, i32* @trace_stop_command, align 4
  %98 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i32 %96, i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0))
  %99 = load i32, i32* @class_trace, align 4
  %100 = load i32, i32* @trace_start_command, align 4
  %101 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 %99, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0))
  %102 = load i32, i32* @class_trace, align 4
  %103 = load i32, i32* @trace_pass_command, align 4
  %104 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i32 %102, i32 %103, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.38, i64 0, i64 0))
  %105 = load i32, i32* @class_trace, align 4
  %106 = load i32, i32* @end_actions_pseudocommand, align 4
  %107 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %105, i32 %106, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.39, i64 0, i64 0))
  %108 = load i32, i32* @class_trace, align 4
  %109 = load i32, i32* @while_stepping_pseudocommand, align 4
  %110 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %108, i32 %109, i8* getelementptr inbounds ([329 x i8], [329 x i8]* @.str.41, i64 0, i64 0))
  %111 = load i32, i32* @class_alias, align 4
  %112 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %111, i32 0)
  %113 = load i32, i32* @class_alias, align 4
  %114 = call i32 @add_com_alias(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %113, i32 0)
  %115 = load i32, i32* @class_trace, align 4
  %116 = load i32, i32* @collect_pseudocommand, align 4
  %117 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i32 %115, i32 %116, i8* getelementptr inbounds ([453 x i8], [453 x i8]* @.str.45, i64 0, i64 0))
  %118 = load i32, i32* @class_trace, align 4
  %119 = load i32, i32* @trace_actions_command, align 4
  %120 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i32 %118, i32 %119, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.47, i64 0, i64 0))
  %121 = load i32, i32* @class_trace, align 4
  %122 = load i32*, i32** @delete_trace_command, align 8
  %123 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32* %122, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.48, i64 0, i64 0), i32* @deletelist)
  %124 = load i32, i32* @class_trace, align 4
  %125 = load i32*, i32** @disable_trace_command, align 8
  %126 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32* %125, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.49, i64 0, i64 0), i32* @disablelist)
  %127 = load i32, i32* @class_trace, align 4
  %128 = load i32*, i32** @enable_trace_command, align 8
  %129 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32* %128, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.50, i64 0, i64 0), i32* @enablelist)
  %130 = load i32, i32* @class_trace, align 4
  %131 = load i32, i32* @trace_command, align 4
  %132 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i32 %130, i32 %131, i8* getelementptr inbounds ([313 x i8], [313 x i8]* @.str.52, i64 0, i64 0))
  store %struct.cmd_list_element* %132, %struct.cmd_list_element** %1, align 8
  %133 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %134 = load i32, i32* @location_completer, align 4
  %135 = call i32 @set_cmd_completer(%struct.cmd_list_element* %133, i32 %134)
  %136 = load i32, i32* @class_alias, align 4
  %137 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i32 %136, i32 0)
  %138 = load i32, i32* @class_alias, align 4
  %139 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i32 %138, i32 1)
  %140 = load i32, i32* @class_alias, align 4
  %141 = call i32 @add_com_alias(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i32 %140, i32 1)
  %142 = load i32, i32* @class_alias, align 4
  %143 = call i32 @add_com_alias(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i32 %142, i32 1)
  ret void
}

declare dso_local i32 @set_internalvar(i32, i32) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local i32 @value_from_longest(i32, i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @add_info_alias(i8*, i8*, i32) #1

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
