; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_data_available_handler_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_data_available_handler_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baton_apr = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@APR_POLL_FILE = common dso_local global i32 0, align 4
@APR_POLLIN = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_STREAM_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Polling for available data on filestream failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @data_available_handler_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @data_available_handler_apr(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.baton_apr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.baton_apr*
  store %struct.baton_apr* %11, %struct.baton_apr** %6, align 8
  %12 = load i32, i32* @APR_POLL_FILE, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load %struct.baton_apr*, %struct.baton_apr** %6, align 8
  %15 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.baton_apr*, %struct.baton_apr** %6, align 8
  %20 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @APR_POLLIN, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = call i64 @apr_poll(%struct.TYPE_5__* %8, i32 1, i32* %9, i32 0)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @APR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %3, align 8
  br label %53

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @APR_STATUS_IS_EOF(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @APR_STATUS_IS_TIMEUP(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %3, align 8
  br label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @SVN_ERR_STREAM_NOT_SUPPORTED, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %51 = call i32* @svn_error_wrap_apr(i64 %49, i32* %50)
  %52 = call i32* @svn_error_create(i32 %48, i32* %51, i32* null)
  store i32* %52, i32** %3, align 8
  br label %53

53:                                               ; preds = %47, %43, %29
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

declare dso_local i64 @apr_poll(%struct.TYPE_5__*, i32, i32*, i32) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i64 @APR_STATUS_IS_TIMEUP(i64) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32*) #1

declare dso_local i32* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
