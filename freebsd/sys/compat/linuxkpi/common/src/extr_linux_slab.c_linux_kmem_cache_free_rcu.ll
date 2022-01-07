; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_cache_free_rcu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_cache_free_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_kmem_cache = type { i32 }
%struct.linux_kmem_rcu = type { i32 }

@linux_kmem_cache_free_rcu_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_kmem_cache_free_rcu(%struct.linux_kmem_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.linux_kmem_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.linux_kmem_rcu*, align 8
  store %struct.linux_kmem_cache* %0, %struct.linux_kmem_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.linux_kmem_rcu* @LINUX_KMEM_TO_RCU(%struct.linux_kmem_cache* %6, i8* %7)
  store %struct.linux_kmem_rcu* %8, %struct.linux_kmem_rcu** %5, align 8
  %9 = load %struct.linux_kmem_rcu*, %struct.linux_kmem_rcu** %5, align 8
  %10 = getelementptr inbounds %struct.linux_kmem_rcu, %struct.linux_kmem_rcu* %9, i32 0, i32 0
  %11 = load i32, i32* @linux_kmem_cache_free_rcu_callback, align 4
  %12 = call i32 @call_rcu(i32* %10, i32 %11)
  ret void
}

declare dso_local %struct.linux_kmem_rcu* @LINUX_KMEM_TO_RCU(%struct.linux_kmem_cache*, i8*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
