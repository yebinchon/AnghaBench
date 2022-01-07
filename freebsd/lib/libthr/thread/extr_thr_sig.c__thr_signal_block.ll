; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c__thr_signal_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c__thr_signal_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64, i32 }

@SIG_BLOCK = common dso_local global i32 0, align 4
@_thr_maskset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_signal_block(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %3 = load %struct.pthread*, %struct.pthread** %2, align 8
  %4 = getelementptr inbounds %struct.pthread, %struct.pthread* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pthread*, %struct.pthread** %2, align 8
  %9 = getelementptr inbounds %struct.pthread, %struct.pthread* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @SIG_BLOCK, align 4
  %14 = load %struct.pthread*, %struct.pthread** %2, align 8
  %15 = getelementptr inbounds %struct.pthread, %struct.pthread* %14, i32 0, i32 1
  %16 = call i32 @__sys_sigprocmask(i32 %13, i32* @_thr_maskset, i32* %15)
  %17 = load %struct.pthread*, %struct.pthread** %2, align 8
  %18 = getelementptr inbounds %struct.pthread, %struct.pthread* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
