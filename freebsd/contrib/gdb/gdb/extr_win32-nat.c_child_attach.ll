; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"process-id to attach\00", align 1
@SE_DEBUG_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Warning: Failed to get SE_DEBUG_NAME privilege\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"This can cause attach to fail on Windows NT/2K/XP\0A\00", align 1
@saw_create = common dso_local global i64 0, align 8
@CW_CYGWIN_PID_TO_WINPID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't attach to process.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@attach_flag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Attaching to program `%s', %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Attaching to %s\0A\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @child_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @error_no_arg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @SE_DEBUG_NAME, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i64 @set_process_privilege(i32 %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strtoul(i8* %21, i32 0, i32 0)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @DebugActiveProcess(i64 %23)
  store i64 %24, i64* %5, align 8
  store i64 0, i64* @saw_create, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @CW_CYGWIN_PID_TO_WINPID, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @cygwin_internal(i32 %28, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @DebugActiveProcess(i64 %34)
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %20
  %43 = call i64 (...) @has_detach_ability()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @DebugSetProcessKillOnExit(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  store i32 1, i32* @attach_flag, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = call i64 @get_exec_file(i32 0)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @pid_to_ptid(i64 %58)
  %60 = call i32 @target_pid_to_str(i32 %59)
  %61 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %60)
  br label %67

62:                                               ; preds = %51
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @pid_to_ptid(i64 %63)
  %65 = call i32 @target_pid_to_str(i32 %64)
  %66 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* @gdb_stdout, align 4
  %69 = call i32 @gdb_flush(i32 %68)
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @do_initial_child_stuff(i64 %71)
  %73 = call i32 (...) @target_terminal_ours()
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i64 @set_process_privilege(i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i32, i32) #1

declare dso_local i64 @DebugActiveProcess(i64) #1

declare dso_local i64 @cygwin_internal(i32, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @has_detach_ability(...) #1

declare dso_local i32 @DebugSetProcessKillOnExit(i32) #1

declare dso_local i64 @get_exec_file(i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @pid_to_ptid(i64) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @do_initial_child_stuff(i64) #1

declare dso_local i32 @target_terminal_ours(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
