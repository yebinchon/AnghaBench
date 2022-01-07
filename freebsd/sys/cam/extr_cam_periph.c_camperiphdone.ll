; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i64 }
%struct.scsi_start_stop_unit = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@START_STOP_UNIT = common dso_local global i64 0, align 8
@SSS_LOEJ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@SF_NO_PRINT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@AC_INQ_CHANGED = common dso_local global i32 0, align 4
@CAM_PERIPH_RECOVERY_INPROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @camperiphdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camperiphdone(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_start_stop_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %union.ccb*, %union.ccb** %4, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %17, %struct.scsi_start_stop_unit** %7, align 8
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CAM_STATUS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CAM_REQ_CMP, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %110

27:                                               ; preds = %2
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = call i64 @scsi_extract_sense_ccb(%union.ccb* %28, i32* %9, i32* %10, i32* %11, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %27
  %32 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @START_STOP_UNIT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SSS_LOEJ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 36
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i32, i32* @SSS_LOEJ, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %7, align 8
  %54 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %50
  %62 = load %union.ccb*, %union.ccb** %4, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cam_release_devq(i32 %65, i32 0, i32 0, i32 0, i32 0)
  %67 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %68 = xor i32 %67, -1
  %69 = load %union.ccb*, %union.ccb** %4, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %61, %50
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = call i32 @xpt_action(%union.ccb* %75)
  br label %158

77:                                               ; preds = %47, %44, %37, %31
  br label %78

78:                                               ; preds = %77, %27
  %79 = load %union.ccb*, %union.ccb** %4, align 8
  %80 = load i32, i32* @SF_RETRY_UA, align 4
  %81 = load i32, i32* @SF_NO_PRINT, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @cam_periph_error(%union.ccb* %79, i32 0, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ERESTART, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %158

88:                                               ; preds = %78
  %89 = load %union.ccb*, %union.ccb** %4, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %union.ccb*, %union.ccb** %4, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @cam_release_devq(i32 %100, i32 0, i32 0, i32 0, i32 0)
  %102 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %103 = xor i32 %102, -1
  %104 = load %union.ccb*, %union.ccb** %4, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %103
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %96, %88
  br label %124

110:                                              ; preds = %2
  %111 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %7, align 8
  %112 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @START_STOP_UNIT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* @AC_INQ_CHANGED, align 4
  %118 = load %union.ccb*, %union.ccb** %4, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @xpt_async(i32 %117, i32 %121, i32* null)
  br label %123

123:                                              ; preds = %116, %110
  br label %124

124:                                              ; preds = %123, %109
  %125 = load %union.ccb*, %union.ccb** %4, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %union.ccb*
  store %union.ccb* %129, %union.ccb** %5, align 8
  %130 = load %union.ccb*, %union.ccb** %5, align 8
  %131 = load %union.ccb*, %union.ccb** %4, align 8
  %132 = call i32 @bcopy(%union.ccb* %130, %union.ccb* %131, i32 40)
  %133 = load %union.ccb*, %union.ccb** %5, align 8
  %134 = call i32 @xpt_free_ccb(%union.ccb* %133)
  %135 = load %union.ccb*, %union.ccb** %4, align 8
  %136 = bitcast %union.ccb* %135 to %struct.TYPE_6__*
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to void (%struct.cam_periph*, %union.ccb*)*
  %140 = icmp ne void (%struct.cam_periph*, %union.ccb*)* %139, @camperiphdone
  br i1 %140, label %141, label %148

141:                                              ; preds = %124
  %142 = load i32, i32* @CAM_PERIPH_RECOVERY_INPROG, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %145 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %124
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = bitcast %union.ccb* %152 to %struct.TYPE_6__*
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %151, %148
  %156 = load %union.ccb*, %union.ccb** %4, align 8
  %157 = call i32 @xpt_action(%union.ccb* %156)
  br label %158

158:                                              ; preds = %155, %87, %74
  %159 = load %union.ccb*, %union.ccb** %4, align 8
  %160 = bitcast %union.ccb* %159 to %struct.TYPE_6__*
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @cam_release_devq(i32 %162, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i64 @scsi_extract_sense_ccb(%union.ccb*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_periph_error(%union.ccb*, i32, i32) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @bcopy(%union.ccb*, %union.ccb*, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
