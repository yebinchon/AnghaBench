; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_initialize_remote_fileio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_initialize_remote_fileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"system-call-allowed\00", align 1
@no_class = common dso_local global i32 0, align 4
@set_system_call_allowed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Set if the host system(3) call is allowed for the target.\0A\00", align 1
@show_system_call_allowed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Show if the host system(3) call is allowed for the target.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_remote_fileio(%struct.cmd_list_element* %0, %struct.cmd_list_element* %1) #0 {
  %3 = alloca %struct.cmd_list_element*, align 8
  %4 = alloca %struct.cmd_list_element*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %3, align 8
  store %struct.cmd_list_element* %1, %struct.cmd_list_element** %4, align 8
  %5 = load i32, i32* @no_class, align 4
  %6 = load i32, i32* @set_system_call_allowed, align 4
  %7 = call i32 @add_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), %struct.cmd_list_element** %3)
  %8 = load i32, i32* @no_class, align 4
  %9 = load i32, i32* @show_system_call_allowed, align 4
  %10 = call i32 @add_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), %struct.cmd_list_element** %4)
  ret void
}

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
