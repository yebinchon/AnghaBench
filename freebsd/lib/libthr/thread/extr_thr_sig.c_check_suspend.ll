; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_check_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_check_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i64, i32, i32, i64, i64 }

@THR_FLAGS_NEED_SUSPEND = common dso_local global i32 0, align 4
@THR_FLAGS_SUSPENDED = common dso_local global i32 0, align 4
@_single_thread = common dso_local global %struct.pthread* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@PS_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*)* @check_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_suspend(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca i64, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %4 = load %struct.pthread*, %struct.pthread** %2, align 8
  %5 = getelementptr inbounds %struct.pthread, %struct.pthread* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %8 = load i32, i32* @THR_FLAGS_SUSPENDED, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_true(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %93

17:                                               ; preds = %1
  %18 = load %struct.pthread*, %struct.pthread** %2, align 8
  %19 = load %struct.pthread*, %struct.pthread** @_single_thread, align 8
  %20 = icmp eq %struct.pthread* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %93

22:                                               ; preds = %17
  %23 = load %struct.pthread*, %struct.pthread** %2, align 8
  %24 = getelementptr inbounds %struct.pthread, %struct.pthread* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %93

28:                                               ; preds = %22
  %29 = load %struct.pthread*, %struct.pthread** %2, align 8
  %30 = call i32 @_thr_signal_block(%struct.pthread* %29)
  %31 = load %struct.pthread*, %struct.pthread** %2, align 8
  %32 = getelementptr inbounds %struct.pthread, %struct.pthread* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.pthread*, %struct.pthread** %2, align 8
  %36 = load %struct.pthread*, %struct.pthread** %2, align 8
  %37 = getelementptr inbounds %struct.pthread, %struct.pthread* %36, i32 0, i32 3
  %38 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %35, i32* %37)
  br label %39

39:                                               ; preds = %64, %28
  %40 = load %struct.pthread*, %struct.pthread** %2, align 8
  %41 = getelementptr inbounds %struct.pthread, %struct.pthread* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %39
  %47 = load %struct.pthread*, %struct.pthread** %2, align 8
  %48 = getelementptr inbounds %struct.pthread, %struct.pthread* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.pthread*, %struct.pthread** %2, align 8
  %52 = getelementptr inbounds %struct.pthread, %struct.pthread* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  %54 = load %struct.pthread*, %struct.pthread** %2, align 8
  %55 = getelementptr inbounds %struct.pthread, %struct.pthread* %54, i32 0, i32 4
  %56 = load i32, i32* @INT_MAX, align 4
  %57 = call i32 @_thr_umtx_wake(i64* %55, i32 %56, i32 0)
  %58 = load %struct.pthread*, %struct.pthread** %2, align 8
  %59 = getelementptr inbounds %struct.pthread, %struct.pthread* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PS_DEAD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %82

64:                                               ; preds = %46
  %65 = load i32, i32* @THR_FLAGS_SUSPENDED, align 4
  %66 = load %struct.pthread*, %struct.pthread** %2, align 8
  %67 = getelementptr inbounds %struct.pthread, %struct.pthread* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.pthread*, %struct.pthread** %2, align 8
  %71 = load %struct.pthread*, %struct.pthread** %2, align 8
  %72 = getelementptr inbounds %struct.pthread, %struct.pthread* %71, i32 0, i32 3
  %73 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %70, i32* %72)
  %74 = load %struct.pthread*, %struct.pthread** %2, align 8
  %75 = getelementptr inbounds %struct.pthread, %struct.pthread* %74, i32 0, i32 4
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @_thr_umtx_wait_uint(i64* %75, i64 %76, i32* null, i32 0)
  %78 = load %struct.pthread*, %struct.pthread** %2, align 8
  %79 = load %struct.pthread*, %struct.pthread** %2, align 8
  %80 = getelementptr inbounds %struct.pthread, %struct.pthread* %79, i32 0, i32 3
  %81 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %78, i32* %80)
  br label %39

82:                                               ; preds = %63, %39
  %83 = load %struct.pthread*, %struct.pthread** %2, align 8
  %84 = load %struct.pthread*, %struct.pthread** %2, align 8
  %85 = getelementptr inbounds %struct.pthread, %struct.pthread* %84, i32 0, i32 3
  %86 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %83, i32* %85)
  %87 = load %struct.pthread*, %struct.pthread** %2, align 8
  %88 = getelementptr inbounds %struct.pthread, %struct.pthread* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.pthread*, %struct.pthread** %2, align 8
  %92 = call i32 @_thr_signal_unblock(%struct.pthread* %91)
  br label %93

93:                                               ; preds = %82, %27, %21, %16
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @_thr_signal_block(%struct.pthread*) #1

declare dso_local i32 @THR_UMUTEX_LOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_umtx_wake(i64*, i32, i32) #1

declare dso_local i32 @THR_UMUTEX_UNLOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_umtx_wait_uint(i64*, i64, i32*, i32) #1

declare dso_local i32 @_thr_signal_unblock(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
