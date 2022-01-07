; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndadump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndadump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32, i64 }
%struct.nda_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ccb_nvmeio = type { i8*, i32 }
%struct.disk = type { %struct.cam_periph* }
%union.ccb = type { i32 }

@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@NDA_CCB_DUMP = common dso_local global i8* null, align 8
@cam_periph_error = common dso_local global i32 0, align 4
@SF_NO_RECOVERY = common dso_local global i32 0, align 4
@SF_NO_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Aborting dump due to I/O error %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"flush cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @ndadump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndadump(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cam_periph*, align 8
  %13 = alloca %struct.nda_softc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ccb_nvmeio, align 8
  %16 = alloca %struct.disk*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.disk*
  store %struct.disk* %21, %struct.disk** %16, align 8
  %22 = load %struct.disk*, %struct.disk** %16, align 8
  %23 = getelementptr inbounds %struct.disk, %struct.disk* %22, i32 0, i32 0
  %24 = load %struct.cam_periph*, %struct.cam_periph** %23, align 8
  store %struct.cam_periph* %24, %struct.cam_periph** %12, align 8
  %25 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.nda_softc*
  store %struct.nda_softc* %28, %struct.nda_softc** %13, align 8
  %29 = load %struct.nda_softc*, %struct.nda_softc** %13, align 8
  %30 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %14, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %14, align 8
  %39 = udiv i64 %37, %38
  store i64 %39, i64* %18, align 8
  %40 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %41 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %6, align 4
  br label %106

48:                                               ; preds = %5
  %49 = call i32 @memset(%struct.ccb_nvmeio* %15, i32 0, i32 16)
  %50 = load i64, i64* %11, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %15, i32 0, i32 1
  %54 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %55 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %58 = call i32 @xpt_setup_ccb(i32* %53, i32 %56, i32 %57)
  %59 = load i8*, i8** @NDA_CCB_DUMP, align 8
  %60 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %15, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load %struct.nda_softc*, %struct.nda_softc** %13, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @nda_nvme_write(%struct.nda_softc* %61, %struct.ccb_nvmeio* %15, i8* %62, i64 %63, i64 %64, i64 %65)
  %67 = bitcast %struct.ccb_nvmeio* %15 to %union.ccb*
  %68 = load i32, i32* @cam_periph_error, align 4
  %69 = load i32, i32* @SF_NO_RECOVERY, align 4
  %70 = load i32, i32* @SF_NO_RETRY, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @cam_periph_runccb(%union.ccb* %67, i32 %68, i32 0, i32 %71, i32* null)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %52
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %52
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %6, align 4
  br label %106

80:                                               ; preds = %48
  %81 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %15, i32 0, i32 1
  %82 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %83 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %86 = call i32 @xpt_setup_ccb(i32* %81, i32 %84, i32 %85)
  %87 = load i8*, i8** @NDA_CCB_DUMP, align 8
  %88 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %15, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load %struct.nda_softc*, %struct.nda_softc** %13, align 8
  %90 = call i32 @nda_nvme_flush(%struct.nda_softc* %89, %struct.ccb_nvmeio* %15)
  %91 = bitcast %struct.ccb_nvmeio* %15 to %union.ccb*
  %92 = load i32, i32* @cam_periph_error, align 4
  %93 = load i32, i32* @SF_NO_RECOVERY, align 4
  %94 = load i32, i32* @SF_NO_RETRY, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @cam_periph_runccb(%union.ccb* %91, i32 %92, i32 0, i32 %95, i32* null)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %80
  %100 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  %101 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @xpt_print(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %80
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %78, %46
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.ccb_nvmeio*, i32, i32) #1

declare dso_local i32 @xpt_setup_ccb(i32*, i32, i32) #1

declare dso_local i32 @nda_nvme_write(%struct.nda_softc*, %struct.ccb_nvmeio*, i8*, i64, i64, i64) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @nda_nvme_flush(%struct.nda_softc*, %struct.ccb_nvmeio*) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
