; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent_dss.c_extent_dss_extending_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent_dss.c_extent_dss_extending_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIN_INITIALIZER = common dso_local global i32 0, align 4
@dss_extending = common dso_local global i32 0, align 4
@ATOMIC_ACQ_REL = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @extent_dss_extending_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_dss_extending_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPIN_INITIALIZER, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %0, %10
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @ATOMIC_ACQ_REL, align 4
  %6 = load i32, i32* @ATOMIC_RELAXED, align 4
  %7 = call i64 @atomic_compare_exchange_weak_b(i32* @dss_extending, i32* %2, i32 1, i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  %11 = call i32 @spin_adaptive(i32* %1)
  br label %4

12:                                               ; preds = %9
  ret void
}

declare dso_local i64 @atomic_compare_exchange_weak_b(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_adaptive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
