; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i64, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @up(%struct.semaphore* %0) #0 {
  %2 = alloca %struct.semaphore*, align 8
  store %struct.semaphore* %0, %struct.semaphore** %2, align 8
  %3 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %4 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %3, i32 0, i32 1
  %5 = call i32 @mtx_lock(i32* %4)
  %6 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %7 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %11 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %16 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %21 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %20, i32 0, i32 2
  %22 = call i32 @cv_signal(i32* %21)
  br label %23

23:                                               ; preds = %19, %14, %1
  %24 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %25 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %24, i32 0, i32 1
  %26 = call i32 @mtx_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
