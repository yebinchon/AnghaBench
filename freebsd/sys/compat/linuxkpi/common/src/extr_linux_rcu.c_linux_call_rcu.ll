; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_rcu.c_linux_call_rcu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_rcu.c_linux_call_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_epoch_head = type { i32, i32, i32 }
%struct.rcu_head = type { i32 }
%struct.callback_head = type { i32 }

@linux_epoch_head = common dso_local global %struct.linux_epoch_head zeroinitializer, align 4
@entry = common dso_local global i32 0, align 4
@taskqueue_fast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_call_rcu(%struct.rcu_head* %0, i32 %1) #0 {
  %3 = alloca %struct.rcu_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.callback_head*, align 8
  %6 = alloca %struct.linux_epoch_head*, align 8
  store %struct.rcu_head* %0, %struct.rcu_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %8 = bitcast %struct.rcu_head* %7 to %struct.callback_head*
  store %struct.callback_head* %8, %struct.callback_head** %5, align 8
  store %struct.linux_epoch_head* @linux_epoch_head, %struct.linux_epoch_head** %6, align 8
  %9 = load %struct.linux_epoch_head*, %struct.linux_epoch_head** %6, align 8
  %10 = getelementptr inbounds %struct.linux_epoch_head, %struct.linux_epoch_head* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.callback_head*, %struct.callback_head** %5, align 8
  %14 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.linux_epoch_head*, %struct.linux_epoch_head** %6, align 8
  %16 = getelementptr inbounds %struct.linux_epoch_head, %struct.linux_epoch_head* %15, i32 0, i32 2
  %17 = load %struct.callback_head*, %struct.callback_head** %5, align 8
  %18 = load i32, i32* @entry, align 4
  %19 = call i32 @STAILQ_INSERT_TAIL(i32* %16, %struct.callback_head* %17, i32 %18)
  %20 = load i32, i32* @taskqueue_fast, align 4
  %21 = load %struct.linux_epoch_head*, %struct.linux_epoch_head** %6, align 8
  %22 = getelementptr inbounds %struct.linux_epoch_head, %struct.linux_epoch_head* %21, i32 0, i32 1
  %23 = call i32 @taskqueue_enqueue(i32 %20, i32* %22)
  %24 = load %struct.linux_epoch_head*, %struct.linux_epoch_head** %6, align 8
  %25 = getelementptr inbounds %struct.linux_epoch_head, %struct.linux_epoch_head* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.callback_head*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
