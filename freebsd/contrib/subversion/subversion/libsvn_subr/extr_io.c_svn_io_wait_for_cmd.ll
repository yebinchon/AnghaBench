; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_wait_for_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_wait_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_PROC_EXIT = common dso_local global i32 0, align 4
@APR_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error waiting for process '%s'\00", align 1
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Process '%s' failed (signal %d, core dumped)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Process '%s' failed (signal %d)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Process '%s' failed (exitwhy %d, exitcode %d)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Process '%s' returned error exitcode %d\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_wait_for_cmd(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @APR_PROC_EXIT, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @APR_WAIT, align 4
  %18 = call i32 @apr_proc_wait(i32* %16, i32* %14, i32* %13, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @APR_STATUS_IS_CHILD_DONE(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %8, align 8
  %26 = call i32* @svn_error_wrap_apr(i32 %23, i32 %24, i8* %25)
  store i32* %26, i32** %6, align 8
  br label %89

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  br label %71

33:                                               ; preds = %27
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @APR_PROC_CHECK_SIGNALED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @APR_PROC_CHECK_CORE_DUMP(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32* (i32, i32*, i32, i8*, i32, ...) @svn_error_createf(i32 %42, i32* null, i32 %43, i8* %44, i32 %45)
  store i32* %46, i32** %6, align 8
  br label %89

47:                                               ; preds = %37, %33
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @APR_PROC_CHECK_SIGNALED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32* (i32, i32*, i32, i8*, i32, ...) @svn_error_createf(i32 %52, i32* null, i32 %53, i8* %54, i32 %55)
  store i32* %56, i32** %6, align 8
  br label %89

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @APR_PROC_CHECK_EXIT(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32* (i32, i32*, i32, i8*, i32, ...) @svn_error_createf(i32 %62, i32* null, i32 %63, i8* %64, i32 %65, i32 %66)
  store i32* %67, i32** %6, align 8
  br label %89

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %87

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32* (i32, i32*, i32, i8*, i32, ...) @svn_error_createf(i32 %81, i32* null, i32 %82, i8* %83, i32 %84)
  store i32* %85, i32** %6, align 8
  br label %89

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %87, %80, %61, %51, %41, %22
  %90 = load i32*, i32** %6, align 8
  ret i32* %90
}

declare dso_local i32 @apr_proc_wait(i32*, i32*, i32*, i32) #1

declare dso_local i32 @APR_STATUS_IS_CHILD_DONE(i32) #1

declare dso_local i32* @svn_error_wrap_apr(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @APR_PROC_CHECK_SIGNALED(i32) #1

declare dso_local i64 @APR_PROC_CHECK_CORE_DUMP(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @APR_PROC_CHECK_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
