; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.changer_move = type { i64, i64, i32, i32, i32 }
%struct.ch_softc = type { i32*, i32*, i32*, i32, i32 }
%union.ccb = type { i32 }

@CHET_DT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@chdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@CM_INVERT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CH_TIMEOUT_MOVE_MEDIUM = common dso_local global i32 0, align 4
@cherror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.changer_move*)* @chmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chmove(%struct.cam_periph* %0, %struct.changer_move* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.changer_move*, align 8
  %6 = alloca %struct.ch_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.changer_move* %1, %struct.changer_move** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ch_softc*
  store %struct.ch_softc* %14, %struct.ch_softc** %6, align 8
  %15 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %16 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHET_DT, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %22 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHET_DT, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %20
  %29 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %30 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %33 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %36 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp sgt i32 %31, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %28
  %43 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %44 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %47 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %50 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp sgt i32 %45, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %42, %28
  %57 = load i32, i32* @ENODEV, align 4
  store i32 %57, i32* %3, align 4
  br label %139

58:                                               ; preds = %42
  %59 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %60 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %63 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %68 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 1, %70
  %72 = and i32 %66, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @ENODEV, align 4
  store i32 %75, i32* %3, align 4
  br label %139

76:                                               ; preds = %58
  %77 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %78 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %81 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %86 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %7, align 4
  %89 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %90 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %93 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %98 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %8, align 4
  %101 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %102 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %103 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %101, i32 %102)
  store %union.ccb* %103, %union.ccb** %9, align 8
  %104 = load %union.ccb*, %union.ccb** %9, align 8
  %105 = bitcast %union.ccb* %104 to i32*
  %106 = load i32, i32* @chdone, align 4
  %107 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %108 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %109 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.changer_move*, %struct.changer_move** %5, align 8
  %114 = getelementptr inbounds %struct.changer_move, %struct.changer_move* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @CM_INVERT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %76
  %120 = load i32, i32* @TRUE, align 4
  br label %123

121:                                              ; preds = %76
  %122 = load i32, i32* @FALSE, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32, i32* @SSD_FULL_SIZE, align 4
  %126 = load i32, i32* @CH_TIMEOUT_MOVE_MEDIUM, align 4
  %127 = call i32 @scsi_move_medium(i32* %105, i32 1, i32 %106, i32 %107, i32 %110, i32 %111, i32 %112, i32 %124, i32 %125, i32 %126)
  %128 = load %union.ccb*, %union.ccb** %9, align 8
  %129 = load i32, i32* @cherror, align 4
  %130 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %131 = load i32, i32* @SF_RETRY_UA, align 4
  %132 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %133 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @cam_periph_runccb(%union.ccb* %128, i32 %129, i32 %130, i32 %131, i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load %union.ccb*, %union.ccb** %9, align 8
  %137 = call i32 @xpt_release_ccb(%union.ccb* %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %123, %74, %56, %26
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_move_medium(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
