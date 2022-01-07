; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdmediapoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdmediapoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.cd_softc* }
%struct.cd_softc = type { i64, i32, i64, i32 }

@CD_STATE_NORMAL = common dso_local global i64 0, align 8
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_poll_period = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cdmediapoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdmediapoll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.cd_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cam_periph*
  store %struct.cam_periph* %6, %struct.cam_periph** %3, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 0
  %9 = load %struct.cd_softc*, %struct.cd_softc** %8, align 8
  store %struct.cd_softc* %9, %struct.cd_softc** %4, align 8
  %10 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %11 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CD_STATE_NORMAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %17 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %22 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %27 = call i64 @cam_periph_acquire(%struct.cam_periph* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %33 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %34 = call i32 @xpt_schedule(%struct.cam_periph* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %20, %15, %1
  %37 = load i32, i32* @cd_poll_period, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %41 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %40, i32 0, i32 3
  %42 = load i32, i32* @cd_poll_period, align 4
  %43 = load i32, i32* @hz, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @callout_schedule(i32* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  ret void
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
