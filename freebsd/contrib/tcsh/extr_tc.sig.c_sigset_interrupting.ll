; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.sig.c_sigset_interrupting.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.sig.c_sigset_interrupting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { void (i32)*, i64, i32 }

@SIG_UNBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigset_interrupting(i32 %0, void (i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (i32)*, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store void (i32)* %1, void (i32)** %4, align 8
  %7 = load void (i32)*, void (i32)** %4, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store void (i32)* %7, void (i32)** %8, align 8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %10 = call i32 @sigemptyset(i32* %9)
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.sigaction* %5, i32* null)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = call i32 @sigemptyset(i32* %6)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @sigaddset(i32* %6, i32 %17)
  %19 = load i32, i32* @SIG_UNBLOCK, align 4
  %20 = call i32 @sigprocmask(i32 %19, i32* %6, i32* null)
  br label %21

21:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
