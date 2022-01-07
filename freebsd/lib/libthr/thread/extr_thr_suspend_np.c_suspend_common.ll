; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_suspend_np.c_suspend_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_suspend_np.c_suspend_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64, i32, i64, i32 }

@PS_DEAD = common dso_local global i64 0, align 8
@THR_FLAGS_SUSPENDED = common dso_local global i32 0, align 4
@THR_FLAGS_NEED_SUSPEND = common dso_local global i32 0, align 4
@TID_TERMINATED = common dso_local global i64 0, align 8
@SIGCANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread*, %struct.pthread*, i32)* @suspend_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_common(%struct.pthread* %0, %struct.pthread* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %5, align 8
  store %struct.pthread* %1, %struct.pthread** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %61, %3
  %10 = load %struct.pthread*, %struct.pthread** %6, align 8
  %11 = getelementptr inbounds %struct.pthread, %struct.pthread* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PS_DEAD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.pthread*, %struct.pthread** %6, align 8
  %17 = getelementptr inbounds %struct.pthread, %struct.pthread* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @THR_FLAGS_SUSPENDED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %15, %9
  %24 = phi i1 [ false, %9 ], [ %22, %15 ]
  br i1 %24, label %25, label %62

25:                                               ; preds = %23
  %26 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %27 = load %struct.pthread*, %struct.pthread** %6, align 8
  %28 = getelementptr inbounds %struct.pthread, %struct.pthread* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.pthread*, %struct.pthread** %6, align 8
  %32 = getelementptr inbounds %struct.pthread, %struct.pthread* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TID_TERMINATED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %63

37:                                               ; preds = %25
  %38 = load %struct.pthread*, %struct.pthread** %6, align 8
  %39 = getelementptr inbounds %struct.pthread, %struct.pthread* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.pthread*, %struct.pthread** %6, align 8
  %42 = load i32, i32* @SIGCANCEL, align 4
  %43 = call i32 @_thr_send_sig(%struct.pthread* %41, i32 %42)
  %44 = load %struct.pthread*, %struct.pthread** %5, align 8
  %45 = load %struct.pthread*, %struct.pthread** %6, align 8
  %46 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %44, %struct.pthread* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.pthread*, %struct.pthread** %6, align 8
  %51 = getelementptr inbounds %struct.pthread, %struct.pthread* %50, i32 0, i32 3
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @_thr_umtx_wait_uint(i32* %51, i32 %52, i32* null, i32 0)
  %54 = load %struct.pthread*, %struct.pthread** %5, align 8
  %55 = load %struct.pthread*, %struct.pthread** %6, align 8
  %56 = call i32 @THR_THREAD_LOCK(%struct.pthread* %54, %struct.pthread* %55)
  br label %61

57:                                               ; preds = %37
  %58 = load %struct.pthread*, %struct.pthread** %5, align 8
  %59 = load %struct.pthread*, %struct.pthread** %6, align 8
  %60 = call i32 @THR_THREAD_LOCK(%struct.pthread* %58, %struct.pthread* %59)
  store i32 0, i32* %4, align 4
  br label %63

61:                                               ; preds = %49
  br label %9

62:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %57, %36
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @_thr_send_sig(%struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @_thr_umtx_wait_uint(i32*, i32, i32*, i32) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
