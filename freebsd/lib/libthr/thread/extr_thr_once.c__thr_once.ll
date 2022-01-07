; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_once.c__thr_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_once.c__thr_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pthread = type { i32 }

@ONCE_DONE = common dso_local global i32 0, align 4
@ONCE_NEVER_DONE = common dso_local global i32 0, align 4
@ONCE_IN_PROGRESS = common dso_local global i32 0, align 4
@ONCE_WAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@once_cancel_handler = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_once(%struct.TYPE_4__* %0, void ()* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca void ()*, align 8
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store void ()* %1, void ()** %5, align 8
  %8 = call i32 (...) @_thr_check_init()
  br label %9

9:                                                ; preds = %61, %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ONCE_DONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 (...) @atomic_thread_fence_acq()
  store i32 0, i32* %3, align 4
  br label %87

18:                                               ; preds = %9
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ONCE_NEVER_DONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ONCE_IN_PROGRESS, align 4
  %27 = call i64 @atomic_cmpset_int(i32* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %62

30:                                               ; preds = %22
  br label %61

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ONCE_IN_PROGRESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ONCE_WAIT, align 4
  %40 = call i64 @atomic_cmpset_int(i32* %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* @ONCE_WAIT, align 4
  %46 = call i32 @_thr_umtx_wait_uint(i32* %44, i32 %45, i32* null, i32 0)
  br label %47

47:                                               ; preds = %42, %35
  br label %60

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ONCE_WAIT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @_thr_umtx_wait_uint(i32* %54, i32 %55, i32* null, i32 0)
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %87

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %30
  br label %9

62:                                               ; preds = %29
  %63 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %63, %struct.pthread** %6, align 8
  %64 = load %struct.pthread*, %struct.pthread** %6, align 8
  %65 = load i32, i32* @once_cancel_handler, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @THR_CLEANUP_PUSH(%struct.pthread* %64, i32 %65, %struct.TYPE_4__* %66)
  %68 = load void ()*, void ()** %5, align 8
  call void %68()
  %69 = load %struct.pthread*, %struct.pthread** %6, align 8
  %70 = call i32 @THR_CLEANUP_POP(%struct.pthread* %69, i32 0)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* @ONCE_IN_PROGRESS, align 4
  %74 = load i32, i32* @ONCE_DONE, align 4
  %75 = call i64 @atomic_cmpset_rel_int(i32* %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %87

78:                                               ; preds = %62
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* @ONCE_DONE, align 4
  %82 = call i32 @atomic_store_rel_int(i32* %80, i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* @INT_MAX, align 4
  %86 = call i32 @_thr_umtx_wake(i32* %84, i32 %85, i32 0)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %78, %77, %57, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @_thr_check_init(...) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @_thr_umtx_wait_uint(i32*, i32, i32*, i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_CLEANUP_PUSH(%struct.pthread*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @THR_CLEANUP_POP(%struct.pthread*, i32) #1

declare dso_local i64 @atomic_cmpset_rel_int(i32*, i32, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @_thr_umtx_wake(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
