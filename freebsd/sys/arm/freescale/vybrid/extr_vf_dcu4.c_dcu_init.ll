; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dcu4.c_dcu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dcu4.c_dcu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcu_softc = type { %struct.TYPE_2__, %struct.panel_info* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32 }

@DELTA_Y_S = common dso_local global i32 0, align 4
@DCU_DISP_SIZE = common dso_local global i32 0, align 4
@BP_H_SHIFT = common dso_local global i32 0, align 4
@PW_H_SHIFT = common dso_local global i32 0, align 4
@FP_H_SHIFT = common dso_local global i32 0, align 4
@DCU_HSYN_PARA = common dso_local global i32 0, align 4
@BP_V_SHIFT = common dso_local global i32 0, align 4
@PW_V_SHIFT = common dso_local global i32 0, align 4
@FP_V_SHIFT = common dso_local global i32 0, align 4
@DCU_VSYN_PARA = common dso_local global i32 0, align 4
@DCU_BGND = common dso_local global i32 0, align 4
@DCU_DIV_RATIO = common dso_local global i32 0, align 4
@INV_VS = common dso_local global i32 0, align 4
@INV_HS = common dso_local global i32 0, align 4
@DCU_SYNPOL = common dso_local global i32 0, align 4
@LS_BF_VS_SHIFT = common dso_local global i32 0, align 4
@OUT_BUF_HIGH_SHIFT = common dso_local global i32 0, align 4
@OUT_BUF_LOW_SHIFT = common dso_local global i32 0, align 4
@DCU_THRESHOLD = common dso_local global i32 0, align 4
@DCU_INT_MASK = common dso_local global i32 0, align 4
@NUM_LAYERS = common dso_local global i32 0, align 4
@BPP24 = common dso_local global i32 0, align 4
@BPP_SHIFT = common dso_local global i32 0, align 4
@EN_LAYER = common dso_local global i32 0, align 4
@TRANS_SHIFT = common dso_local global i32 0, align 4
@DCU_DCU_MODE = common dso_local global i32 0, align 4
@DCU_MODE_M = common dso_local global i32 0, align 4
@DCU_MODE_S = common dso_local global i32 0, align 4
@DCU_MODE_NORMAL = common dso_local global i32 0, align 4
@RASTER_EN = common dso_local global i32 0, align 4
@DCU_UPDATE_MODE = common dso_local global i32 0, align 4
@READREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcu_softc*)* @dcu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcu_init(%struct.dcu_softc* %0) #0 {
  %2 = alloca %struct.dcu_softc*, align 8
  %3 = alloca %struct.panel_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dcu_softc* %0, %struct.dcu_softc** %2, align 8
  %6 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %7 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %6, i32 0, i32 1
  %8 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  store %struct.panel_info* %8, %struct.panel_info** %3, align 8
  %9 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DELTA_Y_S, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 16
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %23 = load i32, i32* @DCU_DISP_SIZE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @WRITE4(%struct.dcu_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %27 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BP_H_SHIFT, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %32 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PW_H_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %39 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FP_H_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %46 = load i32, i32* @DCU_HSYN_PARA, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @WRITE4(%struct.dcu_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %50 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BP_V_SHIFT, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %55 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PW_V_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %62 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FP_V_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %69 = load i32, i32* @DCU_VSYN_PARA, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @WRITE4(%struct.dcu_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %73 = load i32, i32* @DCU_BGND, align 4
  %74 = call i32 @WRITE4(%struct.dcu_softc* %72, i32 %73, i32 0)
  %75 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %76 = load i32, i32* @DCU_DIV_RATIO, align 4
  %77 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %78 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @WRITE4(%struct.dcu_softc* %75, i32 %76, i32 %79)
  %81 = load i32, i32* @INV_VS, align 4
  %82 = load i32, i32* @INV_HS, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %85 = load i32, i32* @DCU_SYNPOL, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @WRITE4(%struct.dcu_softc* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @LS_BF_VS_SHIFT, align 4
  %89 = shl i32 3, %88
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @OUT_BUF_HIGH_SHIFT, align 4
  %91 = shl i32 120, %90
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @OUT_BUF_LOW_SHIFT, align 4
  %95 = shl i32 0, %94
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %99 = load i32, i32* @DCU_THRESHOLD, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @WRITE4(%struct.dcu_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %103 = load i32, i32* @DCU_INT_MASK, align 4
  %104 = call i32 @WRITE4(%struct.dcu_softc* %102, i32 %103, i32 -1)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %146, %1
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @NUM_LAYERS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %105
  %110 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @DCU_CTRLDESCLn_1(i32 %111)
  %113 = call i32 @WRITE4(%struct.dcu_softc* %110, i32 %112, i32 0)
  %114 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @DCU_CTRLDESCLn_2(i32 %115)
  %117 = call i32 @WRITE4(%struct.dcu_softc* %114, i32 %116, i32 0)
  %118 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @DCU_CTRLDESCLn_3(i32 %119)
  %121 = call i32 @WRITE4(%struct.dcu_softc* %118, i32 %120, i32 0)
  %122 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @DCU_CTRLDESCLn_4(i32 %123)
  %125 = call i32 @WRITE4(%struct.dcu_softc* %122, i32 %124, i32 0)
  %126 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @DCU_CTRLDESCLn_5(i32 %127)
  %129 = call i32 @WRITE4(%struct.dcu_softc* %126, i32 %128, i32 0)
  %130 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @DCU_CTRLDESCLn_6(i32 %131)
  %133 = call i32 @WRITE4(%struct.dcu_softc* %130, i32 %132, i32 0)
  %134 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @DCU_CTRLDESCLn_7(i32 %135)
  %137 = call i32 @WRITE4(%struct.dcu_softc* %134, i32 %136, i32 0)
  %138 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @DCU_CTRLDESCLn_8(i32 %139)
  %141 = call i32 @WRITE4(%struct.dcu_softc* %138, i32 %140, i32 0)
  %142 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @DCU_CTRLDESCLn_9(i32 %143)
  %145 = call i32 @WRITE4(%struct.dcu_softc* %142, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %109
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %105

149:                                              ; preds = %105
  %150 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %151 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %155 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, 16
  %159 = or i32 %153, %158
  store i32 %159, i32* %4, align 4
  %160 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %161 = call i32 @DCU_CTRLDESCLn_1(i32 0)
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @WRITE4(%struct.dcu_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %165 = call i32 @DCU_CTRLDESCLn_2(i32 0)
  %166 = call i32 @WRITE4(%struct.dcu_softc* %164, i32 %165, i32 0)
  %167 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %168 = call i32 @DCU_CTRLDESCLn_3(i32 0)
  %169 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %170 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @WRITE4(%struct.dcu_softc* %167, i32 %168, i32 %172)
  %174 = load i32, i32* @BPP24, align 4
  %175 = load i32, i32* @BPP_SHIFT, align 4
  %176 = shl i32 %174, %175
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* @EN_LAYER, align 4
  %178 = load i32, i32* %4, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* @TRANS_SHIFT, align 4
  %181 = shl i32 255, %180
  %182 = load i32, i32* %4, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %4, align 4
  %184 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %185 = call i32 @DCU_CTRLDESCLn_4(i32 0)
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @WRITE4(%struct.dcu_softc* %184, i32 %185, i32 %186)
  %188 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %189 = call i32 @DCU_CTRLDESCLn_5(i32 0)
  %190 = call i32 @WRITE4(%struct.dcu_softc* %188, i32 %189, i32 16777215)
  %191 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %192 = call i32 @DCU_CTRLDESCLn_6(i32 0)
  %193 = call i32 @WRITE4(%struct.dcu_softc* %191, i32 %192, i32 0)
  %194 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %195 = call i32 @DCU_CTRLDESCLn_7(i32 0)
  %196 = call i32 @WRITE4(%struct.dcu_softc* %194, i32 %195, i32 0)
  %197 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %198 = call i32 @DCU_CTRLDESCLn_8(i32 0)
  %199 = call i32 @WRITE4(%struct.dcu_softc* %197, i32 %198, i32 0)
  %200 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %201 = call i32 @DCU_CTRLDESCLn_9(i32 0)
  %202 = call i32 @WRITE4(%struct.dcu_softc* %200, i32 %201, i32 0)
  %203 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %204 = load i32, i32* @DCU_DCU_MODE, align 4
  %205 = call i32 @READ4(%struct.dcu_softc* %203, i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* @DCU_MODE_M, align 4
  %207 = load i32, i32* @DCU_MODE_S, align 4
  %208 = shl i32 %206, %207
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %4, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* @DCU_MODE_NORMAL, align 4
  %213 = load i32, i32* @DCU_MODE_S, align 4
  %214 = shl i32 %212, %213
  %215 = load i32, i32* %4, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* @RASTER_EN, align 4
  %218 = load i32, i32* %4, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %4, align 4
  %220 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %221 = load i32, i32* @DCU_DCU_MODE, align 4
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @WRITE4(%struct.dcu_softc* %220, i32 %221, i32 %222)
  %224 = load %struct.dcu_softc*, %struct.dcu_softc** %2, align 8
  %225 = load i32, i32* @DCU_UPDATE_MODE, align 4
  %226 = load i32, i32* @READREG, align 4
  %227 = call i32 @WRITE4(%struct.dcu_softc* %224, i32 %225, i32 %226)
  ret i32 0
}

declare dso_local i32 @WRITE4(%struct.dcu_softc*, i32, i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_1(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_2(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_3(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_4(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_5(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_6(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_7(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_8(i32) #1

declare dso_local i32 @DCU_CTRLDESCLn_9(i32) #1

declare dso_local i32 @READ4(%struct.dcu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
