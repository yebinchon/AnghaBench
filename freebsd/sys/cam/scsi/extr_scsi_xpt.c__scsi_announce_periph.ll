; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c__scsi_announce_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c__scsi_announce_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_sas = type { i32, i32 }
%struct.ccb_trans_settings_fc = type { i32, i32 }
%struct.ccb_trans_settings_spi = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ccb_pathinq = type { i32, %struct.TYPE_4__ }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_PATH_INQ = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i64 0, align 8
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@XPORT_FC = common dso_local global i64 0, align 8
@CTS_FC_VALID_SPEED = common dso_local global i32 0, align 4
@XPORT_SAS = common dso_local global i64 0, align 8
@CTS_SAS_VALID_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, i32*, i32*, %struct.ccb_trans_settings*)* @_scsi_announce_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsi_announce_periph(%struct.cam_periph* %0, i32* %1, i32* %2, %struct.ccb_trans_settings* %3) #0 {
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.ccb_pathinq, align 8
  %10 = alloca %struct.cam_path*, align 8
  %11 = alloca %struct.ccb_trans_settings_spi*, align 8
  %12 = alloca %struct.ccb_trans_settings_fc*, align 8
  %13 = alloca %struct.ccb_trans_settings_sas*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ccb_trans_settings* %3, %struct.ccb_trans_settings** %8, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load %struct.cam_path*, %struct.cam_path** %15, align 8
  store %struct.cam_path* %16, %struct.cam_path** %10, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @cam_periph_assert(%struct.cam_periph* %17, i32 %18)
  %20 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %21 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %20, i32 0, i32 2
  %22 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %23 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %24 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %21, %struct.cam_path* %22, i32 %23)
  %25 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %26 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %27 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %30 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %31 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %33 = bitcast %struct.ccb_trans_settings* %32 to %union.ccb*
  %34 = call i32 @xpt_action(%union.ccb* %33)
  %35 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %36 = bitcast %struct.ccb_trans_settings* %35 to %union.ccb*
  %37 = call i64 @cam_ccb_status(%union.ccb* %36)
  %38 = load i64, i64* @CAM_REQ_CMP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %165

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 1
  %43 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %44 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %45 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %42, %struct.cam_path* %43, i32 %44)
  %46 = load i32, i32* @XPT_PATH_INQ, align 4
  %47 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = bitcast %struct.ccb_pathinq* %9 to %union.ccb*
  %50 = call i32 @xpt_action(%union.ccb* %49)
  %51 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 0, i32* %54, align 4
  %55 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %56 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CAM_REQ_CMP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %107

61:                                               ; preds = %41
  %62 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %63 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XPORT_SPI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %61
  %68 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %69 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store %struct.ccb_trans_settings_spi* %70, %struct.ccb_trans_settings_spi** %11, align 8
  %71 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %72 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %67
  %78 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %79 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %84 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @scsi_calc_syncsrate(i32 %85)
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %77, %67
  %92 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %93 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %100 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 1, %101
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %98, %91
  br label %107

107:                                              ; preds = %106, %61, %41
  %108 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %109 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CAM_REQ_CMP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %107
  %115 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %116 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @XPORT_FC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %122 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store %struct.ccb_trans_settings_fc* %123, %struct.ccb_trans_settings_fc** %12, align 8
  %124 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %12, align 8
  %125 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CTS_FC_VALID_SPEED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load %struct.ccb_trans_settings_fc*, %struct.ccb_trans_settings_fc** %12, align 8
  %132 = getelementptr inbounds %struct.ccb_trans_settings_fc, %struct.ccb_trans_settings_fc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %6, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %120
  br label %136

136:                                              ; preds = %135, %114, %107
  %137 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CAM_REQ_CMP, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %136
  %144 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %145 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @XPORT_SAS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %151 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store %struct.ccb_trans_settings_sas* %152, %struct.ccb_trans_settings_sas** %13, align 8
  %153 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %13, align 8
  %154 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @CTS_SAS_VALID_SPEED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %149
  %160 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %13, align 8
  %161 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %6, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %149
  br label %165

165:                                              ; preds = %40, %164, %143, %136
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i64 @cam_ccb_status(%union.ccb*) #1

declare dso_local i32 @scsi_calc_syncsrate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
