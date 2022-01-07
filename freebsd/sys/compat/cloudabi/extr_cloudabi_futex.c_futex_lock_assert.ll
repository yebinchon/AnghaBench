; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i64, i64, i32, i32 }

@LOCK_UNMANAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Managed locks must have waiting threads\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Lock with no waiters must be unmanaged\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_lock*)* @futex_lock_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_lock_assert(%struct.futex_lock* %0) #0 {
  %2 = alloca %struct.futex_lock*, align 8
  store %struct.futex_lock* %0, %struct.futex_lock** %2, align 8
  %3 = load %struct.futex_lock*, %struct.futex_lock** %2, align 8
  %4 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @LOCK_UNMANAGED, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load %struct.futex_lock*, %struct.futex_lock** %2, align 8
  %10 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %9, i32 0, i32 3
  %11 = call i64 @futex_queue_count(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.futex_lock*, %struct.futex_lock** %2, align 8
  %15 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %14, i32 0, i32 2
  %16 = call i64 @futex_queue_count(i32* %15)
  %17 = icmp eq i64 %16, 0
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %8, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.futex_lock*, %struct.futex_lock** %2, align 8
  %25 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.futex_lock*, %struct.futex_lock** %2, align 8
  %30 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LOCK_UNMANAGED, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %18
  %35 = phi i1 [ true, %18 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @futex_queue_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
