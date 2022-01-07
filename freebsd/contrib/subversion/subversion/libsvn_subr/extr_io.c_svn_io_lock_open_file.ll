; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_lock_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_lock_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_FLOCK_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't get file name\00", align 1
@APR_FLOCK_TYPEMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't get shared lock on file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't get exclusive lock on file '%s'\00", align 1
@file_clear_locks = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_lock_open_file(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 128, i32* %10, align 4
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 129, i32* %10, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @APR_FLOCK_NONBLOCK, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @apr_file_name_get(i8** %12, i32* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %29, i32 %30)
  store i32* %31, i32** %5, align 8
  br label %71

32:                                               ; preds = %23
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @apr_file_lock(i32* %33, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @apr_file_lock(i32* %37, i32 %38)
  %40 = call i32 @FILE_LOCK_RETRY_LOOP(i64 %36, i64 %39)
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @APR_FLOCK_TYPEMASK, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %61 [
    i32 128, label %47
    i32 129, label %54
  ]

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %12, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @try_utf8_from_internal_style(i8* %50, i32* %51)
  %53 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %48, i32 %49, i32 %52)
  store i32* %53, i32** %5, align 8
  br label %71

54:                                               ; preds = %43
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %12, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @try_utf8_from_internal_style(i8* %57, i32* %58)
  %60 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %55, i32 %56, i32 %59)
  store i32* %60, i32** %5, align 8
  br label %71

61:                                               ; preds = %43
  %62 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @file_clear_locks, align 4
  %68 = load i32, i32* @apr_pool_cleanup_null, align 4
  %69 = call i32 @apr_pool_cleanup_register(i32* %65, i32* %66, i32 %67, i32 %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %5, align 8
  br label %71

71:                                               ; preds = %64, %54, %47, %28
  %72 = load i32*, i32** %5, align 8
  ret i32* %72
}

declare dso_local i64 @apr_file_name_get(i8**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @apr_file_lock(i32*, i32) #1

declare dso_local i32 @FILE_LOCK_RETRY_LOOP(i64, i64) #1

declare dso_local i32 @try_utf8_from_internal_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
