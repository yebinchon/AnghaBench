; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_queue_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_queue_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_queue = type { i32, i32 }
%struct.futex_lock = type { i32 }
%struct.futex_waiter = type { i32, %struct.futex_queue*, i32, i32, i32 }
%struct.thread = type { i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@fw_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"futex\00", align 1
@futex_global_lock = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Woken up thread is still enqueued\00", align 1
@futex_waiter = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_queue*, %struct.futex_lock*, %struct.futex_waiter*, %struct.thread*, i32, i64, i64, i32)* @futex_queue_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_queue_sleep(%struct.futex_queue* %0, %struct.futex_lock* %1, %struct.futex_waiter* %2, %struct.thread* %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.futex_queue*, align 8
  %11 = alloca %struct.futex_lock*, align 8
  %12 = alloca %struct.futex_waiter*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.futex_queue* %0, %struct.futex_queue** %10, align 8
  store %struct.futex_lock* %1, %struct.futex_lock** %11, align 8
  store %struct.futex_waiter* %2, %struct.futex_waiter** %12, align 8
  store %struct.thread* %3, %struct.thread** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.thread*, %struct.thread** %13, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %25 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %27 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %29 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %28, i32 0, i32 3
  %30 = call i32 @futex_queue_init(i32* %29)
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @UINT64_MAX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %8
  %35 = load %struct.thread*, %struct.thread** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @futex_queue_convert_timestamp(%struct.thread* %35, i32 %36, i64 %37, i64 %38, i32* %18, i32* %19, i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %9, align 4
  br label %142

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %8
  %47 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %48 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %49 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %48, i32 0, i32 1
  store %struct.futex_queue* %47, %struct.futex_queue** %49, align 8
  %50 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %51 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %50, i32 0, i32 1
  %52 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %53 = load i32, i32* @fw_next, align 4
  %54 = call i32 @STAILQ_INSERT_TAIL(i32* %51, %struct.futex_waiter* %52, i32 %53)
  %55 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %56 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %60 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %59, i32 0, i32 2
  %61 = call i32 @cv_init(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.futex_lock*, %struct.futex_lock** %11, align 8
  %63 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.futex_lock*, %struct.futex_lock** %11, align 8
  %67 = call i32 @futex_lock_assert(%struct.futex_lock* %66)
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* @UINT64_MAX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %46
  %72 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %73 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %72, i32 0, i32 2
  %74 = call i32 @cv_wait_sig(i32* %73, i32* @futex_global_lock)
  store i32 %74, i32* %20, align 4
  br label %102

75:                                               ; preds = %46
  %76 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %77 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %76, i32 0, i32 2
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @cv_timedwait_sig_sbt(i32* %77, i32* @futex_global_lock, i32 %78, i32 %79, i32 0)
  store i32 %80, i32* %20, align 4
  %81 = load %struct.futex_lock*, %struct.futex_lock** %11, align 8
  %82 = call i32 @futex_lock_assert(%struct.futex_lock* %81)
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* @EWOULDBLOCK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %75
  %87 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %88 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %87, i32 0, i32 1
  %89 = load %struct.futex_queue*, %struct.futex_queue** %88, align 8
  %90 = icmp ne %struct.futex_queue* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %93 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %92, i32 0, i32 1
  %94 = load %struct.futex_queue*, %struct.futex_queue** %93, align 8
  %95 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %96 = icmp ne %struct.futex_queue* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %99 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %98, i32 0, i32 2
  %100 = call i32 @cv_wait_sig(i32* %99, i32* @futex_global_lock)
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %97, %91, %86, %75
  br label %102

102:                                              ; preds = %101, %71
  %103 = load %struct.futex_lock*, %struct.futex_lock** %11, align 8
  %104 = call i32 @futex_lock_assert(%struct.futex_lock* %103)
  %105 = load %struct.futex_lock*, %struct.futex_lock** %11, align 8
  %106 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %110 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %109, i32 0, i32 2
  %111 = call i32 @cv_destroy(i32* %110)
  %112 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %113 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %112, i32 0, i32 1
  %114 = load %struct.futex_queue*, %struct.futex_queue** %113, align 8
  store %struct.futex_queue* %114, %struct.futex_queue** %10, align 8
  %115 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %116 = icmp eq %struct.futex_queue* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %142

118:                                              ; preds = %102
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @KASSERT(i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %124 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %123, i32 0, i32 1
  %125 = load %struct.futex_waiter*, %struct.futex_waiter** %12, align 8
  %126 = load i32, i32* @futex_waiter, align 4
  %127 = load i32, i32* @fw_next, align 4
  %128 = call i32 @STAILQ_REMOVE(i32* %124, %struct.futex_waiter* %125, i32 %126, i32 %127)
  %129 = load %struct.futex_queue*, %struct.futex_queue** %10, align 8
  %130 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* @EWOULDBLOCK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %118
  %137 = load i32, i32* @ETIMEDOUT, align 4
  br label %140

138:                                              ; preds = %118
  %139 = load i32, i32* %20, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %117, %43
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @futex_queue_init(i32*) #1

declare dso_local i32 @futex_queue_convert_timestamp(%struct.thread*, i32, i64, i64, i32*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.futex_waiter*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @futex_lock_assert(%struct.futex_lock*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @cv_timedwait_sig_sbt(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.futex_waiter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
