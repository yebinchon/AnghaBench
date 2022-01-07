; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_self_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_self_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex*, %struct.timespec*)* @mutex_self_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_self_lock(%struct.pthread_mutex* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.pthread_mutex*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  store %struct.pthread_mutex* %0, %struct.pthread_mutex** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %9 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @PMUTEX_TYPE(i32 %10)
  switch i32 %11, label %91 [
    i32 130, label %12
    i32 131, label %12
    i32 129, label %43
    i32 128, label %77
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = icmp ne %struct.timespec* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load %struct.timespec*, %struct.timespec** %4, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.timespec*, %struct.timespec** %4, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 1000000000
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20, %15
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @CLOCK_REALTIME, align 4
  %34 = call i32 @clock_gettime(i32 %33, %struct.timespec* %5)
  %35 = load %struct.timespec*, %struct.timespec** %4, align 8
  %36 = call i32 @TIMESPEC_SUB(%struct.timespec* %6, %struct.timespec* %35, %struct.timespec* %5)
  %37 = call i32 @__sys_nanosleep(%struct.timespec* %6, i32* null)
  %38 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %30
  br label %42

40:                                               ; preds = %12
  %41 = load i32, i32* @EDEADLK, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %39
  br label %93

43:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %44 = load %struct.timespec*, %struct.timespec** %4, align 8
  %45 = icmp ne %struct.timespec* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load %struct.timespec*, %struct.timespec** %4, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.timespec*, %struct.timespec** %4, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.timespec*, %struct.timespec** %4, align 8
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 1000000000
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %51, %46
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %7, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load i32, i32* @CLOCK_REALTIME, align 4
  %65 = call i32 @clock_gettime(i32 %64, %struct.timespec* %5)
  %66 = load %struct.timespec*, %struct.timespec** %4, align 8
  %67 = call i32 @TIMESPEC_SUB(%struct.timespec* %6, %struct.timespec* %66, %struct.timespec* %5)
  %68 = call i32 @__sys_nanosleep(%struct.timespec* %6, i32* null)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %61
  br label %76

71:                                               ; preds = %43
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 30, i32* %72, align 4
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %74, %71
  %75 = call i32 @__sys_nanosleep(%struct.timespec* %5, i32* null)
  br label %74

76:                                               ; preds = %70
  br label %93

77:                                               ; preds = %2
  %78 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %79 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %85 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %7, align 4
  br label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @EAGAIN, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %83
  br label %93

91:                                               ; preds = %2
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %90, %76, %42
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @PMUTEX_TYPE(i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_SUB(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @__sys_nanosleep(%struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
