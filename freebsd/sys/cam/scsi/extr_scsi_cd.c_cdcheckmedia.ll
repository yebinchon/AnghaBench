; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdcheckmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdcheckmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.cd_softc = type { i32, i32, i32 }

@CD_FLAG_MEDIA_WAIT = common dso_local global i32 0, align 4
@CD_FLAG_MEDIA_SCAN_ACT = common dso_local global i32 0, align 4
@CD_STATE_MEDIA_PREVENT = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cdmedia\00", align 1
@CD_FLAG_VALID_MEDIA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i32)* @cdcheckmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdcheckmedia(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cd_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cd_softc*
  store %struct.cd_softc* %10, %struct.cd_softc** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %15 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CD_FLAG_MEDIA_WAIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @CD_FLAG_MEDIA_WAIT, align 4
  %22 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %23 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %13, %2
  %27 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %28 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CD_FLAG_MEDIA_SCAN_ACT, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i32, i32* @CD_STATE_MEDIA_PREVENT, align 4
  %35 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %36 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CD_FLAG_MEDIA_SCAN_ACT, align 4
  %38 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %39 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %43 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %44 = call i32 @xpt_schedule(%struct.cam_periph* %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %26
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %69

49:                                               ; preds = %45
  %50 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %51 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %50, i32 0, i32 1
  %52 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %53 = call i32 @cam_periph_mtx(%struct.cam_periph* %52)
  %54 = load i32, i32* @PRIBIO, align 4
  %55 = call i32 @msleep(i32* %51, i32 %53, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %69

59:                                               ; preds = %49
  %60 = load %struct.cd_softc*, %struct.cd_softc** %5, align 8
  %61 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CD_FLAG_VALID_MEDIA, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %59
  br label %69

69:                                               ; preds = %68, %58, %48
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @cam_periph_mtx(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
