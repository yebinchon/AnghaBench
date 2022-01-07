; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_condvar_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_condvar_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_condvar = type { i64, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Total number of waiters cannot be smaller than the wait queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_condvar*)* @futex_condvar_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_condvar_assert(%struct.futex_condvar* %0) #0 {
  %2 = alloca %struct.futex_condvar*, align 8
  store %struct.futex_condvar* %0, %struct.futex_condvar** %2, align 8
  %3 = load %struct.futex_condvar*, %struct.futex_condvar** %2, align 8
  %4 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.futex_condvar*, %struct.futex_condvar** %2, align 8
  %7 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %6, i32 0, i32 2
  %8 = call i64 @futex_queue_count(i32* %7)
  %9 = icmp sge i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.futex_condvar*, %struct.futex_condvar** %2, align 8
  %13 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @futex_lock_assert(i32 %14)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @futex_queue_count(i32*) #1

declare dso_local i32 @futex_lock_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
