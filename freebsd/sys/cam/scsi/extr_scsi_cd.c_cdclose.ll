; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.cam_periph = type { i32, i64 }
%struct.cd_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PRIBIO = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cdclose\0A\00", align 1
@CD_FLAG_DISC_REMOVABLE = common dso_local global i32 0, align 4
@PR_ALLOW = common dso_local global i32 0, align 4
@DEVSTAT_BS_UNAVAILABLE = common dso_local global i32 0, align 4
@CD_FLAG_VALID_MEDIA = common dso_local global i32 0, align 4
@CD_FLAG_VALID_TOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @cdclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdclose(%struct.disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.cd_softc*, align 8
  store %struct.disk* %0, %struct.disk** %3, align 8
  %6 = load %struct.disk*, %struct.disk** %3, align 8
  %7 = getelementptr inbounds %struct.disk, %struct.disk* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.cam_periph*
  store %struct.cam_periph* %9, %struct.cam_periph** %4, align 8
  %10 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cd_softc*
  store %struct.cd_softc* %13, %struct.cd_softc** %5, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %15 = call i32 @cam_periph_lock(%struct.cam_periph* %14)
  %16 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %17 = load i32, i32* @PRIBIO, align 4
  %18 = call i64 @cam_periph_hold(%struct.cam_periph* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %22 = call i32 @cam_periph_unlock(%struct.cam_periph* %21)
  %23 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %24 = call i32 @cam_periph_release(%struct.cam_periph* %23)
  store i32 0, i32* %2, align 4
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %27 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %30 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @CAM_DEBUG(i32 %28, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %34 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CD_FLAG_DISC_REMOVABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %41 = load i32, i32* @PR_ALLOW, align 4
  %42 = call i32 @cdprevent(%struct.cam_periph* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* @DEVSTAT_BS_UNAVAILABLE, align 4
  %45 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %46 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @CD_FLAG_VALID_MEDIA, align 4
  %54 = load i32, i32* @CD_FLAG_VALID_TOC, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %58 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %62 = call i32 @cam_periph_unhold(%struct.cam_periph* %61)
  %63 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %64 = call i32 @cam_periph_release_locked(%struct.cam_periph* %63)
  %65 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %66 = call i32 @cam_periph_unlock(%struct.cam_periph* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %43, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i64 @cam_periph_hold(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cdprevent(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unhold(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
