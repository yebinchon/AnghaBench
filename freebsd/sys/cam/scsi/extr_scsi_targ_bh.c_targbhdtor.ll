; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhdtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhdtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.targbh_softc = type { i32, i32 }

@TARGBH_STATE_TEARDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"targdtor - impossible init level\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"targbh\00", align 1
@hz = common dso_local global i32 0, align 4
@M_SCSIBH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @targbhdtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targbhdtor(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.targbh_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.targbh_softc*
  store %struct.targbh_softc* %7, %struct.targbh_softc** %3, align 8
  %8 = load i32, i32* @TARGBH_STATE_TEARDOWN, align 4
  %9 = load %struct.targbh_softc*, %struct.targbh_softc** %3, align 8
  %10 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %12 = call i32 @targbhdislun(%struct.cam_periph* %11)
  %13 = load %struct.targbh_softc*, %struct.targbh_softc** %3, align 8
  %14 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %19 [
    i32 0, label %16
    i32 1, label %18
  ]

16:                                               ; preds = %1
  %17 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %1, %16
  br label %19

19:                                               ; preds = %1, %18
  %20 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %21 = load %struct.targbh_softc*, %struct.targbh_softc** %3, align 8
  %22 = load i32, i32* @PRIBIO, align 4
  %23 = load i32, i32* @hz, align 4
  %24 = sdiv i32 %23, 2
  %25 = call i32 @cam_periph_sleep(%struct.cam_periph* %20, %struct.targbh_softc* %21, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.targbh_softc*, %struct.targbh_softc** %3, align 8
  %27 = load i32, i32* @M_SCSIBH, align 4
  %28 = call i32 @free(%struct.targbh_softc* %26, i32 %27)
  br label %29

29:                                               ; preds = %19
  ret void
}

declare dso_local i32 @targbhdislun(%struct.cam_periph*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @cam_periph_sleep(%struct.cam_periph*, %struct.targbh_softc*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.targbh_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
