; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, %struct.target_waitstatus*)* }
%struct.target_waitstatus = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@debug_target = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"target_wait (%d, status) = %d,   \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"status->kind = \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"exited, status = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"stopped, signal = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"signalled, signal = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"loaded\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"forked\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"vforked\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"execd\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"spurious\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"unknown???\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @debug_to_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_to_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_waitstatus*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  %6 = load i32 (i32, %struct.target_waitstatus*)*, i32 (i32, %struct.target_waitstatus*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_target, i32 0, i32 0), align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %9 = call i32 %6(i32 %7, %struct.target_waitstatus* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @gdb_stdlog, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @PIDGET(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @PIDGET(i32 %13)
  %15 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = load i32, i32* @gdb_stdlog, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %19 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %59 [
    i32 134, label %21
    i32 129, label %28
    i32 131, label %36
    i32 132, label %44
    i32 133, label %47
    i32 128, label %50
    i32 135, label %53
    i32 130, label %56
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @gdb_stdlog, align 4
  %23 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %24 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %62

28:                                               ; preds = %2
  %29 = load i32, i32* @gdb_stdlog, align 4
  %30 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %31 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @target_signal_to_name(i32 %33)
  %35 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %62

36:                                               ; preds = %2
  %37 = load i32, i32* @gdb_stdlog, align 4
  %38 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %39 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @target_signal_to_name(i32 %41)
  %43 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %62

44:                                               ; preds = %2
  %45 = load i32, i32* @gdb_stdlog, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %62

47:                                               ; preds = %2
  %48 = load i32, i32* @gdb_stdlog, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %62

50:                                               ; preds = %2
  %51 = load i32, i32* @gdb_stdlog, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %62

53:                                               ; preds = %2
  %54 = load i32, i32* @gdb_stdlog, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %62

56:                                               ; preds = %2
  %57 = load i32, i32* @gdb_stdlog, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @gdb_stdlog, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56, %53, %50, %47, %44, %36, %28, %21
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @target_signal_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
