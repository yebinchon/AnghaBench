; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_announce_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_announce_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i8*, i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_fc = type { i32, i32, i64, i64 }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%union.ccb = type { i32 }

@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s%d: %d.%03dMB/s transfers\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s%d: %dKB/s transfers\00", align 1
@XPORT_SPI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c" (%d.%03dMHz%s, offset %d\00", align 1
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%dbit)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@XPORT_FC = common dso_local global i64 0, align 8
@CTS_FC_VALID_WWNN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c" WWNN 0x%llx\00", align 1
@CTS_FC_VALID_WWPN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c" WWPN 0x%llx\00", align 1
@CTS_FC_VALID_PORT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c" PortID 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @scsi_announce_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_announce_periph(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_trans_settings, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccb_trans_settings_spi*, align 8
  %8 = alloca %struct.ccb_trans_settings_fc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %10 = call i32 @_scsi_announce_periph(%struct.cam_periph* %9, i32* %4, i32* %5, %struct.ccb_trans_settings* %3)
  %11 = bitcast %struct.ccb_trans_settings* %3 to %union.ccb*
  %12 = call i64 @cam_ccb_status(%union.ccb* %11)
  %13 = load i64, i64* @CAM_REQ_CMP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %159

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %23 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 1000
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27, i32 %28, i32 %30)
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %34 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %37 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %21
  %42 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CAM_REQ_CMP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XPORT_SPI, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store %struct.ccb_trans_settings_spi* %54, %struct.ccb_trans_settings_spi** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = sdiv i32 %58, 1000
  %60 = load i32, i32* %5, align 4
  %61 = srem i32 %60, 1000
  %62 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %63 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %70 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %71 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61, i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %57, %52
  %75 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %76 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %83 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %93

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  %94 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %95 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 1, %96
  %98 = mul nsw i32 8, %97
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  br label %106

100:                                              ; preds = %81, %74
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100
  br label %106

106:                                              ; preds = %105, %93
  br label %107

107:                                              ; preds = %106, %47, %41
  %108 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CAM_REQ_CMP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @XPORT_FC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store %struct.ccb_trans_settings_fc* %120, %struct.ccb_trans_settings_fc** %8, align 8
  %121 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %122 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CTS_FC_VALID_WWNN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %129 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %127, %118
  %133 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %134 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CTS_FC_VALID_WWPN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %141 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %139, %132
  %145 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %146 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CTS_FC_VALID_PORT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %8, align 8
  %153 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %151, %144
  br label %157

157:                                              ; preds = %156, %113, %107
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %15
  ret void
}

declare dso_local i32 @_scsi_announce_periph(%struct.cam_periph*, i32*, i32*, %struct.ccb_trans_settings*) #1

declare dso_local i64 @cam_ccb_status(%union.ccb*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
