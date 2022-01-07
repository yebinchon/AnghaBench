; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgsendccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgsendccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.sg_softc* }
%struct.sg_softc = type { i32, i32 }
%union.ccb = type { i32 }
%struct.cam_periph_map_info = type { i32 }

@sgerror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %union.ccb*)* @sgsendccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgsendccb(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.sg_softc*, align 8
  %7 = alloca %struct.cam_periph_map_info, align 4
  %8 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 0
  %11 = load %struct.sg_softc*, %struct.sg_softc** %10, align 8
  store %struct.sg_softc* %11, %struct.sg_softc** %6, align 8
  %12 = call i32 @bzero(%struct.cam_periph_map_info* %7, i32 4)
  %13 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %14 = call i32 @cam_periph_unlock(%struct.cam_periph* %13)
  %15 = load %union.ccb*, %union.ccb** %5, align 8
  %16 = load %struct.sg_softc*, %struct.sg_softc** %6, align 8
  %17 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cam_periph_mapmem(%union.ccb* %15, %struct.cam_periph_map_info* %7, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %21 = call i32 @cam_periph_lock(%struct.cam_periph* %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load %union.ccb*, %union.ccb** %5, align 8
  %28 = load i32, i32* @sgerror, align 4
  %29 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %30 = load i32, i32* @SF_RETRY_UA, align 4
  %31 = load %struct.sg_softc*, %struct.sg_softc** %6, align 8
  %32 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cam_periph_runccb(%union.ccb* %27, i32 %28, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %36 = call i32 @cam_periph_unlock(%struct.cam_periph* %35)
  %37 = load %union.ccb*, %union.ccb** %5, align 8
  %38 = call i32 @cam_periph_unmapmem(%union.ccb* %37, %struct.cam_periph_map_info* %7)
  %39 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %40 = call i32 @cam_periph_lock(%struct.cam_periph* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @bzero(%struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_mapmem(%union.ccb*, %struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @cam_periph_unmapmem(%union.ccb*, %struct.cam_periph_map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
