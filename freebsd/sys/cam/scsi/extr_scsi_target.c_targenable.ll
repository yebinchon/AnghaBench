; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targenable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_softc = type { i32, i64, i32* }
%struct.cam_path = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.ccb_pathinq = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TARG_STATE_LUN_ENABLED = common dso_local global i32 0, align 4
@CAM_LUN_ALRDY_ENA = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pathinq failed, status %#x\0A\00", align 1
@PIT_PROCESSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"controller does not support target mode\0A\00", align 1
@CAM_FUNC_NOTAVAIL = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"targ\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Requested path still in use by targ%d\0A\00", align 1
@targctor = common dso_local global i32 0, align 4
@targdtor = common dso_local global i32 0, align 4
@targstart = common dso_local global i32 0, align 4
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@targasync = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"cam_periph_alloc failed, status %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"targenable: succeeded but no periph?\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"enable lun failed, status %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.targ_softc*, %struct.cam_path*, i32, i32)* @targenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targenable(%struct.targ_softc* %0, %struct.cam_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.targ_softc*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca %struct.ccb_pathinq, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.targ_softc*, align 8
  store %struct.targ_softc* %0, %struct.targ_softc** %6, align 8
  store %struct.cam_path* %1, %struct.cam_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.targ_softc*, %struct.targ_softc** %6, align 8
  %15 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @CAM_LUN_ALRDY_ENA, align 4
  store i32 %21, i32* %5, align 4
  br label %138

22:                                               ; preds = %4
  %23 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %24 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %11, %struct.cam_path* %23)
  %25 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %11, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CAM_STATUS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @CAM_REQ_CMP, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %136

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PIT_PROCESSOR, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @CAM_FUNC_NOTAVAIL, align 4
  store i32 %44, i32* %12, align 4
  br label %136

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %11, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* @DFLTPHYS, align 8
  %51 = load %struct.targ_softc*, %struct.targ_softc** %6, align 8
  %52 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %68

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %11, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAXPHYS, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* @MAXPHYS, align 8
  %60 = load %struct.targ_softc*, %struct.targ_softc** %6, align 8
  %61 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %67

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %11, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.targ_softc*, %struct.targ_softc** %6, align 8
  %66 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %70 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cam_periph* %70, %struct.cam_periph** %10, align 8
  %71 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %72 = icmp ne %struct.cam_periph* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %75 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.targ_softc*
  store %struct.targ_softc* %77, %struct.targ_softc** %13, align 8
  %78 = load %struct.targ_softc*, %struct.targ_softc** %13, align 8
  %79 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load %struct.targ_softc*, %struct.targ_softc** %13, align 8
  %86 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @cam_periph_invalidate(i32* %87)
  %89 = load %struct.targ_softc*, %struct.targ_softc** %13, align 8
  %90 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  br label %97

91:                                               ; preds = %73
  %92 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %93 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @CAM_LUN_ALRDY_ENA, align 4
  store i32 %96, i32* %12, align 4
  br label %136

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %68
  %99 = load i32, i32* @targctor, align 4
  %100 = load i32, i32* @targdtor, align 4
  %101 = load i32, i32* @targstart, align 4
  %102 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %103 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %104 = load i32, i32* @targasync, align 4
  %105 = load %struct.targ_softc*, %struct.targ_softc** %6, align 8
  %106 = call i32 @cam_periph_alloc(i32 %99, i32* null, i32 %100, i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %102, %struct.cam_path* %103, i32 %104, i32 0, %struct.targ_softc* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @CAM_REQ_CMP, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %136

113:                                              ; preds = %98
  %114 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %115 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %116 = icmp eq %struct.cam_periph* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %113
  %120 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @targendislun(%struct.cam_path* %120, i32 1, i32 %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @CAM_REQ_CMP, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %136

130:                                              ; preds = %119
  %131 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %132 = load %struct.targ_softc*, %struct.targ_softc** %6, align 8
  %133 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %127, %110, %91, %42, %33
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %20
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i8*) #1

declare dso_local i32 @cam_periph_invalidate(i32*) #1

declare dso_local i32 @cam_periph_alloc(i32, i32*, i32, i32, i8*, i32, %struct.cam_path*, i32, i32, %struct.targ_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @targendislun(%struct.cam_path*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
