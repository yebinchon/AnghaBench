; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prompt.c_terminal_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_prompt.c_terminal_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i32, %struct.termios, i32 }
%struct.termios = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@APR_FOPEN_READ = common dso_local global i32 0, align 4
@APR_FOPEN_WRITE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't open stdin\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Can't open stderr\00", align 1
@terminal_plain_cleanup = common dso_local global i32 0, align 4
@terminal_child_cleanup = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@ECHO = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ISIG = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i8*, i32*)* @terminal_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @terminal_open(%struct.TYPE_6__** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @APR_FOPEN_READ, align 4
  %13 = load i32, i32* @APR_FOPEN_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @APR_OS_DEFAULT, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @apr_file_open(i32** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call %struct.TYPE_6__* @apr_palloc(i32* %18, i32 56)
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @terminal_handle_init(%struct.TYPE_6__* %25, i32* %26, i32* %27, i8* %28, i8* %29, i32* %30)
  br label %59

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @apr_file_open_stdin(i32** %10, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32* @svn_error_wrap_apr(i32 %38, i32 %39)
  store i32* %40, i32** %4, align 8
  br label %70

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @apr_file_open_stderr(i32** %11, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32* @svn_error_wrap_apr(i32 %47, i32 %48)
  store i32* %49, i32** %4, align 8
  br label %70

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @terminal_handle_init(%struct.TYPE_6__* %52, i32* %53, i32* %54, i8* %55, i8* %56, i32* %57)
  br label %59

59:                                               ; preds = %50, %23
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* @terminal_plain_cleanup, align 4
  %67 = load i32, i32* @terminal_child_cleanup, align 4
  %68 = call i32 @apr_pool_cleanup_register(i32 %63, %struct.TYPE_6__* %65, i32 %66, i32 %67)
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %59, %46, %37
  %71 = load i32*, i32** %4, align 8
  ret i32* %71
}

declare dso_local i32 @apr_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @terminal_handle_init(%struct.TYPE_6__*, i32*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @apr_file_open_stdin(i32**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_file_open_stderr(i32**, i32*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
