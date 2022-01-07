; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_error.c_svn_error__wrap_zlib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_error.c_svn_error__wrap_zlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z_OK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@APR_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@SVN_ERR_STREAM_UNRECOGNIZED_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"version error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"corrupt data\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"zlib (%s): %s: %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"zlib (%s): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_error__wrap_zlib(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @Z_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %4, align 8
  br label %49

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %32 [
    i32 129, label %17
    i32 130, label %20
    i32 132, label %23
    i32 128, label %26
    i32 131, label %29
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  store i32 %18, i32* %8, align 4
  %19 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  br label %35

20:                                               ; preds = %15
  %21 = load i32, i32* @APR_ENOMEM, align 4
  store i32 %21, i32* %8, align 4
  %22 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  br label %35

23:                                               ; preds = %15
  %24 = load i32, i32* @APR_ENOMEM, align 4
  store i32 %24, i32* %8, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %9, align 8
  br label %35

26:                                               ; preds = %15
  %27 = load i32, i32* @SVN_ERR_STREAM_UNRECOGNIZED_DATA, align 4
  store i32 %27, i32* %8, align 4
  %28 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %28, i8** %9, align 8
  br label %35

29:                                               ; preds = %15
  %30 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  store i32 %30, i32* %8, align 4
  %31 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %31, i8** %9, align 8
  br label %35

32:                                               ; preds = %15
  %33 = load i32, i32* @SVN_ERR_STREAM_UNRECOGNIZED_DATA, align 4
  store i32 %33, i32* %8, align 4
  %34 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %32, %29, %26, %23, %20, %17
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* (i32, i32*, i8*, i8*, i8*, ...) @svn_error_createf(i32 %39, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %40, i8* %41, i8* %42)
  store i32* %43, i32** %4, align 8
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32* (i32, i32*, i8*, i8*, i8*, ...) @svn_error_createf(i32 %45, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %46, i8* %47)
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %44, %38, %13
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
