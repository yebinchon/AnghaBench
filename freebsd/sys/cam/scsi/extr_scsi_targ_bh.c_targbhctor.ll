; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.targbh_softc* }
%struct.targbh_softc = type { i32, i32, i32, i32*, i32, i32 }

@M_SCSIBH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"targctor: unable to malloc softc\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@TARGBH_STATE_NORMAL = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cam_periph*, i8*)* @targbhctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @targbhctor(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.targbh_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @M_SCSIBH, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call i64 @malloc(i32 32, i32 %7, i32 %8)
  %10 = inttoptr i64 %9 to %struct.targbh_softc*
  store %struct.targbh_softc* %10, %struct.targbh_softc** %6, align 8
  %11 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %12 = icmp eq %struct.targbh_softc* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  store i64 %15, i64* %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %18 = call i32 @bzero(%struct.targbh_softc* %17, i32 32)
  %19 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %20 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %19, i32 0, i32 5
  %21 = call i32 @TAILQ_INIT(i32* %20)
  %22 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %23 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %22, i32 0, i32 4
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %26 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %28 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %27, i32 0, i32 2
  %29 = call i32 @SLIST_INIT(i32* %28)
  %30 = load i32, i32* @TARGBH_STATE_NORMAL, align 4
  %31 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %32 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %34 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %35 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %34, i32 0, i32 0
  store %struct.targbh_softc* %33, %struct.targbh_softc** %35, align 8
  %36 = load %struct.targbh_softc*, %struct.targbh_softc** %6, align 8
  %37 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %41 = call i64 @targbhenlun(%struct.cam_periph* %40)
  %42 = load i64, i64* @CAM_REQ_CMP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %46 = call i32 @cam_periph_invalidate(%struct.cam_periph* %45)
  br label %47

47:                                               ; preds = %44, %16
  %48 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %13
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(%struct.targbh_softc*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @targbhenlun(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_invalidate(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
