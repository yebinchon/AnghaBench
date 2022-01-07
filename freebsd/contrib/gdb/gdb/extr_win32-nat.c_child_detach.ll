; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DBG_CONTINUE = common dso_local global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't detach process %lu (error %lu)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Detaching from program: %s, Pid %lu\0A\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@child_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @child_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_detach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = call i64 (...) @has_detach_ability()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = call i32 @delete_command(i32* null, i32 0)
  %11 = load i32, i32* @DBG_CONTINUE, align 4
  %12 = call i32 @child_continue(i32 %11, i32 -1)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_event, i32 0, i32 0), align 4
  %14 = call i32 @DebugActiveProcessStop(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_event, i32 0, i32 0), align 4
  %18 = call i8* (...) @GetLastError()
  %19 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @DebugSetProcessKillOnExit(i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = call i8* @get_exec_file(i32 0)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_event, i32 0, i32 0), align 4
  %37 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* @gdb_stdout, align 4
  %39 = call i32 @gdb_flush(i32 %38)
  br label %40

40:                                               ; preds = %34, %26, %23
  %41 = load i32, i32* @null_ptid, align 4
  store i32 %41, i32* @inferior_ptid, align 4
  %42 = call i32 @unpush_target(i32* @child_ops)
  ret void
}

declare dso_local i64 @has_detach_ability(...) #1

declare dso_local i32 @delete_command(i32*, i32) #1

declare dso_local i32 @child_continue(i32, i32) #1

declare dso_local i32 @DebugActiveProcessStop(i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @DebugSetProcessKillOnExit(i32) #1

declare dso_local i8* @get_exec_file(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @unpush_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
