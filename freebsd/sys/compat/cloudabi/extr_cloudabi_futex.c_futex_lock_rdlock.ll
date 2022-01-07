; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_rdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_rdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i64, i32 }
%struct.thread = type { i32 }
%struct.futex_waiter = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@LOCK_UNMANAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Attempted to sleep on an unmanaged lock\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Should have locked write lock on success\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Lock functions cannot receive threads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, %struct.thread*, i32*, i32, i32, i32, i32)* @futex_lock_rdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_rdlock(%struct.futex_lock* %0, %struct.thread* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.futex_lock*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.futex_waiter, align 4
  %16 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %8, align 8
  store %struct.thread* %1, %struct.thread** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.futex_lock*, %struct.futex_lock** %8, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @futex_lock_tryrdlock(%struct.futex_lock* %17, i32* %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %7
  %24 = load %struct.futex_lock*, %struct.futex_lock** %8, align 8
  %25 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LOCK_UNMANAGED, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.futex_lock*, %struct.futex_lock** %8, align 8
  %32 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %31, i32 0, i32 1
  %33 = load %struct.futex_lock*, %struct.futex_lock** %8, align 8
  %34 = load %struct.thread*, %struct.thread** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @futex_queue_sleep(i32* %32, %struct.futex_lock* %33, %struct.futex_waiter* %15, %struct.thread* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %15, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %15, i32 0, i32 1
  %49 = call i64 @futex_queue_count(i32* %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %23, %7
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.futex_lock*, %struct.futex_lock** %8, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @futex_lock_unmanage(%struct.futex_lock* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %16, align 4
  ret i32 %61
}

declare dso_local i32 @futex_lock_tryrdlock(%struct.futex_lock*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @futex_queue_sleep(i32*, %struct.futex_lock*, %struct.futex_waiter*, %struct.thread*, i32, i32, i32, i32) #1

declare dso_local i64 @futex_queue_count(i32*) #1

declare dso_local i32 @futex_lock_unmanage(%struct.futex_lock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
