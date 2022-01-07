; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_proberequestbackoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_proberequestbackoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.cam_ed = type { i32 }
%struct.ccb_trans_settings = type { i64, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i64, i32 }
%union.ccb = type { i32 }

@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"failed to get current device settings\0A\00", align 1
@XPORT_SPI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"not SPI transport\0A\00", align 1
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"no sync rate known\0A\00", align 1
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"no sync rate available\0A\00", align 1
@CAM_DEV_DV_HIT_BOTTOM = common dso_local global i32 0, align 4
@CAM_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"hit async: giving up on DV\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"setting to async for DV\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"DV: period 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"setting period to 0x%x\0A\00", align 1
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"DV: failed to set period 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.cam_ed*)* @proberequestbackoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proberequestbackoff(%struct.cam_periph* %0, %struct.cam_ed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.cam_ed*, align 8
  %6 = alloca %struct.ccb_trans_settings, align 8
  %7 = alloca %struct.ccb_trans_settings_spi*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.cam_ed* %1, %struct.cam_ed** %5, align 8
  %8 = call i32 @memset(%struct.ccb_trans_settings* %6, i32 0, i32 48)
  %9 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 2
  %10 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %14 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %9, i32 %12, i32 %13)
  %15 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %16 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @CTS_TYPE_CURRENT_SETTINGS, align 8
  %19 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = bitcast %struct.ccb_trans_settings* %6 to %union.ccb*
  %21 = call i32 @xpt_action(%union.ccb* %20)
  %22 = bitcast %struct.ccb_trans_settings* %6 to %union.ccb*
  %23 = call i64 @cam_ccb_status(%union.ccb* %22)
  %24 = load i64, i64* @CAM_REQ_CMP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %31 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xpt_print(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %186

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XPORT_SPI, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %45 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xpt_print(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %186

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %51, %struct.ccb_trans_settings_spi** %7, align 8
  %52 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %53 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load i64, i64* @bootverbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %63 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @xpt_print(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %186

67:                                               ; preds = %49
  %68 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %69 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %76 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %81 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79, %74, %67
  %85 = load i64, i64* @bootverbose, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %89 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @xpt_print(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %84
  store i32 0, i32* %3, align 4
  br label %186

93:                                               ; preds = %79
  %94 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %95 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CAM_DEV_DV_HIT_BOTTOM, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %102 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %105 = call i32 @CAM_DEBUG(i32 %103, i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

106:                                              ; preds = %93
  %107 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %108 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %111 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %184, %106
  %113 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %114 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %118 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 15
  br i1 %120, label %121, label %136

121:                                              ; preds = %112
  %122 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %123 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %125 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %127 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %130 = call i32 @CAM_DEBUG(i32 %128, i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* @CAM_DEV_DV_HIT_BOTTOM, align 4
  %132 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %133 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %155

136:                                              ; preds = %112
  %137 = load i64, i64* @bootverbose, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %141 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %144 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %145 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @CAM_DEBUG(i32 %142, i32 %143, i8* %148)
  %150 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %151 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %139, %136
  br label %155

155:                                              ; preds = %154, %121
  %156 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %157 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i8*, i8** @CTS_TYPE_CURRENT_SETTINGS, align 8
  %160 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 1
  store i8* %159, i8** %160, align 8
  %161 = bitcast %struct.ccb_trans_settings* %6 to %union.ccb*
  %162 = call i32 @xpt_action(%union.ccb* %161)
  %163 = bitcast %struct.ccb_trans_settings* %6 to %union.ccb*
  %164 = call i64 @cam_ccb_status(%union.ccb* %163)
  %165 = load i64, i64* @CAM_REQ_CMP, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %185

168:                                              ; preds = %155
  %169 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %170 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %173 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %174 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @CAM_DEBUG(i32 %171, i32 %172, i8* %177)
  %179 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %180 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %186

184:                                              ; preds = %168
  br label %112

185:                                              ; preds = %167
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %183, %100, %92, %66, %48, %34
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @memset(%struct.ccb_trans_settings*, i32, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i64 @cam_ccb_status(%union.ccb*) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
