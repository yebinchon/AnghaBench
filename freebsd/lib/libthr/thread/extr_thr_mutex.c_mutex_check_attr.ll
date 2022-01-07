; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_check_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex_attr = type { i64, i64 }

@PTHREAD_MUTEX_ERRORCHECK = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_TYPE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PRIO_NONE = common dso_local global i64 0, align 8
@PTHREAD_PRIO_PROTECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex_attr*)* @mutex_check_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_check_attr(%struct.pthread_mutex_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread_mutex_attr*, align 8
  store %struct.pthread_mutex_attr* %0, %struct.pthread_mutex_attr** %3, align 8
  %4 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %3, align 8
  %5 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PTHREAD_MUTEX_ERRORCHECK, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %3, align 8
  %11 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PTHREAD_MUTEX_TYPE_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %9
  %18 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %3, align 8
  %19 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PTHREAD_PRIO_NONE, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %3, align 8
  %25 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PTHREAD_PRIO_PROTECT, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %29, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
