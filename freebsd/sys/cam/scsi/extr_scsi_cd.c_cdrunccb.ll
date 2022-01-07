; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdrunccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdrunccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cd_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cam_periph = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*, i32 (%union.ccb*, i32, i32)*, i32, i32)* @cdrunccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrunccb(%union.ccb* %0, i32 (%union.ccb*, i32, i32)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32 (%union.ccb*, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cd_softc*, align 8
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %5, align 8
  store i32 (%union.ccb*, i32, i32)* %1, i32 (%union.ccb*, i32, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %union.ccb*, %union.ccb** %5, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cam_periph* @xpt_path_periph(i32 %15)
  store %struct.cam_periph* %16, %struct.cam_periph** %10, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %18 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.cd_softc*
  store %struct.cd_softc* %20, %struct.cd_softc** %9, align 8
  %21 = load %union.ccb*, %union.ccb** %5, align 8
  %22 = load i32 (%union.ccb*, i32, i32)*, i32 (%union.ccb*, i32, i32)** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.cd_softc*, %struct.cd_softc** %9, align 8
  %26 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cam_periph_runccb(%union.ccb* %21, i32 (%union.ccb*, i32, i32)* %22, i32 %23, i32 %24, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32 (%union.ccb*, i32, i32)*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
