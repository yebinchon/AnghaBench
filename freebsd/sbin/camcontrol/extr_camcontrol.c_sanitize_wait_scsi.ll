; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_sanitize_wait_scsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_sanitize_wait_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.scsi_sense_data }
%struct.scsi_sense_data = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error sending TEST UNIT READY command\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@SSD_KEY_NOT_READY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Sanitizing: %u.%02u%% (%d/%d)\0D\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Unexpected SCSI Sense Key Specific value returned during sanitize:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Unable to print status information, but sanitze will proceed.\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"will exit when sanitize is complete\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unexpected SCSI error during sanitize\00", align 1
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Unexpected CAM status %#x\00", align 1
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32, i32)* @sanitize_wait_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_wait_scsi(%struct.cam_device* %0, %union.ccb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_sense_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x i32], align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store %union.ccb* %1, %union.ccb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %170, %4
  %22 = load %union.ccb*, %union.ccb** %7, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_6__*
  %24 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_6__* %23)
  %25 = load %union.ccb*, %union.ccb** %7, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_6__*
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SSD_FULL_SIZE, align 4
  %29 = call i32 @scsi_test_unit_ready(%struct.TYPE_6__* %26, i32 0, i32* null, i32 %27, i32 %28, i32 5000)
  %30 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %31 = load %union.ccb*, %union.ccb** %7, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %37 = load %union.ccb*, %union.ccb** %7, align 8
  %38 = call i32 @cam_send_ccb(%struct.cam_device* %36, %union.ccb* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %180

43:                                               ; preds = %21
  %44 = load %union.ccb*, %union.ccb** %7, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CAM_STATUS_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %145

53:                                               ; preds = %43
  %54 = load %union.ccb*, %union.ccb** %7, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %145

61:                                               ; preds = %53
  %62 = load %union.ccb*, %union.ccb** %7, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store %struct.scsi_sense_data* %64, %struct.scsi_sense_data** %15, align 8
  %65 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %15, align 8
  %66 = load %union.ccb*, %union.ccb** %7, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_6__*
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %union.ccb*, %union.ccb** %7, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %69, %73
  %75 = call i32 @scsi_extract_sense_len(%struct.scsi_sense_data* %65, i64 %74, i32* %16, i32* %17, i32* %18, i32* %19, i32 1)
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @SSD_KEY_NOT_READY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %136

79:                                               ; preds = %61
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %136

82:                                               ; preds = %79
  %83 = load i32, i32* %19, align 4
  %84 = icmp eq i32 %83, 27
  br i1 %84, label %85, label %136

85:                                               ; preds = %82
  %86 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %15, align 8
  %87 = load %union.ccb*, %union.ccb** %7, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %union.ccb*, %union.ccb** %7, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %90, %94
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %97 = call i64 @scsi_get_sks(%struct.scsi_sense_data* %86, i64 %95, i32* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %85
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 1
  %104 = call i32 @scsi_2btoul(i32* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 10000, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* @stdout, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sdiv i32 %108, 6553600
  %110 = load i32, i32* %14, align 4
  %111 = sdiv i32 %110, 65536
  %112 = srem i32 %111, 100
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112, i32 %113, i32 65536)
  %115 = load i32, i32* @stdout, align 4
  %116 = call i32 @fflush(i32 %115)
  br label %134

117:                                              ; preds = %99, %85
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = icmp sle i32 %122, 1
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %127 = load %union.ccb*, %union.ccb** %7, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_6__*
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @scsi_sense_print(%struct.cam_device* %126, %struct.TYPE_6__* %128, i32 %129)
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %132 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %124, %120, %117
  br label %134

134:                                              ; preds = %133, %102
  %135 = call i32 @sleep(i32 1)
  br label %144

136:                                              ; preds = %82, %79, %61
  %137 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %138 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %139 = load %union.ccb*, %union.ccb** %7, align 8
  %140 = load i32, i32* @CAM_ESF_ALL, align 4
  %141 = load i32, i32* @CAM_EPF_ALL, align 4
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 @cam_error_print(%struct.cam_device* %138, %union.ccb* %139, i32 %140, i32 %141, i32 %142)
  store i32 1, i32* %5, align 4
  br label %180

144:                                              ; preds = %134
  br label %169

145:                                              ; preds = %53, %43
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @CAM_REQ_CMP, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load i32, i32* %12, align 4
  %155 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @arglist, align 4
  %157 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %153
  %161 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %162 = load %union.ccb*, %union.ccb** %7, align 8
  %163 = load i32, i32* @CAM_ESF_ALL, align 4
  %164 = load i32, i32* @CAM_EPF_ALL, align 4
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 @cam_error_print(%struct.cam_device* %161, %union.ccb* %162, i32 %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %160, %153
  store i32 1, i32* %5, align 4
  br label %180

168:                                              ; preds = %149, %145
  br label %169

169:                                              ; preds = %168, %144
  br label %170

170:                                              ; preds = %169
  %171 = load %union.ccb*, %union.ccb** %7, align 8
  %172 = bitcast %union.ccb* %171 to %struct.TYPE_5__*
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CAM_STATUS_MASK, align 4
  %176 = and i32 %174, %175
  %177 = load i32, i32* @CAM_REQ_CMP, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %21, label %179

179:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %167, %136, %41
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_6__*) #1

declare dso_local i32 @scsi_test_unit_ready(%struct.TYPE_6__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @scsi_extract_sense_len(%struct.scsi_sense_data*, i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @scsi_get_sks(%struct.scsi_sense_data*, i64, i32*) #1

declare dso_local i32 @scsi_2btoul(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @scsi_sense_print(%struct.cam_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
