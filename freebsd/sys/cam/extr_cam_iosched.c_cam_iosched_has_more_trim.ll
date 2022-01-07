; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_has_more_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_has_more_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_iosched_softc = type { i64, i64, i64, i64, i32, i32 }

@ticks = common dso_local global i64 0, align 8
@CAM_IOSCHED_FLAG_TRIM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_iosched_softc*)* @cam_iosched_has_more_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cam_iosched_has_more_trim(%struct.cam_iosched_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_iosched_softc*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %3, align 8
  %4 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %5 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %10 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %13 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %54

17:                                               ; preds = %8
  %18 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %19 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %24 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i64, i64* @ticks, align 8
  %29 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %54

38:                                               ; preds = %27, %22, %17
  store i32 0, i32* %2, align 4
  br label %54

39:                                               ; preds = %1
  %40 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %41 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CAM_IOSCHED_FLAG_TRIM_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %48 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %47, i32 0, i32 5
  %49 = call i64 @bioq_first(i32* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i1 [ false, %39 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %38, %37, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @bioq_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
