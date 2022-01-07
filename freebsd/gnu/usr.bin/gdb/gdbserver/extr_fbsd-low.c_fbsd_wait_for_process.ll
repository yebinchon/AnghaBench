; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_wait_for_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_wait_for_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.process_info = type { i32, i32, i32, i64 }

@WNOHANG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Got an event from %d (%x)\0A\00", align 1
@all_processes = common dso_local global i32 0, align 4
@all_threads = common dso_local global i32 0, align 4
@current_inferior = common dso_local global %struct.thread_info* null, align 8
@the_low_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.process_info**, i32*)* @fbsd_wait_for_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_wait_for_process(%struct.process_info** %0, i32* %1) #0 {
  %3 = alloca %struct.process_info**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.process_info** %0, %struct.process_info*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.process_info**, %struct.process_info*** %3, align 8
  %8 = load %struct.process_info*, %struct.process_info** %7, align 8
  %9 = icmp ne %struct.process_info* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.process_info**, %struct.process_info*** %3, align 8
  %12 = load %struct.process_info*, %struct.process_info** %11, align 8
  %13 = getelementptr inbounds %struct.process_info, %struct.process_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %10, %2
  br label %16

16:                                               ; preds = %15, %35
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @WNOHANG, align 4
  %20 = call i32 @waitpid(i32 %17, i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ECHILD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @perror_with_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  br label %35

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %29
  %36 = call i32 @usleep(i32 1000)
  br label %16

37:                                               ; preds = %33
  %38 = load i64, i64* @debug_threads, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @WIFSTOPPED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @WSTOPSIG(i32 %47)
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @WSTOPSIG(i32 %52)
  %54 = icmp ne i32 %53, 33
  br i1 %54, label %55, label %61

55:                                               ; preds = %50, %40
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %50, %45, %37
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @find_inferior_id(i32* @all_processes, i32 %65)
  %67 = inttoptr i64 %66 to %struct.process_info*
  %68 = load %struct.process_info**, %struct.process_info*** %3, align 8
  store %struct.process_info* %67, %struct.process_info** %68, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.process_info**, %struct.process_info*** %3, align 8
  %71 = load %struct.process_info*, %struct.process_info** %70, align 8
  %72 = getelementptr inbounds %struct.process_info, %struct.process_info* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.process_info**, %struct.process_info*** %3, align 8
  %74 = load %struct.process_info*, %struct.process_info** %73, align 8
  %75 = getelementptr inbounds %struct.process_info, %struct.process_info* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* @debug_threads, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %69
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @WIFSTOPPED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.process_info**, %struct.process_info*** %3, align 8
  %85 = load %struct.process_info*, %struct.process_info** %84, align 8
  %86 = getelementptr inbounds %struct.process_info, %struct.process_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @find_inferior_id(i32* @all_threads, i32 %87)
  %89 = inttoptr i64 %88 to %struct.thread_info*
  store %struct.thread_info* %89, %struct.thread_info** @current_inferior, align 8
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @the_low_target, i32 0, i32 0), align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 (...) @get_stop_pc()
  br label %94

94:                                               ; preds = %92, %83
  br label %95

95:                                               ; preds = %94, %78, %69
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @find_inferior_id(i32*, i32) #1

declare dso_local i32 @get_stop_pc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
