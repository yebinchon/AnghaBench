; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_wrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_wrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i64, i32 }
%struct.thread = type { i32 }
%struct.futex_queue = type { i32 }
%struct.futex_waiter = type { i32, %struct.futex_queue }

@EBUSY = common dso_local global i32 0, align 4
@LOCK_UNMANAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Lock should be managed if we are going to donate\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Attempted to sleep on an unmanaged lock\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Should have locked write lock on success\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Lock functions cannot receive threads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, %struct.thread*, i32*, i32, i32, i32, i32, %struct.futex_queue*)* @futex_lock_wrlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_wrlock(%struct.futex_lock* %0, %struct.thread* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.futex_queue* %7) #0 {
  %9 = alloca %struct.futex_lock*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.futex_queue*, align 8
  %17 = alloca %struct.futex_waiter, align 4
  %18 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %9, align 8
  store %struct.thread* %1, %struct.thread** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.futex_queue* %7, %struct.futex_queue** %16, align 8
  %19 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.thread*, %struct.thread** %10, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.futex_queue*, %struct.futex_queue** %16, align 8
  %25 = call i64 @futex_queue_count(%struct.futex_queue* %24)
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @futex_lock_trywrlock(%struct.futex_lock* %19, i32* %20, i32 %23, i32 %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* @EBUSY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31, %8
  %36 = load %struct.futex_queue*, %struct.futex_queue** %16, align 8
  %37 = call i64 @futex_queue_count(%struct.futex_queue* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %41 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LOCK_UNMANAGED, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ true, %35 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.futex_queue*, %struct.futex_queue** %16, align 8
  %50 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %51 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %50, i32 0, i32 1
  %52 = load i32, i32* @UINT_MAX, align 4
  %53 = call i32 @futex_queue_requeue(%struct.futex_queue* %49, i32* %51, i32 %52)
  br label %58

54:                                               ; preds = %31
  %55 = load %struct.futex_queue*, %struct.futex_queue** %16, align 8
  %56 = load i32, i32* @UINT_MAX, align 4
  %57 = call i32 @futex_queue_wake_up_donate(%struct.futex_queue* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @EBUSY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %58
  %63 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %64 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LOCK_UNMANAGED, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @KASSERT(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %71 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %70, i32 0, i32 1
  %72 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %73 = load %struct.thread*, %struct.thread** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @futex_queue_sleep(i32* %71, %struct.futex_lock* %72, %struct.futex_waiter* %17, %struct.thread* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %17, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @KASSERT(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %17, i32 0, i32 1
  %88 = call i64 @futex_queue_count(%struct.futex_queue* %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %62, %58
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.futex_lock*, %struct.futex_lock** %9, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @futex_lock_unmanage(%struct.futex_lock* %96, i32* %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %18, align 4
  ret i32 %100
}

declare dso_local i32 @futex_lock_trywrlock(%struct.futex_lock*, i32*, i32, i32) #1

declare dso_local i64 @futex_queue_count(%struct.futex_queue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @futex_queue_requeue(%struct.futex_queue*, i32*, i32) #1

declare dso_local i32 @futex_queue_wake_up_donate(%struct.futex_queue*, i32) #1

declare dso_local i32 @futex_queue_sleep(i32*, %struct.futex_lock*, %struct.futex_waiter*, %struct.thread*, i32, i32, i32, i32) #1

declare dso_local i32 @futex_lock_unmanage(%struct.futex_lock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
