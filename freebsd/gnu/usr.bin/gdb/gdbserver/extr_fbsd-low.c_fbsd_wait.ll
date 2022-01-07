; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.thread_info = type { i32 }
%struct.thread_resume = type { i32, i64, i64, i64 }

@cont_thread = common dso_local global i64 0, align 8
@all_threads = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0AChild exited with retcode = %x \0A\00", align 1
@all_processes = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"\0AChild terminated with signal = %x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @fbsd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fbsd_wait(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.thread_resume, align 8
  store i8* %0, i8** %3, align 8
  store %struct.thread_info* null, %struct.thread_info** %5, align 8
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i64, i64* @cont_thread, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i64, i64* @cont_thread, align 8
  %12 = call i64 @find_inferior_id(%struct.TYPE_4__* @all_threads, i64 %11)
  %13 = inttoptr i64 %12 to %struct.thread_info*
  store %struct.thread_info* %13, %struct.thread_info** %5, align 8
  %14 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %15 = icmp eq %struct.thread_info* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %6, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %6, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %6, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %6, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = call i32 @fbsd_resume(%struct.thread_resume* %6)
  br label %22

22:                                               ; preds = %16, %10
  br label %23

23:                                               ; preds = %22, %7
  %24 = call i32 (...) @enable_async_io()
  %25 = call i32 (...) @unblock_async_io()
  %26 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %27 = call i32 @fbsd_wait_for_event(%struct.thread_info* %26)
  store i32 %27, i32* %4, align 4
  %28 = call i32 (...) @stop_all_processes()
  %29 = call i32 (...) @disable_async_io()
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @all_threads, i32 0, i32 0), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @all_threads, i32 0, i32 1), align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @WIFEXITED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WEXITSTATUS(i32 %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %3, align 8
  store i8 87, i8* %42, align 1
  %43 = call i32 (...) @clear_inferiors()
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @all_processes, i32 0, i32 1), align 8
  %45 = call i32 @free(i32 %44)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @all_processes, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @all_processes, i32 0, i32 1), align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @WEXITSTATUS(i32 %46)
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %2, align 1
  br label %78

49:                                               ; preds = %33
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WIFSTOPPED(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @WTERMSIG(i32 %55)
  %57 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i8*, i8** %3, align 8
  store i8 88, i8* %58, align 1
  %59 = call i32 (...) @clear_inferiors()
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @all_processes, i32 0, i32 1), align 8
  %61 = call i32 @free(i32 %60)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @all_processes, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @all_processes, i32 0, i32 1), align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @WTERMSIG(i32 %62)
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %2, align 1
  br label %78

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65
  br label %73

67:                                               ; preds = %23
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @WIFSTOPPED(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %7

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i8*, i8** %3, align 8
  store i8 84, i8* %74, align 1
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @WSTOPSIG(i32 %75)
  %77 = trunc i64 %76 to i8
  store i8 %77, i8* %2, align 1
  br label %78

78:                                               ; preds = %73, %53, %37
  %79 = load i8, i8* %2, align 1
  ret i8 %79
}

declare dso_local i64 @find_inferior_id(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @fbsd_resume(%struct.thread_resume*) #1

declare dso_local i32 @enable_async_io(...) #1

declare dso_local i32 @unblock_async_io(...) #1

declare dso_local i32 @fbsd_wait_for_event(%struct.thread_info*) #1

declare dso_local i32 @stop_all_processes(...) #1

declare dso_local i32 @disable_async_io(...) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @clear_inferiors(...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
