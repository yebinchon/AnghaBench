; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c__initialize_remote_rdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c__initialize_remote_rdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@arm_rdi_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rdi.log\00", align 1
@log_filename = common dso_local global i32 0, align 4
@log_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rdilogfile\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@rdilogfile_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [229 x i8] c"Set filename for ADP packet log.\0AThis file is used to log Angel Debugger Protocol packets.\0AWith a single argument, sets the logfile name to that value.\0AWithout an argument, shows the current logfile name.\0ASee also: rdilogenable\0A\00", align 1
@maintenancelist = common dso_local global i32 0, align 4
@filename_completer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"rdilogenable\00", align 1
@rdilogenable_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [264 x i8] c"Set enable logging of ADP packets.\0AThis will log ADP packets exchanged between gdb and the\0Ardi target device.\0AAn argument of 1, t, true, y or yes will enable.\0AAn argument of 0, f, false, n or no will disabled.\0AWithough an argument, it will display current state.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rdiromatzero\00", align 1
@no_class = common dso_local global i32 0, align 4
@rom_at_zero = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [168 x i8] c"Set target has ROM at addr 0.\0AA true value disables vector catching, false enables vector catching.\0AThis is evaluated at the time the 'target rdi' command is executed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Show if target has ROM at addr 0.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"rdiheartbeat\00", align 1
@rdi_heartbeat = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [176 x i8] c"Set enable for ADP heartbeat packets.\0AI don't know why you would want this. If you enable them,\0Ait will confuse ARM and EPI JTAG interface boxes as well\0Aas the Angel Monitor.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Show enable for ADP heartbeat packets.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote_rdi() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = call i32 (...) @init_rdi_ops()
  %3 = call i32 @add_target(i32* @arm_rdi_ops)
  %4 = call i32 @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @log_filename, align 4
  %5 = load i32, i32* @log_filename, align 4
  %6 = call i32 @Adp_SetLogfile(i32 %5)
  %7 = load i32, i32* @log_enable, align 4
  %8 = call i32 @Adp_SetLogEnable(i32 %7)
  %9 = load i32, i32* @class_maintenance, align 4
  %10 = load i32, i32* @rdilogfile_command, align 4
  %11 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.2, i64 0, i64 0), i32* @maintenancelist)
  store %struct.cmd_list_element* %11, %struct.cmd_list_element** %1, align 8
  %12 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %13 = load i32, i32* @filename_completer, align 4
  %14 = call i32 @set_cmd_completer(%struct.cmd_list_element* %12, i32 %13)
  %15 = load i32, i32* @class_maintenance, align 4
  %16 = load i32, i32* @rdilogenable_command, align 4
  %17 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.4, i64 0, i64 0), i32* @maintenancelist)
  %18 = load i32, i32* @no_class, align 4
  %19 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %18, i32* @rom_at_zero, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i32* @setlist, i32* @showlist)
  %20 = load i32, i32* @no_class, align 4
  %21 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %20, i32* @rdi_heartbeat, i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null, i32* @setlist, i32* @showlist)
  ret void
}

declare dso_local i32 @init_rdi_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @Adp_SetLogfile(i32) #1

declare dso_local i32 @Adp_SetLogEnable(i32) #1

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
