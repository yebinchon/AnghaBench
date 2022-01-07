; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_build_ata_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_build_ata_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@CC_DT_ATA = common dso_local global i64 0, align 8
@ATA_MAX_28BIT_LBA = common dso_local global i64 0, align 8
@ATA_FLAG_AUX = common dso_local global i32 0, align 4
@AP_FLAG_CHK_COND = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@AP_PROTO_MASK = common dso_local global i32 0, align 4
@AP_PROTO_DMA = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@AP_PROTO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_ata_cmd(%union.ccb* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i32 %9, i64 %10, i32* %11, i64 %12, i32* %13, i64 %14, i32 %15, i64 %16, i32 %17, i64 %18) #0 {
  %20 = alloca %union.ccb*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %20, align 8
  store i64 %1, i64* %21, align 8
  store i64 %2, i64* %22, align 8
  store i32 %3, i32* %23, align 4
  store i32 %4, i32* %24, align 4
  store i32 %5, i32* %25, align 4
  store i32 %6, i32* %26, align 4
  store i32 %7, i32* %27, align 4
  store i64 %8, i64* %28, align 8
  store i32 %9, i32* %29, align 4
  store i64 %10, i64* %30, align 8
  store i32* %11, i32** %31, align 8
  store i64 %12, i64* %32, align 8
  store i32* %13, i32** %33, align 8
  store i64 %14, i64* %34, align 8
  store i32 %15, i32* %35, align 4
  store i64 %16, i64* %36, align 8
  store i32 %17, i32* %37, align 4
  store i64 %18, i64* %38, align 8
  store i32 0, i32* %39, align 4
  %40 = load i64, i64* %38, align 8
  %41 = load i64, i64* @CC_DT_ATA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %132

43:                                               ; preds = %19
  %44 = load %union.ccb*, %union.ccb** %20, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_6__*
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* %22, align 8
  %48 = load i32, i32* %23, align 4
  %49 = load i32*, i32** %31, align 8
  %50 = load i64, i64* %32, align 8
  %51 = load i64, i64* %36, align 8
  %52 = call i32 @cam_fill_ataio(%struct.TYPE_6__* %45, i64 %46, i32* null, i64 %47, i32 %48, i32* %49, i64 %50, i64 %51)
  %53 = load i32, i32* %37, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %28, align 8
  %57 = load i64, i64* @ATA_MAX_28BIT_LBA, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %43
  %60 = load %union.ccb*, %union.ccb** %20, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_6__*
  %62 = load i32, i32* %29, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i64, i64* %28, align 8
  %65 = load i32, i32* %27, align 4
  %66 = call i32 @ata_48bit_cmd(%struct.TYPE_6__* %61, i32 %62, i32 %63, i64 %64, i32 %65)
  br label %75

67:                                               ; preds = %55
  %68 = load %union.ccb*, %union.ccb** %20, align 8
  %69 = bitcast %union.ccb* %68 to %struct.TYPE_6__*
  %70 = load i32, i32* %29, align 4
  %71 = load i32, i32* %26, align 4
  %72 = load i64, i64* %28, align 8
  %73 = load i32, i32* %27, align 4
  %74 = call i32 @ata_28bit_cmd(%struct.TYPE_6__* %69, i32 %70, i32 %71, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i64, i64* %30, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* @ATA_FLAG_AUX, align 4
  %80 = load %union.ccb*, %union.ccb** %20, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load i64, i64* %30, align 8
  %86 = load %union.ccb*, %union.ccb** %20, align 8
  %87 = bitcast %union.ccb* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %78, %75
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %96 = load %union.ccb*, %union.ccb** %20, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %94, %89
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* @AP_PROTO_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @AP_PROTO_DMA, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %110 = load %union.ccb*, %union.ccb** %20, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_6__*
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 8
  br label %131

116:                                              ; preds = %102
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* @AP_PROTO_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @AP_PROTO_FPDMA, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %124 = load %union.ccb*, %union.ccb** %20, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_6__*
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %122, %116
  br label %131

131:                                              ; preds = %130, %108
  br label %163

132:                                              ; preds = %19
  %133 = load i32, i32* %37, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %28, align 8
  %137 = load i64, i64* @ATA_MAX_28BIT_LBA, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135, %132
  %140 = load i32, i32* @AP_EXTEND, align 4
  %141 = load i32, i32* %24, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %24, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %union.ccb*, %union.ccb** %20, align 8
  %145 = bitcast %union.ccb* %144 to i32*
  %146 = load i64, i64* %21, align 8
  %147 = load i64, i64* %22, align 8
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* %27, align 4
  %153 = load i64, i64* %28, align 8
  %154 = load i32, i32* %29, align 4
  %155 = load i64, i64* %30, align 8
  %156 = load i32*, i32** %31, align 8
  %157 = load i64, i64* %32, align 8
  %158 = load i32*, i32** %33, align 8
  %159 = load i64, i64* %34, align 8
  %160 = load i32, i32* %35, align 4
  %161 = load i64, i64* %36, align 8
  %162 = call i32 @scsi_ata_pass(i32* %145, i64 %146, i32* null, i64 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i64 %153, i32 %154, i32 0, i32 0, i64 %155, i32 0, i32* %156, i64 %157, i32* %158, i64 %159, i32 0, i32 %160, i64 %161)
  store i32 %162, i32* %39, align 4
  br label %163

163:                                              ; preds = %143, %131
  %164 = load i32, i32* %39, align 4
  ret i32 %164
}

declare dso_local i32 @cam_fill_ataio(%struct.TYPE_6__*, i64, i32*, i64, i32, i32*, i64, i64) #1

declare dso_local i32 @ata_48bit_cmd(%struct.TYPE_6__*, i32, i32, i64, i32) #1

declare dso_local i32 @ata_28bit_cmd(%struct.TYPE_6__*, i32, i32, i64, i32) #1

declare dso_local i32 @scsi_ata_pass(i32*, i64, i32*, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32*, i64, i32*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
