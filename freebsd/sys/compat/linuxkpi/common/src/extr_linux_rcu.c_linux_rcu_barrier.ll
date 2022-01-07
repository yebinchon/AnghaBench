; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_rcu.c_linux_rcu_barrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_rcu.c_linux_rcu_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_epoch_head = type { i32 }

@linux_epoch_head = common dso_local global %struct.linux_epoch_head zeroinitializer, align 4
@taskqueue_fast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_rcu_barrier() #0 {
  %1 = alloca %struct.linux_epoch_head*, align 8
  %2 = call i32 (...) @linux_synchronize_rcu()
  store %struct.linux_epoch_head* @linux_epoch_head, %struct.linux_epoch_head** %1, align 8
  %3 = load i32, i32* @taskqueue_fast, align 4
  %4 = load %struct.linux_epoch_head*, %struct.linux_epoch_head** %1, align 8
  %5 = getelementptr inbounds %struct.linux_epoch_head, %struct.linux_epoch_head* %4, i32 0, i32 0
  %6 = call i32 @taskqueue_drain(i32 %3, i32* %5)
  ret void
}

declare dso_local i32 @linux_synchronize_rcu(...) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
