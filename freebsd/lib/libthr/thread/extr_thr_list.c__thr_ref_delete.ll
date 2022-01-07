; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_ref_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_ref_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_ref_delete(%struct.pthread* %0, %struct.pthread* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.pthread* %1, %struct.pthread** %4, align 8
  %5 = load %struct.pthread*, %struct.pthread** %3, align 8
  %6 = load %struct.pthread*, %struct.pthread** %4, align 8
  %7 = call i32 @THR_THREAD_LOCK(%struct.pthread* %5, %struct.pthread* %6)
  %8 = load %struct.pthread*, %struct.pthread** %4, align 8
  %9 = getelementptr inbounds %struct.pthread, %struct.pthread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pthread*, %struct.pthread** %3, align 8
  %13 = load %struct.pthread*, %struct.pthread** %4, align 8
  %14 = call i32 @_thr_try_gc(%struct.pthread* %12, %struct.pthread* %13)
  %15 = load %struct.pthread*, %struct.pthread** %3, align 8
  %16 = call i32 @THR_CRITICAL_LEAVE(%struct.pthread* %15)
  ret void
}

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @_thr_try_gc(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_CRITICAL_LEAVE(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
