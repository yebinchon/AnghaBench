; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.pt_softc = type { i32, i32, i32 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32, i32, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ptdone\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@PT_CCB_RETRY_UA = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalidating device\0A\00", align 1
@PT_FLAG_DEVICE_INVALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @ptdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptdone(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.pt_softc*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %10 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.pt_softc*
  store %struct.pt_softc* %13, %struct.pt_softc** %5, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %18 = call i32 @CAM_DEBUG(i32 %16, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %20, %struct.ccb_scsiio** %6, align 8
  %21 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %22 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %155 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %2, %2
  %26 = load %union.ccb*, %union.ccb** %4, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.bio*
  store %struct.bio* %30, %struct.bio** %7, align 8
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CAM_STATUS_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @CAM_REQ_CMP, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %128

39:                                               ; preds = %25
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %41 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PT_CCB_RETRY_UA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @SF_RETRY_UA, align 4
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @pterror(%union.ccb* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ERESTART, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %158

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ENXIO, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %68 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @xpt_print(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @PT_FLAG_DEVICE_INVALID, align 4
  %72 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %73 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %66, %62
  %77 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %78 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %77, i32 0, i32 1
  %79 = load i32, i32* @EIO, align 4
  %80 = call i32 @bioq_flush(i32* %78, i32* null, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.bio*, %struct.bio** %7, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bio*, %struct.bio** %7, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bio*, %struct.bio** %7, align 8
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @BIO_ERROR, align 4
  %90 = load %struct.bio*, %struct.bio** %7, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %113

94:                                               ; preds = %59
  %95 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %96 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bio*, %struct.bio** %7, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.bio*, %struct.bio** %7, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = load %struct.bio*, %struct.bio** %7, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load i32, i32* @BIO_ERROR, align 4
  %108 = load %struct.bio*, %struct.bio** %7, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %94
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %union.ccb*, %union.ccb** %4, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_6__*
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %union.ccb*, %union.ccb** %4, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @cam_release_devq(i32 %125, i32 0, i32 0, i32 0, i32 0)
  br label %127

127:                                              ; preds = %121, %113
  br label %145

128:                                              ; preds = %25
  %129 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %130 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.bio*, %struct.bio** %7, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.bio*, %struct.bio** %7, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = load i32, i32* @BIO_ERROR, align 4
  %140 = load %struct.bio*, %struct.bio** %7, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %128
  br label %145

145:                                              ; preds = %144, %127
  %146 = load %union.ccb*, %union.ccb** %4, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_6__*
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @periph_links, i32 0, i32 0), align 4
  %149 = call i32 @LIST_REMOVE(%struct.TYPE_6__* %147, i32 %148)
  %150 = load %struct.bio*, %struct.bio** %7, align 8
  %151 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %152 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @biofinish(%struct.bio* %150, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %2, %145
  %156 = load %union.ccb*, %union.ccb** %4, align 8
  %157 = call i32 @xpt_release_ccb(%union.ccb* %156)
  br label %158

158:                                              ; preds = %155, %58
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @pterror(%union.ccb*, i32, i32) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

declare dso_local i32 @bioq_flush(i32*, i32*, i32) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @biofinish(%struct.bio*, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
