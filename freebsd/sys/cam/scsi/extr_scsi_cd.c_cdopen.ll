; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.cam_periph = type { i32, i64 }
%struct.cd_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@CD_FLAG_INVALID = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cdopen\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"leaving cdopen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @cdopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdopen(%struct.disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.cd_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.disk* %0, %struct.disk** %3, align 8
  %7 = load %struct.disk*, %struct.disk** %3, align 8
  %8 = getelementptr inbounds %struct.disk, %struct.disk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %4, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cd_softc*
  store %struct.cd_softc* %14, %struct.cd_softc** %5, align 8
  %15 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %16 = call i64 @cam_periph_acquire(%struct.cam_periph* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %22 = call i32 @cam_periph_lock(%struct.cam_periph* %21)
  %23 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %24 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CD_FLAG_INVALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %31 = call i32 @cam_periph_release_locked(%struct.cam_periph* %30)
  %32 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %33 = call i32 @cam_periph_unlock(%struct.cam_periph* %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %20
  %36 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %37 = load i32, i32* @PRIBIO, align 4
  %38 = load i32, i32* @PCATCH, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @cam_periph_hold(%struct.cam_periph* %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %44 = call i32 @cam_periph_release_locked(%struct.cam_periph* %43)
  %45 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %46 = call i32 @cam_periph_unlock(%struct.cam_periph* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %35
  %49 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %50 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %53 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @CAM_DEBUG(i32 %51, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %57 = call i32 @cdcheckmedia(%struct.cam_periph* %56, i32 1)
  %58 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %59 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %62 = call i32 @CAM_DEBUG(i32 %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %64 = call i32 @cam_periph_unhold(%struct.cam_periph* %63)
  %65 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %66 = call i32 @cam_periph_unlock(%struct.cam_periph* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %48, %42, %29, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_hold(%struct.cam_periph*, i32) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cdcheckmedia(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unhold(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
