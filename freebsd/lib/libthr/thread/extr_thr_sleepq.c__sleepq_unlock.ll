; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sleepq.c__sleepq_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sleepq.c__sleepq_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sleepqueue_chain = type { i32 }
%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sleepq_unlock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sleepqueue_chain*, align 8
  %4 = alloca %struct.pthread*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %5, %struct.pthread** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.sleepqueue_chain* @SC_LOOKUP(i8* %6)
  store %struct.sleepqueue_chain* %7, %struct.sleepqueue_chain** %3, align 8
  %8 = load %struct.pthread*, %struct.pthread** %4, align 8
  %9 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %3, align 8
  %10 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %9, i32 0, i32 0
  %11 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %8, i32* %10)
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local %struct.sleepqueue_chain* @SC_LOOKUP(i8*) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
