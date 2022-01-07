; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@_thread_active_threads = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_link(%struct.pthread* %0, %struct.pthread* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.pthread* %1, %struct.pthread** %4, align 8
  %5 = load %struct.pthread*, %struct.pthread** %3, align 8
  %6 = call i32 @THREAD_LIST_WRLOCK(%struct.pthread* %5)
  %7 = load %struct.pthread*, %struct.pthread** %4, align 8
  %8 = call i32 @THR_LIST_ADD(%struct.pthread* %7)
  %9 = load %struct.pthread*, %struct.pthread** %3, align 8
  %10 = call i32 @THREAD_LIST_UNLOCK(%struct.pthread* %9)
  %11 = call i32 @atomic_add_int(i32* @_thread_active_threads, i32 1)
  ret void
}

declare dso_local i32 @THREAD_LIST_WRLOCK(%struct.pthread*) #1

declare dso_local i32 @THR_LIST_ADD(%struct.pthread*) #1

declare dso_local i32 @THREAD_LIST_UNLOCK(%struct.pthread*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
