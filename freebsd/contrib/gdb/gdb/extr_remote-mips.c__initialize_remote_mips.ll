; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c__initialize_remote_mips.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c__initialize_remote_mips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Remote MIPS debugging over serial line\00", align 1
@mips_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@mips_close = common dso_local global i32 0, align 4
@mips_detach = common dso_local global i32 0, align 4
@mips_resume = common dso_local global i32 0, align 4
@mips_fetch_registers = common dso_local global i32 0, align 4
@mips_store_registers = common dso_local global i32 0, align 4
@mips_prepare_to_store = common dso_local global i32 0, align 4
@mips_xfer_memory = common dso_local global i32 0, align 4
@mips_files_info = common dso_local global i32 0, align 4
@mips_insert_breakpoint = common dso_local global i32 0, align 4
@mips_remove_breakpoint = common dso_local global i32 0, align 4
@mips_insert_watchpoint = common dso_local global i32 0, align 4
@mips_remove_watchpoint = common dso_local global i32 0, align 4
@mips_stopped_by_watchpoint = common dso_local global i32 0, align 4
@mips_can_use_watchpoint = common dso_local global i32 0, align 4
@mips_kill = common dso_local global i32 0, align 4
@mips_load = common dso_local global i32 0, align 4
@mips_create_inferior = common dso_local global i32 0, align 4
@mips_mourn_inferior = common dso_local global i32 0, align 4
@process_stratum = common dso_local global i32 0, align 4
@OPS_MAGIC = common dso_local global i32 0, align 4
@pmon_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ddb_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@lsi_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.2 = private unnamed_addr constant [192 x i8] c"Debug a board using the MIPS remote debugging protocol over a serial line.\0AThe argument is the device it is connected to or, if it contains a colon,\0AHOST:PORT to access a board over a network\00", align 1
@mips_open = common dso_local global i32 0, align 4
@mips_wait = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"pmon\00", align 1
@.str.4 = private unnamed_addr constant [197 x i8] c"Debug a board using the PMON MIPS remote debugging protocol over a serial\0Aline. The argument is the device it is connected to or, if it contains a\0Acolon, HOST:PORT to access a board over a network\00", align 1
@pmon_open = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ddb\00", align 1
@.str.6 = private unnamed_addr constant [454 x i8] c"Debug a board using the PMON MIPS remote debugging protocol over a serial\0Aline. The first argument is the device it is connected to or, if it contains\0Aa colon, HOST:PORT to access a board over a network.  The optional second\0Aparameter is the temporary file in the form HOST:FILENAME to be used for\0ATFTP downloads to the board.  The optional third parameter is the local name\0Aof the TFTP temporary file, if it differs from the filename seen by the board.\00", align 1
@ddb_open = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"lsi\00", align 1
@lsi_open = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@mips_receive_wait = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"Set timeout in seconds for remote MIPS serial I/O.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"retransmit-timeout\00", align 1
@mips_retransmit_wait = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [164 x i8] c"Set retransmit timeout in seconds for remote MIPS serial I/O.\0AThis is the number of seconds to wait for an acknowledgement to a packet\0Abefore resending the packet.\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"syn-garbage-limit\00", align 1
@mips_syn_garbage = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [299 x i8] c"Set the maximum number of characters to ignore when scanning for a SYN.\0AThis is the maximum number of characters GDB will ignore when trying to\0Asynchronize with the remote system.  A value of -1 means that there is no limit\0A(Note that these characters are printed out even though they are ignored.)\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"monitor-prompt\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@var_string = common dso_local global i32 0, align 4
@mips_monitor_prompt = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"Set the prompt that GDB expects from the monitor.\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"monitor-warnings\00", align 1
@monitor_warnings = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [111 x i8] c"Set printing of monitor warnings.\0AWhen enabled, monitor warnings about hardware breakpoints will be displayed.\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"pmon <command>\00", align 1
@pmon_command = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"Send a packet to PMON (must be in debug mode).\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"mask-address\00", align 1
@var_boolean = common dso_local global i32 0, align 4
@mask_address_p = common dso_local global i8 0, align 1
@.str.21 = private unnamed_addr constant [136 x i8] c"Set zeroing of upper 32 bits of 64-bit addresses when talking to PMON targets.\0AUse \22on\22 to enable the masking and \22off\22 to disable it.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote_mips() #0 {
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 0), align 8
  %1 = load i32, i32* @mips_close, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 29), align 8
  %2 = load i32, i32* @mips_detach, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 28), align 4
  %3 = load i32, i32* @mips_resume, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 27), align 8
  %4 = load i32, i32* @mips_fetch_registers, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 26), align 4
  %5 = load i32, i32* @mips_store_registers, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 25), align 8
  %6 = load i32, i32* @mips_prepare_to_store, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 24), align 4
  %7 = load i32, i32* @mips_xfer_memory, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 23), align 8
  %8 = load i32, i32* @mips_files_info, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 22), align 4
  %9 = load i32, i32* @mips_insert_breakpoint, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 21), align 8
  %10 = load i32, i32* @mips_remove_breakpoint, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 20), align 4
  %11 = load i32, i32* @mips_insert_watchpoint, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 19), align 8
  %12 = load i32, i32* @mips_remove_watchpoint, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 18), align 4
  %13 = load i32, i32* @mips_stopped_by_watchpoint, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 17), align 8
  %14 = load i32, i32* @mips_can_use_watchpoint, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 16), align 4
  %15 = load i32, i32* @mips_kill, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 15), align 8
  %16 = load i32, i32* @mips_load, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 14), align 4
  %17 = load i32, i32* @mips_create_inferior, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 13), align 8
  %18 = load i32, i32* @mips_mourn_inferior, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 12), align 4
  %19 = load i32, i32* @process_stratum, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 11), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 5), align 8
  %20 = load i32, i32* @OPS_MAGIC, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 10), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @lsi_ops to i8*), i8* align 8 bitcast (%struct.TYPE_6__* @mips_ops to i8*), i64 144, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @ddb_ops to i8*), i8* align 8 bitcast (%struct.TYPE_6__* @lsi_ops to i8*), i64 144, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @pmon_ops to i8*), i8* align 8 bitcast (%struct.TYPE_6__* @ddb_ops to i8*), i64 144, i1 false)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 7), align 8
  %21 = load i32, i32* @mips_open, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 9), align 8
  %22 = load i8*, i8** @mips_wait, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_ops, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pmon_ops, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pmon_ops, i32 0, i32 7), align 8
  %23 = load i32, i32* @pmon_open, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pmon_ops, i32 0, i32 9), align 8
  %24 = load i8*, i8** @mips_wait, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pmon_ops, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ddb_ops, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([454 x i8], [454 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ddb_ops, i32 0, i32 7), align 8
  %25 = load i32, i32* @ddb_open, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ddb_ops, i32 0, i32 9), align 8
  %26 = load i8*, i8** @mips_wait, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ddb_ops, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsi_ops, i32 0, i32 6), align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pmon_ops, i32 0, i32 7), align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsi_ops, i32 0, i32 7), align 8
  %28 = load i32, i32* @lsi_open, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsi_ops, i32 0, i32 9), align 8
  %29 = load i8*, i8** @mips_wait, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lsi_ops, i32 0, i32 8), align 8
  %30 = call i32 @add_target(%struct.TYPE_6__* @mips_ops)
  %31 = call i32 @add_target(%struct.TYPE_6__* @pmon_ops)
  %32 = call i32 @add_target(%struct.TYPE_6__* @ddb_ops)
  %33 = call i32 @add_target(%struct.TYPE_6__* @lsi_ops)
  %34 = load i32, i32* @no_class, align 4
  %35 = load i32, i32* @var_zinteger, align 4
  %36 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %34, i32 %35, i8* bitcast (i32* @mips_receive_wait to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32* @setlist)
  %37 = call i32 @add_show_from_set(i32 %36, i32* @showlist)
  %38 = load i32, i32* @no_class, align 4
  %39 = load i32, i32* @var_zinteger, align 4
  %40 = call i32 @add_set_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %38, i32 %39, i8* bitcast (i32* @mips_retransmit_wait to i8*), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.11, i64 0, i64 0), i32* @setlist)
  %41 = call i32 @add_show_from_set(i32 %40, i32* @showlist)
  %42 = load i32, i32* @no_class, align 4
  %43 = load i32, i32* @var_zinteger, align 4
  %44 = call i32 @add_set_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %42, i32 %43, i8* bitcast (i32* @mips_syn_garbage to i8*), i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.13, i64 0, i64 0), i32* @setlist)
  %45 = call i32 @add_show_from_set(i32 %44, i32* @showlist)
  %46 = load i32, i32* @class_obscure, align 4
  %47 = load i32, i32* @var_string, align 4
  %48 = call i32 @add_set_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %46, i32 %47, i8* bitcast (i32* @mips_monitor_prompt to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32* @setlist)
  %49 = call i32 @add_show_from_set(i32 %48, i32* @showlist)
  %50 = load i32, i32* @class_obscure, align 4
  %51 = load i32, i32* @var_zinteger, align 4
  %52 = call i32 @add_set_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %50, i32 %51, i8* bitcast (i32* @monitor_warnings to i8*), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.17, i64 0, i64 0), i32* @setlist)
  %53 = call i32 @add_show_from_set(i32 %52, i32* @showlist)
  %54 = load i32, i32* @class_obscure, align 4
  %55 = load i32, i32* @pmon_command, align 4
  %56 = call i32 @add_com(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %54, i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  %57 = load i32, i32* @no_class, align 4
  %58 = load i32, i32* @var_boolean, align 4
  %59 = call i32 @add_set_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %57, i32 %58, i8* @mask_address_p, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.21, i64 0, i64 0), i32* @setlist)
  %60 = call i32 @add_show_from_set(i32 %59, i32* @showlist)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @add_target(%struct.TYPE_6__*) #2

declare dso_local i32 @add_show_from_set(i32, i32*) #2

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #2

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
