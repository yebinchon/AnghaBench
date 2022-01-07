; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_file_flush_to_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_file_flush_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Can't get file name\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't flush file '%s' to disk\00", align 1
@F_FULLFSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_file_flush_to_disk(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @apr_file_name_get(i8** %7, i32* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = call i32* (i32, i32, ...) @svn_error_wrap_apr(i32 %16, i32 %17)
  store i32* %18, i32** %3, align 8
  br label %59

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @svn_io_file_flush(i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @apr_os_file_get(i32* %6, i32* %24)
  br label %26

26:                                               ; preds = %36, %19
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fsync(i32 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 (...) @apr_get_os_error()
  %34 = call i64 @APR_STATUS_IS_EINTR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %26, label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = call i32 (...) @apr_get_os_error()
  %43 = call i64 @APR_STATUS_IS_EINVAL(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %3, align 8
  br label %59

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = call i32 (...) @apr_get_os_error()
  %52 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @try_utf8_from_internal_style(i8* %53, i32* %54)
  %56 = call i32* (i32, i32, ...) @svn_error_wrap_apr(i32 %51, i32 %52, i32 %55)
  store i32* %56, i32** %3, align 8
  br label %59

57:                                               ; preds = %47
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %57, %50, %45, %14
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i64 @apr_file_name_get(i8**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_flush(i32*, i32*) #1

declare dso_local i32 @apr_os_file_get(i32*, i32*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i64 @APR_STATUS_IS_EINTR(i32) #1

declare dso_local i32 @apr_get_os_error(...) #1

declare dso_local i64 @APR_STATUS_IS_EINVAL(i32) #1

declare dso_local i32 @try_utf8_from_internal_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
