; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c___Tthr_mutex_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c___Tthr_mutex_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }
%struct.pthread_mutex = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PMUTEX_FLAG_PRIVATE = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_NONCONSISTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__Tthr_mutex_trylock(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca %struct.pthread_mutex*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @check_and_init_mutex(i32* %9, %struct.pthread_mutex** %5)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %96

15:                                               ; preds = %1
  %16 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %16, %struct.pthread** %4, align 8
  %17 = load %struct.pthread*, %struct.pthread** %4, align 8
  %18 = call i64 @TID(%struct.pthread* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %20 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PMUTEX_FLAG_PRIVATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.pthread*, %struct.pthread** %4, align 8
  %27 = call i32 @THR_CRITICAL_ENTER(%struct.pthread* %26)
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.pthread*, %struct.pthread** %4, align 8
  %30 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %31 = call i32 @_mutex_enter_robust(%struct.pthread* %29, %struct.pthread_mutex* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %33 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %32, i32 0, i32 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @_thr_umutex_trylock(%struct.TYPE_2__* %33, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @__predict_true(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EOWNERDEAD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41, %28
  %46 = load %struct.pthread*, %struct.pthread** %4, align 8
  %47 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @enqueue_mutex(%struct.pthread* %46, %struct.pthread_mutex* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @EOWNERDEAD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %55 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %56 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %45
  br label %70

61:                                               ; preds = %41
  %62 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %63 = call i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %62)
  %64 = load i64, i64* %6, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %68 = call i32 @mutex_self_trylock(%struct.pthread_mutex* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.pthread*, %struct.pthread** %4, align 8
  %75 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %76 = call i32 @_mutex_leave_robust(%struct.pthread* %74, %struct.pthread_mutex* %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @EOWNERDEAD, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %86 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PMUTEX_FLAG_PRIVATE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.pthread*, %struct.pthread** %4, align 8
  %93 = call i32 @THR_CRITICAL_LEAVE(%struct.pthread* %92)
  br label %94

94:                                               ; preds = %91, %84, %80, %77
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @check_and_init_mutex(i32*, %struct.pthread_mutex**) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i64 @TID(%struct.pthread*) #1

declare dso_local i32 @THR_CRITICAL_ENTER(%struct.pthread*) #1

declare dso_local i32 @_mutex_enter_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @_thr_umutex_trylock(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @enqueue_mutex(%struct.pthread*, %struct.pthread_mutex*, i32) #1

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i32 @mutex_self_trylock(%struct.pthread_mutex*) #1

declare dso_local i32 @_mutex_leave_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @THR_CRITICAL_LEAVE(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
