; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdstrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdstrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cam_periph = type { i64, i32 }
%struct.cd_softc = type { i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cdstrategy(%p)\0A\00", align 1
@CD_FLAG_INVALID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CD_FLAG_VALID_MEDIA = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @cdstrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdstrategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.cd_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %3, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = call i32 @cam_periph_lock(%struct.cam_periph* %11)
  %13 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %14 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = bitcast %struct.bio* %17 to i8*
  %19 = call i32 @CAM_DEBUG(i32 %15, i32 %16, i8* %18)
  %20 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %21 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.cd_softc*
  store %struct.cd_softc* %23, %struct.cd_softc** %4, align 8
  %24 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CD_FLAG_INVALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %32 = call i32 @cam_periph_unlock(%struct.cam_periph* %31)
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = load i32, i32* @ENXIO, align 4
  %35 = call i32 @biofinish(%struct.bio* %33, i32* null, i32 %34)
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %38 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %37, i32 0, i32 1
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = call i32 @bioq_disksort(i32* %38, %struct.bio* %39)
  %41 = load %struct.cd_softc*, %struct.cd_softc** %4, align 8
  %42 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CD_FLAG_VALID_MEDIA, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %49 = call i32 @cdcheckmedia(%struct.cam_periph* %48, i32 0)
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %52 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %53 = call i32 @xpt_schedule(%struct.cam_periph* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %56 = call i32 @cam_periph_unlock(%struct.cam_periph* %55)
  br label %57

57:                                               ; preds = %54, %30
  ret void
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @biofinish(%struct.bio*, i32*, i32) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @cdcheckmedia(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
