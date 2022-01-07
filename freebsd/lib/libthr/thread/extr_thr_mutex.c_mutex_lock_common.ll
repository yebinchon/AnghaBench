; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_lock_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_lock_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }
%struct.pthread = type { i32 }

@PMUTEX_FLAG_PRIVATE = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_NONCONSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex*, %struct.timespec*, i32, i32)* @mutex_lock_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_lock_common(%struct.pthread_mutex* %0, %struct.timespec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pthread_mutex*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pthread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pthread_mutex* %0, %struct.pthread_mutex** %5, align 8
  store %struct.timespec* %1, %struct.timespec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %12, %struct.pthread** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %17 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PMUTEX_FLAG_PRIVATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.pthread*, %struct.pthread** %9, align 8
  %24 = call i32 @THR_CRITICAL_ENTER(%struct.pthread* %23)
  br label %25

25:                                               ; preds = %22, %15, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.pthread*, %struct.pthread** %9, align 8
  %30 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %31 = call i32 @_mutex_enter_robust(%struct.pthread* %29, %struct.pthread_mutex* %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %34 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %33, i32 0, i32 1
  %35 = load %struct.pthread*, %struct.pthread** %9, align 8
  %36 = call i32 @TID(%struct.pthread* %35)
  %37 = call i32 @_thr_umutex_trylock2(%struct.TYPE_2__* %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @EOWNERDEAD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40, %32
  %45 = load %struct.pthread*, %struct.pthread** %9, align 8
  %46 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @enqueue_mutex(%struct.pthread* %45, %struct.pthread_mutex* %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EOWNERDEAD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %54 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %55 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %44
  br label %65

60:                                               ; preds = %40
  %61 = load %struct.pthread*, %struct.pthread** %9, align 8
  %62 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %63 = load %struct.timespec*, %struct.timespec** %6, align 8
  %64 = call i32 @mutex_lock_sleep(%struct.pthread* %61, %struct.pthread_mutex* %62, %struct.timespec* %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.pthread*, %struct.pthread** %9, align 8
  %73 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %74 = call i32 @_mutex_leave_robust(%struct.pthread* %72, %struct.pthread_mutex* %73)
  br label %75

75:                                               ; preds = %71, %68, %65
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EOWNERDEAD, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %84 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PMUTEX_FLAG_PRIVATE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.pthread*, %struct.pthread** %9, align 8
  %94 = call i32 @THR_CRITICAL_LEAVE(%struct.pthread* %93)
  br label %95

95:                                               ; preds = %92, %89, %82, %78, %75
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_CRITICAL_ENTER(%struct.pthread*) #1

declare dso_local i32 @_mutex_enter_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @_thr_umutex_trylock2(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @TID(%struct.pthread*) #1

declare dso_local i32 @enqueue_mutex(%struct.pthread*, %struct.pthread_mutex*, i32) #1

declare dso_local i32 @mutex_lock_sleep(%struct.pthread*, %struct.pthread_mutex*, %struct.timespec*) #1

declare dso_local i32 @_mutex_leave_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @THR_CRITICAL_LEAVE(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
