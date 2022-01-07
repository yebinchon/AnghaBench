; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_down_interruptible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_down_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i64, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @down_interruptible(%struct.semaphore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.semaphore*, align 8
  %4 = alloca i32, align 4
  store %struct.semaphore* %0, %struct.semaphore** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %6 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %5, i32 0, i32 1
  %7 = call i32 @mtx_lock(i32* %6)
  br label %8

8:                                                ; preds = %41, %40, %1
  %9 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %10 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %15 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %19 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %18, i32 0, i32 3
  %20 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %21 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %20, i32 0, i32 1
  %22 = call i32 @cv_wait_sig(i32* %19, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %24 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EINTR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %13
  %31 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %32 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %31, i32 0, i32 1
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load i32, i32* @EINTR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %13
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ERESTART, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %8

41:                                               ; preds = %36
  br label %8

42:                                               ; preds = %8
  %43 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %44 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.semaphore*, %struct.semaphore** %3, align 8
  %48 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %47, i32 0, i32 1
  %49 = call i32 @mtx_unlock(i32* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %30
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
