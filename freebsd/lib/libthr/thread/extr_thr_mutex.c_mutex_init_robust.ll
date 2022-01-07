; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_init_robust.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_init_robust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i32, i32, i32 }
%struct.umtx_robust_lists_params = type { i64, i64, i64 }

@UMTX_OP_ROBUST_LISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*)* @mutex_init_robust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mutex_init_robust(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca %struct.umtx_robust_lists_params, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %4 = load %struct.pthread*, %struct.pthread** %2, align 8
  %5 = icmp eq %struct.pthread* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %7, %struct.pthread** %2, align 8
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.pthread*, %struct.pthread** %2, align 8
  %10 = getelementptr inbounds %struct.pthread, %struct.pthread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %31

14:                                               ; preds = %8
  %15 = load %struct.pthread*, %struct.pthread** %2, align 8
  %16 = getelementptr inbounds %struct.pthread, %struct.pthread* %15, i32 0, i32 3
  %17 = ptrtoint i32* %16 to i64
  %18 = getelementptr inbounds %struct.umtx_robust_lists_params, %struct.umtx_robust_lists_params* %3, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.pthread*, %struct.pthread** %2, align 8
  %20 = getelementptr inbounds %struct.pthread, %struct.pthread* %19, i32 0, i32 2
  %21 = ptrtoint i32* %20 to i64
  %22 = getelementptr inbounds %struct.umtx_robust_lists_params, %struct.umtx_robust_lists_params* %3, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load %struct.pthread*, %struct.pthread** %2, align 8
  %24 = getelementptr inbounds %struct.pthread, %struct.pthread* %23, i32 0, i32 1
  %25 = ptrtoint i32* %24 to i64
  %26 = getelementptr inbounds %struct.umtx_robust_lists_params, %struct.umtx_robust_lists_params* %3, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @UMTX_OP_ROBUST_LISTS, align 4
  %28 = call i32 @_umtx_op(i32* null, i32 %27, i32 24, %struct.umtx_robust_lists_params* %3, i32* null)
  %29 = load %struct.pthread*, %struct.pthread** %2, align 8
  %30 = getelementptr inbounds %struct.pthread, %struct.pthread* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_umtx_op(i32*, i32, i32, %struct.umtx_robust_lists_params*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
