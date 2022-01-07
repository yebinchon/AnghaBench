; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_main.c_VGLAbort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_main.c_VGLAbort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VGLAbortPending = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @VGLAbort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VGLAbort(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @VGLAbortPending, align 4
  %4 = load i32, i32* @SIGINT, align 4
  %5 = load i32, i32* @SIG_IGN, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGTERM, align 4
  %8 = load i32, i32* @SIG_IGN, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = load i32, i32* @SIGUSR2, align 4
  %11 = load i32, i32* @SIG_IGN, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SIGBUS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SIGSEGV, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SIG_DFL, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = call i32 @sigemptyset(i32* %3)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @sigaddset(i32* %3, i32 %25)
  %27 = load i32, i32* @SIG_UNBLOCK, align 4
  %28 = call i32 @sigprocmask(i32 %27, i32* %3, i32* null)
  %29 = call i32 (...) @VGLEnd()
  %30 = call i32 (...) @getpid()
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @kill(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @VGLEnd(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
