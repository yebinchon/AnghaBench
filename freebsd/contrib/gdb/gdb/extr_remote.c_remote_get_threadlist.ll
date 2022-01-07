; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_get_threadlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_get_threadlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_state = type { i32 }

@remote_get_threadlist.echo_nextthread = internal global i32 0, align 4
@BUF_THREAD_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"HMM: threadlist did not echo arg thread, dropping it\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"RMT ERROR : failed to get remote thread list\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"RMT ERROR: threadlist response longer than requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32*, i32*)* @remote_get_threadlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_get_threadlist(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.remote_state*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %18, %struct.remote_state** %14, align 8
  %19 = load %struct.remote_state*, %struct.remote_state** %14, align 8
  %20 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @alloca(i32 %21)
  store i8* %22, i8** %15, align 8
  %23 = load %struct.remote_state*, %struct.remote_state** %14, align 8
  %24 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @alloca(i32 %25)
  store i8* %26, i8** %16, align 8
  store i32 1, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @BUF_THREAD_ID_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %30, 10
  %32 = load %struct.remote_state*, %struct.remote_state** %14, align 8
  %33 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load %struct.remote_state*, %struct.remote_state** %14, align 8
  %38 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BUF_THREAD_ID_SIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %36, %6
  %44 = load i8*, i8** %15, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @pack_threadlist_request(i8* %44, i32 %45, i32 %46, i32* %47)
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @putpkt(i8* %49)
  %51 = load i8*, i8** %16, align 8
  %52 = load %struct.remote_state*, %struct.remote_state** %14, align 8
  %53 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @getpkt(i8* %51, i32 %54, i32 0)
  %56 = load i8*, i8** %16, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @parse_threadlist_response(i8* %57, i32 %58, i32* @remote_get_threadlist.echo_nextthread, i32* %59, i32* %60)
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @threadmatch(i32* @remote_get_threadlist.echo_nextthread, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %43
  %67 = call i32 @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %90

68:                                               ; preds = %43
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %7, align 4
  br label %90

80:                                               ; preds = %68
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  store i32 0, i32* %86, align 4
  %87 = call i32 @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %85, %78, %66
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @pack_threadlist_request(i8*, i32, i32, i32*) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @parse_threadlist_response(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @threadmatch(i32*, i32*) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
