; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_threads_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_threads_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_state = type { i32 }

@remote_desc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Command can only be used when connected to the remote target.\00", align 1
@use_threadinfo_query = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"qfThreadInfo\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"qsThreadInfo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remote_threads_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_threads_info() #0 {
  %1 = alloca %struct.remote_state*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %5, %struct.remote_state** %1, align 8
  %6 = load %struct.remote_state*, %struct.remote_state** %1, align 8
  %7 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @alloca(i32 %8)
  store i8* %9, i8** %2, align 8
  %10 = load i64, i64* @remote_desc, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i64, i64* @use_threadinfo_query, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %14
  %18 = call i32 @putpkt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %2, align 8
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.remote_state*, %struct.remote_state** %1, align 8
  %22 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @getpkt(i8* %20, i32 %23, i32 0)
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %59, %30
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 109
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strtol(i8* %39, i8** %3, i32 16)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pid_to_ptid(i32 %44)
  %46 = call i32 @in_thread_list(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pid_to_ptid(i32 %49)
  %51 = call i32 @add_thread(i32 %50)
  br label %52

52:                                               ; preds = %48, %43, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 44
  br i1 %58, label %38, label %59

59:                                               ; preds = %53
  %60 = call i32 @putpkt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %2, align 8
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.remote_state*, %struct.remote_state** %1, align 8
  %64 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @getpkt(i8* %62, i32 %65, i32 0)
  br label %31

67:                                               ; preds = %31
  br label %71

68:                                               ; preds = %17
  br label %69

69:                                               ; preds = %68, %14
  store i64 0, i64* @use_threadinfo_query, align 8
  %70 = call i32 (...) @remote_find_new_threads()
  br label %71

71:                                               ; preds = %69, %67
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @in_thread_list(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @add_thread(i32) #1

declare dso_local i32 @remote_find_new_threads(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
