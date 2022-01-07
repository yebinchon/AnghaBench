; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_handle_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.target_waitstatus = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8* }

@TARGET_WAITKIND_STOPPED = common dso_local global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"gdb: Target exception ACCESS_VIOLATION at 0x%08x\0A\00", align 1
@TARGET_SIGNAL_SEGV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"gdb: Target exception STACK_OVERFLOW at 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"gdb: Target exception BREAKPOINT at 0x%08x\0A\00", align 1
@TARGET_SIGNAL_TRAP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"gdb: Target exception CONTROL_C at 0x%08x\0A\00", align 1
@TARGET_SIGNAL_INT = common dso_local global i8* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@last_sig = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"gdb: Target exception SINGLE_STEP at 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"gdb: Target exception SINGLE_ILL at 0x%08x\0A\00", align 1
@TARGET_SIGNAL_ILL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"gdb: unknown target exception 0x%08x at 0x%08x\0A\00", align 1
@TARGET_SIGNAL_UNKNOWN = common dso_local global i8* null, align 8
@exception_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_waitstatus*)* @handle_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exception(%struct.target_waitstatus* %0) #0 {
  %2 = alloca %struct.target_waitstatus*, align 8
  store %struct.target_waitstatus* %0, %struct.target_waitstatus** %2, align 8
  %3 = load i32, i32* @TARGET_WAITKIND_STOPPED, align 4
  %4 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %5 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  switch i32 %6, label %63 [
    i32 132, label %7
    i32 128, label %16
    i32 131, label %25
    i32 133, label %34
    i32 129, label %44
    i32 130, label %53
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %9 = zext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @DEBUG_EXCEPT(i8* %10)
  %12 = load i8*, i8** @TARGET_SIGNAL_SEGV, align 8
  %13 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %14 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  br label %71

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %18 = zext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @DEBUG_EXCEPT(i8* %19)
  %21 = load i8*, i8** @TARGET_SIGNAL_SEGV, align 8
  %22 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %23 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  br label %71

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %27 = zext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DEBUG_EXCEPT(i8* %28)
  %30 = load i8*, i8** @TARGET_SIGNAL_TRAP, align 8
  %31 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %32 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %71

34:                                               ; preds = %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @DEBUG_EXCEPT(i8* %37)
  %39 = load i8*, i8** @TARGET_SIGNAL_INT, align 8
  %40 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %41 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @SIGINT, align 4
  store i32 %43, i32* @last_sig, align 4
  br label %71

44:                                               ; preds = %1
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %46 = zext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @DEBUG_EXCEPT(i8* %47)
  %49 = load i8*, i8** @TARGET_SIGNAL_TRAP, align 8
  %50 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %51 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %71

53:                                               ; preds = %1
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @DEBUG_EXCEPT(i8* %56)
  %58 = load i32, i32* @TARGET_SIGNAL_ILL, align 4
  %59 = call i8* @check_for_step(%struct.TYPE_11__* @current_event, i32 %58)
  %60 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %61 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  br label %71

63:                                               ; preds = %1
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_event, i32 0, i32 0, i32 0, i32 0, i32 1), align 4
  %66 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i8*, i8** @TARGET_SIGNAL_UNKNOWN, align 8
  %68 = load %struct.target_waitstatus*, %struct.target_waitstatus** %2, align 8
  %69 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %53, %44, %34, %25, %16, %7
  %72 = load i32, i32* @exception_count, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @exception_count, align 4
  ret i32 1
}

declare dso_local i32 @DEBUG_EXCEPT(i8*) #1

declare dso_local i8* @check_for_step(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
