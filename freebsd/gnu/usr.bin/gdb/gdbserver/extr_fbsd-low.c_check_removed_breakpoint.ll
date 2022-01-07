; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_check_removed_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_check_removed_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.TYPE_2__ = type { i32 (i64)*, i64 (i64)* }
%struct.process_info = type { i64, i64, i64, i64 }

@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Checking for breakpoint.\0A\00", align 1
@current_inferior = common dso_local global %struct.thread_info* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Ignoring, PC was changed.\0A\00", align 1
@the_low_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Ignoring, breakpoint is still present.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Removed breakpoint.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process_info*)* @check_removed_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_removed_breakpoint(%struct.process_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.process_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread_info*, align 8
  store %struct.process_info* %0, %struct.process_info** %3, align 8
  %6 = load %struct.process_info*, %struct.process_info** %3, align 8
  %7 = getelementptr inbounds %struct.process_info, %struct.process_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load i64, i64* @debug_threads, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.thread_info*, %struct.thread_info** @current_inferior, align 8
  store %struct.thread_info* %18, %struct.thread_info** %5, align 8
  %19 = load %struct.process_info*, %struct.process_info** %3, align 8
  %20 = call %struct.thread_info* @get_process_thread(%struct.process_info* %19)
  store %struct.thread_info* %20, %struct.thread_info** @current_inferior, align 8
  %21 = call i64 (...) @get_stop_pc()
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.process_info*, %struct.process_info** %3, align 8
  %24 = getelementptr inbounds %struct.process_info, %struct.process_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load i64, i64* @debug_threads, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.process_info*, %struct.process_info** %3, align 8
  %35 = getelementptr inbounds %struct.process_info, %struct.process_info* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  store %struct.thread_info* %36, %struct.thread_info** @current_inferior, align 8
  store i32 0, i32* %2, align 4
  br label %71

37:                                               ; preds = %17
  %38 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @the_low_target, i32 0, i32 1), align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 %38(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i64, i64* @debug_threads, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  store %struct.thread_info* %49, %struct.thread_info** @current_inferior, align 8
  store i32 0, i32* %2, align 4
  br label %71

50:                                               ; preds = %37
  %51 = load i64, i64* @debug_threads, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @the_low_target, i32 0, i32 0), align 8
  %58 = icmp ne i32 (i64)* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @the_low_target, i32 0, i32 0), align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 %60(i64 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.process_info*, %struct.process_info** %3, align 8
  %65 = getelementptr inbounds %struct.process_info, %struct.process_info* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.process_info*, %struct.process_info** %3, align 8
  %67 = getelementptr inbounds %struct.process_info, %struct.process_info* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.process_info*, %struct.process_info** %3, align 8
  %69 = getelementptr inbounds %struct.process_info, %struct.process_info* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  store %struct.thread_info* %70, %struct.thread_info** @current_inferior, align 8
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %48, %33, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.thread_info* @get_process_thread(%struct.process_info*) #1

declare dso_local i64 @get_stop_pc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
