; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline_fputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline_fputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EOF = common dso_local global i64 0, align 8
@SVN_ERR_IO_PIPE_WRITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@SVN_ERR_IO_WRITE_ERROR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@shortcut_stderr_to_console = common dso_local global i64 0, align 8
@shortcut_stdout_to_console = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cmdline_fputs(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32* @svn_cmdline_cstring_from_utf8(i8** %9, i8* %10, i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @svn_error_clear(i32* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @svn_cmdline_cstring_from_utf8_fuzzy(i8* %18, i32* %19)
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %15, %3
  store i64 0, i64* @errno, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @fputs(i8* %22, i32* %23)
  %25 = load i64, i64* @EOF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = call i64 (...) @apr_get_os_error()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = call i64 (...) @apr_get_os_error()
  %32 = call i64 @SVN__APR_STATUS_IS_EPIPE(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @SVN_ERR_IO_PIPE_WRITE_ERROR, align 4
  %36 = call i32* @svn_error_create(i32 %35, i32* null, i32* null)
  store i32* %36, i32** %4, align 8
  br label %46

37:                                               ; preds = %30
  %38 = call i64 (...) @apr_get_os_error()
  %39 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %40 = call i32* @svn_error_wrap_apr(i64 %38, i32 %39)
  store i32* %40, i32** %4, align 8
  br label %46

41:                                               ; preds = %27
  %42 = load i32, i32* @SVN_ERR_IO_WRITE_ERROR, align 4
  %43 = call i32* @svn_error_create(i32 %42, i32* null, i32* null)
  store i32* %43, i32** %4, align 8
  br label %46

44:                                               ; preds = %21
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %44, %41, %37, %34
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i32* @svn_cmdline_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i8* @svn_cmdline_cstring_from_utf8_fuzzy(i8*, i32*) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i64 @apr_get_os_error(...) #1

declare dso_local i64 @SVN__APR_STATUS_IS_EPIPE(i64) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
