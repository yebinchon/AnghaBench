; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_announce_periph_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_announce_periph_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32 }
%struct.sbuf = type { i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_pata }
%struct.ccb_trans_settings_sata = type { i32, i64, i32, i32, i32 }
%struct.ccb_trans_settings_pata = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s%d: %d.%03dMB/s transfers\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s%d: %dKB/s transfers\00", align 1
@XPORT_ATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@CTS_ATA_VALID_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@CTS_ATA_VALID_ATAPI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"ATAPI %dbytes, \00", align 1
@CTS_ATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"PIO %dbytes\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@XPORT_SATA = common dso_local global i64 0, align 8
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"SATA %d.x, \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SATA, \00", align 1
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %struct.sbuf*)* @ata_announce_periph_sbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_announce_periph_sbuf(%struct.cam_periph* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.ccb_trans_settings, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_trans_settings_pata*, align 8
  %9 = alloca %struct.ccb_trans_settings_sata*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %10 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %11 = call i32 @_ata_announce_periph(%struct.cam_periph* %10, %struct.ccb_trans_settings* %5, i32* %6)
  %12 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CAM_STATUS_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CAM_REQ_CMP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %180

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %27 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %28 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %31 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = srem i32 %34, 1000
  %36 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i32 %35)
  br label %47

37:                                               ; preds = %20
  %38 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %39 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %40 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %43 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %25
  %48 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XPORT_ATA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store %struct.ccb_trans_settings_pata* %54, %struct.ccb_trans_settings_pata** %8, align 8
  %55 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %56 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %58 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %65 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %66 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ata_mode2string(i32 %67)
  %69 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %63, %52
  %71 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %72 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %79 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %84 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %85 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %82, %77, %70
  %89 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %90 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CTS_ATA_VALID_BYTECOUNT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %97 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %8, align 8
  %98 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %103 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %47
  %105 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @XPORT_SATA, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %177

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %5, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store %struct.ccb_trans_settings_sata* %111, %struct.ccb_trans_settings_sata** %9, align 8
  %112 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %113 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %115 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %122 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %123 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  br label %129

126:                                              ; preds = %109
  %127 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %128 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %120
  %130 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %138 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %139 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ata_mode2string(i32 %140)
  %142 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %136, %129
  %144 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %145 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %152 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %157 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %158 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %155, %150, %143
  %162 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %163 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %170 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %9, align 8
  %171 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %161
  %175 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %176 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %104
  %178 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %179 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %19
  ret void
}

declare dso_local i32 @_ata_announce_periph(%struct.cam_periph*, %struct.ccb_trans_settings*, i32*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @ata_mode2string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
