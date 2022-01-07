; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_ack_cq_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_ack_cq_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ibv_ack_cq_events(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %6 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %5, i32 0, i32 1
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %10 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %14 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %13, i32 0, i32 2
  %15 = call i32 @pthread_cond_signal(i32* %14)
  %16 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %17 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
