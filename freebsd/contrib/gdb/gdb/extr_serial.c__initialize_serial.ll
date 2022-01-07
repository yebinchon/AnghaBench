; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c__initialize_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c__initialize_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@serial_set_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Set default serial/parallel port configuration.\00", align 1
@serial_set_cmdlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"set serial \00", align 1
@setlist = common dso_local global i32 0, align 4
@serial_show_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Show default serial/parallel port configuration.\00", align 1
@serial_show_cmdlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"show serial \00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"remotelogfile\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_filename = common dso_local global i32 0, align 4
@serial_logfile = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [124 x i8] c"Set filename for remote session recording.\0AThis file is used to record the remote session for future playback\0Aby gdbserver.\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"remotelogbase\00", align 1
@logbase_enums = common dso_local global i32 0, align 4
@serial_logbase = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Set numerical base for remote session logging\00", align 1
@var_zinteger = common dso_local global i32 0, align 4
@global_serial_debug_p = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [71 x i8] c"Set serial debugging.\0AWhen non-zero, serial port debugging is enabled.\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4
@class_obscure = common dso_local global i32 0, align 4
@connect_command = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_serial() #0 {
  %1 = load i32, i32* @class_maintenance, align 4
  %2 = load i32, i32* @serial_set_cmd, align 4
  %3 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32* @serial_set_cmdlist, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @setlist)
  %4 = load i32, i32* @class_maintenance, align 4
  %5 = load i32, i32* @serial_show_cmd, align 4
  %6 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* @serial_show_cmdlist, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* @showlist)
  %7 = load i32, i32* @no_class, align 4
  %8 = load i32, i32* @var_filename, align 4
  %9 = call i32 @add_set_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %7, i32 %8, i8* bitcast (i32* @serial_logfile to i8*), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0), i32* @setlist)
  %10 = call i32 @add_show_from_set(i32 %9, i32* @showlist)
  %11 = load i32, i32* @no_class, align 4
  %12 = load i32, i32* @logbase_enums, align 4
  %13 = call i32 @add_set_enum_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %11, i32 %12, i32* @serial_logbase, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32* @setlist)
  %14 = call i32 @add_show_from_set(i32 %13, i32* @showlist)
  %15 = load i32, i32* @class_maintenance, align 4
  %16 = load i32, i32* @var_zinteger, align 4
  %17 = call i32 @add_set_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i8* bitcast (i32* @global_serial_debug_p to i8*), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0), i32* @setdebuglist)
  %18 = call i32 @add_show_from_set(i32 %17, i32* @showdebuglist)
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_set_enum_cmd(i8*, i32, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
