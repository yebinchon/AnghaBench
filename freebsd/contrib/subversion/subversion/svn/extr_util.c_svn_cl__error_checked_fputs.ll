; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__error_checked_fputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__error_checked_fputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@SVN_ERR_IO_WRITE_ERROR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__error_checked_fputs(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* @errno, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @fputs(i8* %6, i32* %7)
  %9 = load i64, i64* @EOF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = call i64 (...) @apr_get_os_error()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i64 (...) @apr_get_os_error()
  %16 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* @svn_error_wrap_apr(i64 %15, i32 %16)
  store i32* %17, i32** %3, align 8
  br label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @SVN_ERR_IO_WRITE_ERROR, align 4
  %20 = call i32* @svn_error_create(i32 %19, i32* null, i32* null)
  store i32* %20, i32** %3, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %3, align 8
  br label %23

23:                                               ; preds = %21, %18, %14
  %24 = load i32*, i32** %3, align 8
  ret i32* %24
}

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i64 @apr_get_os_error(...) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
