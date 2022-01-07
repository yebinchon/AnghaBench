; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_slowio_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_slowio_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@slowio_pollcnt = common dso_local global i64 0, align 8
@slowio_starttime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@slowio_delay_usec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slowio_end() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @slowio_pollcnt, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %37

6:                                                ; preds = %0
  %7 = call i32 @gettimeofday(%struct.timeval* %1, i32* null)
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slowio_starttime, i32 0, i32 0), align 4
  %11 = sub nsw i32 %9, %10
  %12 = mul nsw i32 %11, 1000000
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slowio_starttime, i32 0, i32 1), align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %12, %16
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 64, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %6
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 2500000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2500000, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* @slowio_delay_usec, align 4
  %27 = mul nsw i32 %26, 63
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %27, %28
  %30 = ashr i32 %29, 6
  store i32 %30, i32* @slowio_delay_usec, align 4
  %31 = load i32, i32* @slowio_delay_usec, align 4
  %32 = icmp sgt i32 %31, 64
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @slowio_delay_usec, align 4
  %35 = mul nsw i32 %34, 8
  %36 = call i32 @usleep(i32 %35)
  br label %37

37:                                               ; preds = %5, %33, %25
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
