; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutexattr.c__pthread_mutexattr_getprioceiling.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutexattr.c__pthread_mutexattr_getprioceiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PRIO_PROTECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_mutexattr_getprioceiling(%struct.TYPE_3__** noalias %0, i32* noalias %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = icmp eq %struct.TYPE_3__** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %5, align 4
  br label %30

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PTHREAD_PRIO_PROTECT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %21
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
