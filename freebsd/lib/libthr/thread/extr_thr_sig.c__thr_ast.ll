; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c__thr_ast.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c__thr_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_ast(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %3 = load %struct.pthread*, %struct.pthread** %2, align 8
  %4 = call i32 @THR_IN_CRITICAL(%struct.pthread* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.pthread*, %struct.pthread** %2, align 8
  %8 = call i32 @check_deferred_signal(%struct.pthread* %7)
  %9 = load %struct.pthread*, %struct.pthread** %2, align 8
  %10 = call i32 @check_suspend(%struct.pthread* %9)
  %11 = load %struct.pthread*, %struct.pthread** %2, align 8
  %12 = call i32 @check_cancel(%struct.pthread* %11, i32* null)
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @THR_IN_CRITICAL(%struct.pthread*) #1

declare dso_local i32 @check_deferred_signal(%struct.pthread*) #1

declare dso_local i32 @check_suspend(%struct.pthread*) #1

declare dso_local i32 @check_cancel(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
