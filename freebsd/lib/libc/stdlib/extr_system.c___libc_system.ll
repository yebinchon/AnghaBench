; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_system.c___libc_system.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_system.c___libc_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }
%struct.rusage = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__libc_system(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigaction, align 4
  %8 = alloca %struct.sigaction, align 4
  %9 = alloca %struct.sigaction, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = call i32 @sigemptyset(i32* %10)
  %17 = load i32, i32* @SIGCHLD, align 4
  %18 = call i32 @sigaddset(i32* %10, i32 %17)
  %19 = load i32, i32* @SIGINT, align 4
  %20 = call i32 @sigaddset(i32* %10, i32 %19)
  %21 = load i32, i32* @SIGQUIT, align 4
  %22 = call i32 @sigaddset(i32* %10, i32 %21)
  %23 = load i32, i32* @SIG_BLOCK, align 4
  %24 = call i32 @__libc_sigprocmask(i32 %23, i32* %10, i32* %11)
  %25 = call i32 @vfork() #4
  store i32 %25, i32* %4, align 4
  switch i32 %25, label %36 [
    i32 -1, label %26
    i32 0, label %29
  ]

26:                                               ; preds = %15
  %27 = load i32, i32* @SIG_SETMASK, align 4
  %28 = call i32 @__libc_sigprocmask(i32 %27, i32* %11, i32* null)
  store i32 -1, i32* %2, align 4
  br label %73

29:                                               ; preds = %15
  %30 = load i32, i32* @SIG_SETMASK, align 4
  %31 = call i32 @__sys_sigprocmask(i32 %30, i32* %11, i32* null)
  %32 = load i32, i32* @_PATH_BSHELL, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @execl(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* null)
  %35 = call i32 @_exit(i32 127) #5
  unreachable

36:                                               ; preds = %15
  %37 = call i32 @memset(%struct.sigaction* %7, i32 0, i32 8)
  %38 = load i32, i32* @SIG_IGN, align 4
  %39 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  %41 = call i32 @sigemptyset(i32* %40)
  %42 = load i32, i32* @SIGINT, align 4
  %43 = call i32 @__libc_sigaction(i32 %42, %struct.sigaction* %7, %struct.sigaction* %8)
  %44 = load i32, i32* @SIGQUIT, align 4
  %45 = call i32 @__libc_sigaction(i32 %44, %struct.sigaction* %7, %struct.sigaction* %9)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %57, %36
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @_wait4(i32 %48, i32* %6, i32 0, %struct.rusage* null)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINTR, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %47, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* @SIGINT, align 4
  %61 = call i32 @__libc_sigaction(i32 %60, %struct.sigaction* %8, %struct.sigaction* null)
  %62 = load i32, i32* @SIGQUIT, align 4
  %63 = call i32 @__libc_sigaction(i32 %62, %struct.sigaction* %9, %struct.sigaction* null)
  %64 = load i32, i32* @SIG_SETMASK, align 4
  %65 = call i32 @__libc_sigprocmask(i32 %64, i32* %11, i32* null)
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ -1, %68 ], [ %70, %69 ]
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %26, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @__libc_sigprocmask(i32, i32*, i32*) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @execl(i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @__libc_sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @_wait4(i32, i32*, i32, %struct.rusage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
