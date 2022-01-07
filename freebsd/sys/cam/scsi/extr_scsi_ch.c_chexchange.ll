; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chexchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chexchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.changer_exchange = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.ch_softc = type { i32*, i32*, i32*, i32, i32 }
%union.ccb = type { i32 }

@CHET_DT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@chdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@CE_INVERT1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CE_INVERT2 = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CH_TIMEOUT_EXCHANGE_MEDIUM = common dso_local global i32 0, align 4
@cherror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.changer_exchange*)* @chexchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chexchange(%struct.cam_periph* %0, %struct.changer_exchange* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.changer_exchange*, align 8
  %6 = alloca %struct.ch_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.changer_exchange* %1, %struct.changer_exchange** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %13 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ch_softc*
  store %struct.ch_softc* %15, %struct.ch_softc** %6, align 8
  %16 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %17 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHET_DT, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %23 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHET_DT, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %29 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHET_DT, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21, %2
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %201

35:                                               ; preds = %27
  %36 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %37 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %40 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %43 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp sgt i32 %38, %47
  br i1 %48, label %77, label %49

49:                                               ; preds = %35
  %50 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %51 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %54 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %57 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp sgt i32 %52, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %49
  %64 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %65 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %68 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %71 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp sgt i32 %66, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %63, %49, %35
  %78 = load i32, i32* @ENODEV, align 4
  store i32 %78, i32* %3, align 4
  br label %201

79:                                               ; preds = %63
  %80 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %81 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %84 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %89 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = shl i32 1, %91
  %93 = and i32 %87, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %79
  %96 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %97 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %100 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %105 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 1, %107
  %109 = and i32 %103, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %95, %79
  %112 = load i32, i32* @ENODEV, align 4
  store i32 %112, i32* %3, align 4
  br label %201

113:                                              ; preds = %95
  %114 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %115 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %118 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %123 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %7, align 4
  %126 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %127 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %130 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %135 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  store i32 %137, i32* %8, align 4
  %138 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %139 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %142 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %147 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %145, %148
  store i32 %149, i32* %9, align 4
  %150 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %151 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %152 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %150, i32 %151)
  store %union.ccb* %152, %union.ccb** %10, align 8
  %153 = load %union.ccb*, %union.ccb** %10, align 8
  %154 = bitcast %union.ccb* %153 to i32*
  %155 = load i32, i32* @chdone, align 4
  %156 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %157 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %158 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %164 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CE_INVERT1, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %113
  %170 = load i32, i32* @TRUE, align 4
  br label %173

171:                                              ; preds = %113
  %172 = load i32, i32* @FALSE, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load %struct.changer_exchange*, %struct.changer_exchange** %5, align 8
  %176 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CE_INVERT2, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @TRUE, align 4
  br label %185

183:                                              ; preds = %173
  %184 = load i32, i32* @FALSE, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = load i32, i32* @SSD_FULL_SIZE, align 4
  %188 = load i32, i32* @CH_TIMEOUT_EXCHANGE_MEDIUM, align 4
  %189 = call i32 @scsi_exchange_medium(i32* %154, i32 1, i32 %155, i32 %156, i32 %159, i32 %160, i32 %161, i32 %162, i32 %174, i32 %186, i32 %187, i32 %188)
  %190 = load %union.ccb*, %union.ccb** %10, align 8
  %191 = load i32, i32* @cherror, align 4
  %192 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %193 = load i32, i32* @SF_RETRY_UA, align 4
  %194 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %195 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @cam_periph_runccb(%union.ccb* %190, i32 %191, i32 %192, i32 %193, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load %union.ccb*, %union.ccb** %10, align 8
  %199 = call i32 @xpt_release_ccb(%union.ccb* %198)
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %185, %111, %77, %33
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_exchange_medium(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
