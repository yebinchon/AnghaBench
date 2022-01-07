; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_announce_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_announce_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i8*, i32 }
%struct.ccb_trans_settings = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_pata }
%struct.ccb_trans_settings_sata = type { i32, i32, i64, i32, i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @ata_announce_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_announce_periph(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_trans_settings, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccb_trans_settings_pata*, align 8
  %7 = alloca %struct.ccb_trans_settings_sata*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = call i32 @_ata_announce_periph(%struct.cam_periph* %8, %struct.ccb_trans_settings* %3, i32* %4)
  %10 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CAM_STATUS_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @CAM_REQ_CMP, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %163

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %25 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %28 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 1000
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29, i32 %30, i32 %32)
  br label %43

34:                                               ; preds = %18
  %35 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %36 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %39 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %23
  %44 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XPORT_ATA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.ccb_trans_settings_pata* %50, %struct.ccb_trans_settings_pata** %6, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %53 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %60 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ata_mode2string(i32 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %58, %48
  %65 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %66 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %73 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %78 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %76, %71, %64
  %82 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %83 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CTS_ATA_VALID_BYTECOUNT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.ccb_trans_settings_pata*, %struct.ccb_trans_settings_pata** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_trans_settings_pata, %struct.ccb_trans_settings_pata* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %43
  %96 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XPORT_SATA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %161

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %3, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store %struct.ccb_trans_settings_sata* %102, %struct.ccb_trans_settings_sata** %7, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %105 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %112 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %117

115:                                              ; preds = %100
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %119 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %126 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @ata_mode2string(i32 %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %124, %117
  %131 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %132 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %139 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %144 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %145)
  br label %147

147:                                              ; preds = %142, %137, %130
  %148 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %149 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load %struct.ccb_trans_settings_sata*, %struct.ccb_trans_settings_sata** %7, align 8
  %156 = getelementptr inbounds %struct.ccb_trans_settings_sata, %struct.ccb_trans_settings_sata* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154, %147
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %95
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %17
  ret void
}

declare dso_local i32 @_ata_announce_periph(%struct.cam_periph*, %struct.ccb_trans_settings*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ata_mode2string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
