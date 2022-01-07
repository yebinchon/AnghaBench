; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_announce_periph_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_announce_periph_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32 }
%struct.sbuf = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.sbuf*)* @scsi_announce_periph_sbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_announce_periph_sbuf(%struct.cam_periph* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.ccb_trans_settings, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccb_trans_settings_spi*, align 8
  %10 = alloca %struct.ccb_trans_settings_fc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = call i32 @_scsi_announce_periph(%struct.cam_periph* %11, i32* %6, i32* %7, %struct.ccb_trans_settings* %5)
  %13 = bitcast %struct.ccb_trans_settings* %5 to %union.ccb*
  %14 = call i64 @cam_ccb_status(%union.ccb* %13)
  %15 = load i64, i64* @CAM_REQ_CMP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %172

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %25 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %29 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 1000
  %34 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %31, i32 %33)
  br label %45

35:                                               ; preds = %18
  %36 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %37 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %38 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %41 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %23
  %46 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CAM_REQ_CMP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %116

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XPORT_SPI, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store %struct.ccb_trans_settings_spi* %58, %struct.ccb_trans_settings_spi** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sdiv i32 %63, 1000
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 %65, 1000
  %67 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %9, align 8
  %68 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %75 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %9, align 8
  %76 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66, i8* %74, i32 %77)
  br label %79

79:                                               ; preds = %61, %56
  %80 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %9, align 8
  %81 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %79
  %87 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %9, align 8
  %88 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %96 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %100

97:                                               ; preds = %91
  %98 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %99 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %102 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %9, align 8
  %103 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 1, %104
  %106 = mul nsw i32 8, %105
  %107 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %115

108:                                              ; preds = %86, %79
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %113 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %100
  br label %116

116:                                              ; preds = %115, %51, %45
  %117 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CAM_REQ_CMP, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %169

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @XPORT_FC, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %169

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store %struct.ccb_trans_settings_fc* %129, %struct.ccb_trans_settings_fc** %10, align 8
  %130 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %10, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CTS_FC_VALID_WWNN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %138 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %10, align 8
  %139 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %136, %127
  %143 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %10, align 8
  %144 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CTS_FC_VALID_WWPN, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %151 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %10, align 8
  %152 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %10, align 8
  %157 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CTS_FC_VALID_PORT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %164 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %10, align 8
  %165 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %162, %155
  br label %169

169:                                              ; preds = %168, %122, %116
  %170 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %171 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %17
  ret void
}

declare dso_local i32 @_scsi_announce_periph(%struct.cam_periph*, i32*, i32*, %struct.ccb_trans_settings*) #1

declare dso_local i64 @cam_ccb_status(%union.ccb*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
