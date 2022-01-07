; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_set_timed_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_set_timed_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.cam_periph* }
%struct.TYPE_8__ = type { i32 }
%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ses_mgmt_mode_page = type { i32, i32 }

@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SMS_PAGE_CTRL_CURRENT = common dso_local global i32 0, align 4
@SES_MGMT_MODE_PAGE_CODE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@enc_error = common dso_local global i32 0, align 4
@ENC_CFLAGS = common dso_local global i32 0, align 4
@ENC_FLAGS = common dso_local global i32 0, align 4
@SF_QUIET_IR = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Timed Completion Unsupported\0A\00", align 1
@SES_MGMT_TIMED_COMP_EN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Timed Completion Set Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Timed Completion Enabled\0A\00", align 1
@SES_FLAG_TIMEDCOMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Timed Completion Disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @ses_set_timed_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_timed_completion(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.cam_periph*, align 8
  %7 = alloca %struct.ses_mgmt_mode_page*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.cam_periph*, %struct.cam_periph** %12, align 8
  store %struct.cam_periph* %13, %struct.cam_periph** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %10, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %6, align 8
  %18 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %19 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %17, i32 %18)
  store %union.ccb* %19, %union.ccb** %5, align 8
  store i64 8, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32* @ENC_MALLOCZ(i64 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %137

25:                                               ; preds = %2
  %26 = load %union.ccb*, %union.ccb** %5, align 8
  %27 = bitcast %union.ccb* %26 to i32*
  %28 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @SMS_PAGE_CTRL_CURRENT, align 4
  %31 = load i32, i32* @SES_MGMT_MODE_PAGE_CODE, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @SSD_FULL_SIZE, align 4
  %35 = call i32 @scsi_mode_sense(i32* %27, i32 4, i32* null, i32 %28, i32 %29, i32 %30, i32 %31, i32* %32, i64 %33, i32 %34, i32 60000)
  %36 = load %union.ccb*, %union.ccb** %5, align 8
  %37 = load i32, i32* @enc_error, align 4
  %38 = load i32, i32* @ENC_CFLAGS, align 4
  %39 = load i32, i32* @ENC_FLAGS, align 4
  %40 = load i32, i32* @SF_QUIET_IR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @cam_periph_runccb(%union.ccb* %36, i32 %37, i32 %38, i32 %41, i32* null)
  %43 = load %union.ccb*, %union.ccb** %5, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CAM_REQ_CMP, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = call i32 @ENC_VLOG(%struct.TYPE_9__* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %132

52:                                               ; preds = %25
  %53 = load i32*, i32** %8, align 8
  %54 = bitcast i32* %53 to %struct.ses_mgmt_mode_page*
  store %struct.ses_mgmt_mode_page* %54, %struct.ses_mgmt_mode_page** %7, align 8
  %55 = load %struct.ses_mgmt_mode_page*, %struct.ses_mgmt_mode_page** %7, align 8
  %56 = getelementptr inbounds %struct.ses_mgmt_mode_page, %struct.ses_mgmt_mode_page* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SES_MGMT_TIMED_COMP_EN, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %107

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @SES_MGMT_TIMED_COMP_EN, align 4
  %68 = load %struct.ses_mgmt_mode_page*, %struct.ses_mgmt_mode_page** %7, align 8
  %69 = getelementptr inbounds %struct.ses_mgmt_mode_page, %struct.ses_mgmt_mode_page* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load i32, i32* @SES_MGMT_TIMED_COMP_EN, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ses_mgmt_mode_page*, %struct.ses_mgmt_mode_page** %7, align 8
  %76 = getelementptr inbounds %struct.ses_mgmt_mode_page, %struct.ses_mgmt_mode_page* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load %struct.ses_mgmt_mode_page*, %struct.ses_mgmt_mode_page** %7, align 8
  %81 = getelementptr inbounds %struct.ses_mgmt_mode_page, %struct.ses_mgmt_mode_page* %80, i32 0, i32 1
  %82 = call i32 @bzero(i32* %81, i32 4)
  %83 = load %union.ccb*, %union.ccb** %5, align 8
  %84 = bitcast %union.ccb* %83 to i32*
  %85 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @SSD_FULL_SIZE, align 4
  %91 = call i32 @scsi_mode_select(i32* %84, i32 5, i32* null, i32 %85, i32 %86, i32 %87, i32* %88, i64 %89, i32 %90, i32 60000)
  %92 = load %union.ccb*, %union.ccb** %5, align 8
  %93 = load i32, i32* @enc_error, align 4
  %94 = load i32, i32* @ENC_CFLAGS, align 4
  %95 = load i32, i32* @ENC_FLAGS, align 4
  %96 = call i32 @cam_periph_runccb(%union.ccb* %92, i32 %93, i32 %94, i32 %95, i32* null)
  %97 = load %union.ccb*, %union.ccb** %5, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CAM_REQ_CMP, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %79
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = call i32 @ENC_VLOG(%struct.TYPE_9__* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %132

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106, %62
  %108 = load %struct.ses_mgmt_mode_page*, %struct.ses_mgmt_mode_page** %7, align 8
  %109 = getelementptr inbounds %struct.ses_mgmt_mode_page, %struct.ses_mgmt_mode_page* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SES_MGMT_TIMED_COMP_EN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = call i32 @ENC_LOG(%struct.TYPE_9__* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @SES_FLAG_TIMEDCOMP, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %131

122:                                              ; preds = %107
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = call i32 @ENC_LOG(%struct.TYPE_9__* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @SES_FLAG_TIMEDCOMP, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %122, %114
  br label %132

132:                                              ; preds = %131, %103, %49
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @ENC_FREE(i32* %133)
  %135 = load %union.ccb*, %union.ccb** %5, align 8
  %136 = call i32 @xpt_release_ccb(%union.ccb* %135)
  br label %137

137:                                              ; preds = %132, %24
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SES_FLAG_TIMEDCOMP, align 4
  %142 = and i32 %140, %141
  ret i32 %142
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32* @ENC_MALLOCZ(i64) #1

declare dso_local i32 @scsi_mode_sense(i32*, i32, i32*, i32, i32, i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32*) #1

declare dso_local i32 @ENC_VLOG(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @scsi_mode_select(i32*, i32, i32*, i32, i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @ENC_LOG(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ENC_FREE(i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
