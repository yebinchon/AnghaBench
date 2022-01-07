; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.pollfd = type { i64, i8*, i32 }

@POLLIN = common dso_local global i8* null, align 8
@POLLOUT = common dso_local global i8* null, align 8
@user_abort_pipe = common dso_local global i32* null, align 8
@user_abort = common dso_local global i64 0, align 8
@IO_WAIT_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s: poll() failed: %s\00", align 1
@opt_flush_timeout = common dso_local global i64 0, align 8
@flush_needed = common dso_local global i32 0, align 4
@IO_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@IO_WAIT_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @io_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_wait(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.pollfd], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 16
  %18 = load i8*, i8** @POLLIN, align 8
  %19 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 16
  %27 = load i8*, i8** @POLLOUT, align 8
  %28 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %21, %12
  %31 = load i32*, i32** @user_abort_pipe, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @POLLIN, align 8
  %37 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %30, %58, %93
  %40 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @poll(%struct.pollfd* %40, i32 2, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* @user_abort, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @IO_WAIT_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %94

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EINTR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EAGAIN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  br label %39

59:                                               ; preds = %54
  %60 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @strerror(i64 %73)
  %75 = call i32 @message_error(i32 %60, i32 %72, i32 %74)
  %76 = load i32, i32* @IO_WAIT_ERROR, align 4
  store i32 %76, i32* %4, align 4
  br label %94

77:                                               ; preds = %47
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* @opt_flush_timeout, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  store i32 1, i32* @flush_needed, align 4
  %85 = load i32, i32* @IO_WAIT_TIMEOUT, align 4
  store i32 %85, i32* %4, align 4
  br label %94

86:                                               ; preds = %77
  %87 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %88 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 16
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @IO_WAIT_MORE, align 4
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %86
  br label %39

94:                                               ; preds = %91, %80, %71, %45
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @message_error(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
