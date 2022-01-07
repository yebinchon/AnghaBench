; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdmediaprobedone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdmediaprobedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.cd_softc = type { i32, i32 }

@CD_FLAG_MEDIA_SCAN_ACT = common dso_local global i32 0, align 4
@CD_FLAG_MEDIA_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @cdmediaprobedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdmediaprobedone(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.cd_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.cd_softc*
  store %struct.cd_softc* %7, %struct.cd_softc** %3, align 8
  %8 = load i32, i32* @CD_FLAG_MEDIA_SCAN_ACT, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CD_FLAG_MEDIA_WAIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @CD_FLAG_MEDIA_WAIT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %24 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %28 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %27, i32 0, i32 1
  %29 = call i32 @wakeup(i32* %28)
  br label %30

30:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
