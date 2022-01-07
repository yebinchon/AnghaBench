; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_slab.c_linux_kmem_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_kmem_cache = type { i32, i32 }

@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@M_KMALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_kmem_cache_destroy(%struct.linux_kmem_cache* %0) #0 {
  %2 = alloca %struct.linux_kmem_cache*, align 8
  store %struct.linux_kmem_cache* %0, %struct.linux_kmem_cache** %2, align 8
  %3 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %2, align 8
  %4 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %7 = and i32 %5, %6
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @rcu_barrier()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %2, align 8
  %14 = getelementptr inbounds %struct.linux_kmem_cache, %struct.linux_kmem_cache* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uma_zdestroy(i32 %15)
  %17 = load %struct.linux_kmem_cache*, %struct.linux_kmem_cache** %2, align 8
  %18 = load i32, i32* @M_KMALLOC, align 4
  %19 = call i32 @free(%struct.linux_kmem_cache* %17, i32 %18)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @free(%struct.linux_kmem_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
