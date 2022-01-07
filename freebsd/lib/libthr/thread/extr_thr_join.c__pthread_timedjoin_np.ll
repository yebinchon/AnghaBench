; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_join.c__pthread_timedjoin_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_join.c__pthread_timedjoin_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_timedjoin_np(i32 %0, i8** %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.timespec*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %8 = load %struct.timespec*, %struct.timespec** %7, align 8
  %9 = icmp eq %struct.timespec* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load %struct.timespec*, %struct.timespec** %7, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.timespec*, %struct.timespec** %7, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.timespec*, %struct.timespec** %7, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 1000000000
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15, %10, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = load %struct.timespec*, %struct.timespec** %7, align 8
  %31 = call i32 @join_common(i32 %28, i8** %29, %struct.timespec* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %25
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @join_common(i32, i8**, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
