; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.cam_periph = type { i32, i32, i64 }
%struct.nda_softc = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ndaclose\0A\00", align 1
@NDA_FLAG_DIRTY = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@ndaerror = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Synchronize cache failed\0A\00", align 1
@NDA_FLAG_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ndaclose\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"nda %d outstanding commands\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @ndaclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndaclose(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.nda_softc*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  store %struct.disk* %0, %struct.disk** %2, align 8
  %7 = load %struct.disk*, %struct.disk** %2, align 8
  %8 = getelementptr inbounds %struct.disk, %struct.disk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %3, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nda_softc*
  store %struct.nda_softc* %14, %struct.nda_softc** %4, align 8
  %15 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %16 = call i32 @cam_periph_lock(%struct.cam_periph* %15)
  %17 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %18 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %21 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @CAM_DEBUG(i32 %19, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %25 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NDA_FLAG_DIRTY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %1
  %31 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %32 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %30
  %38 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %39 = load i32, i32* @PRIBIO, align 4
  %40 = call i64 @cam_periph_hold(%struct.cam_periph* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %44 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %45 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %43, i32 %44)
  store %union.ccb* %45, %union.ccb** %5, align 8
  %46 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %47 = load %union.ccb*, %union.ccb** %5, align 8
  %48 = bitcast %union.ccb* %47 to i32*
  %49 = call i32 @nda_nvme_flush(%struct.nda_softc* %46, i32* %48)
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = load i32, i32* @ndaerror, align 4
  %52 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %53 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cam_periph_runccb(%union.ccb* %50, i32 %51, i32 0, i32 0, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %62 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @xpt_print(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %72

65:                                               ; preds = %42
  %66 = load i32, i32* @NDA_FLAG_DIRTY, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %69 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %union.ccb*, %union.ccb** %5, align 8
  %74 = call i32 @xpt_release_ccb(%union.ccb* %73)
  %75 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %76 = call i32 @cam_periph_unhold(%struct.cam_periph* %75)
  br label %77

77:                                               ; preds = %72, %37, %30, %1
  %78 = load i32, i32* @NDA_FLAG_OPEN, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %81 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %89, %77
  %85 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %86 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %91 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %92 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %91, i32 0, i32 1
  %93 = load i32, i32* @PRIBIO, align 4
  %94 = call i32 @cam_periph_sleep(%struct.cam_periph* %90, i64* %92, i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %84

95:                                               ; preds = %84
  %96 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %97 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %102 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @KASSERT(i32 %100, i8* %104)
  %106 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %107 = call i32 @cam_periph_unlock(%struct.cam_periph* %106)
  %108 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %109 = call i32 @cam_periph_release(%struct.cam_periph* %108)
  ret i32 0
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_periph_hold(%struct.cam_periph*, i32) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @nda_nvme_flush(%struct.nda_softc*, i32*) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @cam_periph_unhold(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_sleep(%struct.cam_periph*, i64*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
