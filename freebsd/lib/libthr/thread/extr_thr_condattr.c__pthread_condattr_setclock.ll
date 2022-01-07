; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_condattr.c__pthread_condattr_setclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_condattr.c__pthread_condattr_setclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@CLOCK_VIRTUAL = common dso_local global i64 0, align 8
@CLOCK_PROF = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_condattr_setclock(%struct.TYPE_3__** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %7 = icmp eq %struct.TYPE_3__** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CLOCK_REALTIME, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @CLOCK_VIRTUAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @CLOCK_PROF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @CLOCK_MONOTONIC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %26, %22, %18, %14
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %30, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
