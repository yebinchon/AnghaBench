; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_shelve-cmd.c_run_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_shelve-cmd.c_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Can't open stdout\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not run external command '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8**, i32*)* @run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_cmd(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @apr_file_open_stdout(i32** %9, i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = call i32* @svn_error_wrap_apr(i64 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @svn_io_run_cmd(i32* null, i8* %20, i8** %21, i32* %11, i32* null, i32 %22, i32* null, i32* %23, i32* null, i32* %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %5, align 8
  %36 = call i32* @svn_error_createf(i32 %32, i32* %33, i32 %34, i8* %35)
  store i32* %36, i32** %4, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %37, %31, %16
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i64 @apr_file_open_stdout(i32**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i8*) #1

declare dso_local i32* @svn_io_run_cmd(i32*, i8*, i8**, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
