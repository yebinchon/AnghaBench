; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_server_accept_inetd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_server_accept_inetd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@startup_pipe = common dso_local global i32 0, align 4
@rexeced_flag = common dso_local global i64 0, align 8
@REEXEC_CONFIG_PASS_FD = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@debug_flag = common dso_local global i32 0, align 4
@REEXEC_STARTUP_PIPE_FD = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@log_stderr = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"inetd sockets after dupping: %d, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @server_accept_inetd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_accept_inetd(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* @startup_pipe, align 4
  %6 = load i64, i64* @rexeced_flag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i32, i32* @REEXEC_CONFIG_PASS_FD, align 4
  %10 = call i32 @close(i32 %9)
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = call i8* @dup(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @debug_flag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %8
  %19 = load i32, i32* @REEXEC_STARTUP_PIPE_FD, align 4
  %20 = call i8* @dup(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* @startup_pipe, align 4
  %22 = load i32, i32* @REEXEC_STARTUP_PIPE_FD, align 4
  %23 = call i32 @close(i32 %22)
  br label %24

24:                                               ; preds = %18, %8
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @STDIN_FILENO, align 4
  %27 = call i8* @dup(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @STDOUT_FILENO, align 4
  %31 = call i8* @dup(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %24
  %35 = load i32, i32* @_PATH_DEVNULL, align 4
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = call i32 @open(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @STDIN_FILENO, align 4
  %42 = call i32 @dup2(i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @STDOUT_FILENO, align 4
  %45 = call i32 @dup2(i32 %43, i32 %44)
  %46 = load i64, i64* @log_stderr, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @STDERR_FILENO, align 4
  %51 = call i32 @dup2(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @log_stderr, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @STDERR_FILENO, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @STDOUT_FILENO, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = icmp sgt i32 %53, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %71)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i8* @dup(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
