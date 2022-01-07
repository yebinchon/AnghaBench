; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prompt.c_terminal_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prompt.c_terminal_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.termios, i64, i32 }
%struct.termios = type { i8* }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_POLL_FILE = common dso_local global i32 0, align 4
@APR_POLLIN = common dso_local global i32 0, align 4
@TERMINAL_NONE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TERMINAL_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't read from terminal\00", align 1
@SIGTSTP = common dso_local global i32 0, align 4
@SVN_ERR_CANCELLED = common dso_local global i32 0, align 4
@TERMINAL_DEL = common dso_local global i32 0, align 4
@TERMINAL_EOL = common dso_local global i32 0, align 4
@VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, i32, i32*)* @terminal_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @terminal_getc(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @APR_POLL_FILE, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32* %29, i32** %30, align 8
  %31 = load i32, i32* @APR_POLLIN, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = call i64 @apr_poll(%struct.TYPE_8__* %13, i32 1, i32* %14, i32 -1)
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @APR_POLLIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %42, %36, %4
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @apr_file_getc(i8* %12, i32 %50)
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @APR_STATUS_IS_EINTR(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @TERMINAL_NONE, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %5, align 8
  br label %82

60:                                               ; preds = %52
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @APR_STATUS_IS_EOF(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @TERMINAL_EOF, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %5, align 8
  br label %82

68:                                               ; preds = %60
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %74 = call i32* @svn_error_wrap_apr(i64 %72, i32 %73)
  store i32* %74, i32** %5, align 8
  br label %82

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %77, %71, %64, %56
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i64 @apr_poll(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i64 @apr_file_getc(i8*, i32) #1

declare dso_local i64 @APR_STATUS_IS_EINTR(i64) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
