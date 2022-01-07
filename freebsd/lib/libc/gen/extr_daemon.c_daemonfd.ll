; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_daemon.c_daemonfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_daemon.c_daemonfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemonfd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2
  %12 = call i32 @sigemptyset(i32* %11)
  %13 = load i32, i32* @SIG_IGN, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @SIGHUP, align 4
  %17 = call i32 @__libc_sigaction(i32 %16, %struct.sigaction* %7, %struct.sigaction* %6)
  store i32 %17, i32* %10, align 4
  %18 = call i32 (...) @fork()
  switch i32 %18, label %21 [
    i32 -1, label %19
    i32 0, label %20
  ]

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  br label %23

21:                                               ; preds = %2
  %22 = call i32 @_exit(i32 0) #3
  unreachable

23:                                               ; preds = %20
  %24 = call i32 (...) @setsid()
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @SIGHUP, align 4
  %30 = call i32 @__libc_sigaction(i32 %29, %struct.sigaction* %6, %struct.sigaction* null)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %56

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @fchdir(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @STDIN_FILENO, align 4
  %48 = call i32 @_dup2(i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @STDOUT_FILENO, align 4
  %51 = call i32 @_dup2(i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @STDERR_FILENO, align 4
  %54 = call i32 @_dup2(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %42
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %34, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @__libc_sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @_dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
