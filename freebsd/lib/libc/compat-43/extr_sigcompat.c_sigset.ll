; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/compat-43/extr_sigcompat.c_sigset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/compat-43/extr_sigcompat.c_sigset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { void (i32)* }

@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void (i32)* @sigset(i32 %0, void (i32)* %1) #0 {
  %3 = alloca void (i32)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %4, align 4
  store void (i32)* %1, void (i32)** %5, align 8
  %10 = call i32 @sigemptyset(i32* %6)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @sigaddset(i32* %6, i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %64

15:                                               ; preds = %2
  %16 = load i32, i32* @SIG_BLOCK, align 4
  %17 = call i32 @__libc_sigprocmask(i32 %16, i32* null, i32* %7)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %64

20:                                               ; preds = %15
  %21 = load void (i32)*, void (i32)** %5, align 8
  %22 = bitcast void (i32)* %21 to void (i32)**
  %23 = icmp eq void (i32)** %22, bitcast (void (i32)* @SIG_HOLD to void (i32)**)
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32, i32* @SIG_BLOCK, align 4
  %26 = call i32 @__libc_sigprocmask(i32 %25, i32* %6, i32* %7)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %64

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @sigismember(i32* %7, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store void (i32)* @SIG_HOLD, void (i32)** %3, align 8
  br label %64

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @__libc_sigaction(i32 %35, %struct.sigaction* null, %struct.sigaction* %9)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %64

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %41 = load void (i32)*, void (i32)** %40, align 8
  store void (i32)* %41, void (i32)** %3, align 8
  br label %64

42:                                               ; preds = %20
  %43 = load i32, i32* @SIG_UNBLOCK, align 4
  %44 = call i32 @__libc_sigprocmask(i32 %43, i32* %6, i32* %7)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %64

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47
  %49 = call i32 @bzero(%struct.sigaction* %8, i32 8)
  %50 = load void (i32)*, void (i32)** %5, align 8
  %51 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  store void (i32)* %50, void (i32)** %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @__libc_sigaction(i32 %52, %struct.sigaction* %8, %struct.sigaction* %9)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @sigismember(i32* %7, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store void (i32)* @SIG_HOLD, void (i32)** %3, align 8
  br label %64

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %63 = load void (i32)*, void (i32)** %62, align 8
  store void (i32)* %63, void (i32)** %3, align 8
  br label %64

64:                                               ; preds = %61, %60, %55, %46, %39, %38, %33, %28, %19, %14
  %65 = load void (i32)*, void (i32)** %3, align 8
  ret void (i32)* %65
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local void @SIG_ERR(i32) #1

declare dso_local i32 @__libc_sigprocmask(i32, i32*, i32*) #1

declare dso_local void @SIG_HOLD(i32) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i32 @__libc_sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @bzero(%struct.sigaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
