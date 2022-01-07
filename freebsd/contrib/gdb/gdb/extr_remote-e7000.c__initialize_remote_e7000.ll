; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c__initialize_remote_e7000.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c__initialize_remote_e7000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e7000_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"e7000\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@e7000_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Send a command to the e7000 monitor.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ftplogin\00", align 1
@e7000_login_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Login to machine and change to directory.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ftpload\00", align 1
@e7000_ftp_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Fetch and load a file from previously described place.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"drain\00", align 1
@e7000_drain_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Drain pending e7000 text buffers.\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"usehardbreakpoints\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_integer = common dso_local global i32 0, align 4
@use_hard_breakpoints = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"Set use of hardware breakpoints for all breakpoints.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote_e7000() #0 {
  %1 = call i32 (...) @init_e7000_ops()
  %2 = call i32 @add_target(i32* @e7000_ops)
  %3 = load i32, i32* @class_obscure, align 4
  %4 = load i32, i32* @e7000_command, align 4
  %5 = call i32 @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @class_obscure, align 4
  %7 = load i32, i32* @e7000_login_command, align 4
  %8 = call i32 @add_com(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @class_obscure, align 4
  %10 = load i32, i32* @e7000_ftp_command, align 4
  %11 = call i32 @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %9, i32 %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %12 = load i32, i32* @class_obscure, align 4
  %13 = load i32, i32* @e7000_drain_command, align 4
  %14 = call i32 @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %12, i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %15 = load i32, i32* @no_class, align 4
  %16 = load i32, i32* @var_integer, align 4
  %17 = call i32 @add_set_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %15, i32 %16, i8* bitcast (i32* @use_hard_breakpoints to i8*), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32* @setlist)
  %18 = call i32 @add_show_from_set(i32 %17, i32* @showlist)
  ret void
}

declare dso_local i32 @init_e7000_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
