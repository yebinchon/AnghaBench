; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_init_encoder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_init_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i64 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VID_HSKEW = common dso_local global i32 0, align 4
@VID_INTERLACE = common dso_local global i32 0, align 4
@TDA_TBG_CNTRL_1 = common dso_local global i32 0, align 4
@TBG_CNTRL_1_DWIN_DIS = common dso_local global i32 0, align 4
@TDA_HDCP_TX33 = common dso_local global i32 0, align 4
@HDCP_TX33_HDMI = common dso_local global i32 0, align 4
@TDA_ENC_CNTRL = common dso_local global i32 0, align 4
@ENC_CNTRL_DVI_MODE = common dso_local global i32 0, align 4
@TDA_HVF_CNTRL_0 = common dso_local global i32 0, align 4
@HVF_CNTRL_0_INTPOL_BYPASS = common dso_local global i32 0, align 4
@HVF_CNTRL_0_PREFIL_NONE = common dso_local global i32 0, align 4
@TDA_VIP_CNTRL_5 = common dso_local global i32 0, align 4
@TDA_VIP_CNTRL_4 = common dso_local global i32 0, align 4
@VIP_CNTRL_4_BLANKIT_NDE = common dso_local global i32 0, align 4
@VIP_CNTRL_4_BLC_NONE = common dso_local global i32 0, align 4
@TDA_PLL_SERIAL_3 = common dso_local global i32 0, align 4
@PLL_SERIAL_3_SRL_CCIR = common dso_local global i32 0, align 4
@TDA_PLL_SERIAL_1 = common dso_local global i32 0, align 4
@PLL_SERIAL_1_SRL_MAN_IP = common dso_local global i32 0, align 4
@PLL_SERIAL_3_SRL_DE = common dso_local global i32 0, align 4
@TDA_SERIALIZER = common dso_local global i32 0, align 4
@TDA_HVF_CNTRL_1 = common dso_local global i32 0, align 4
@HVF_CNTRL_1_VQR_FULL = common dso_local global i32 0, align 4
@TDA_RPT_CNTRL = common dso_local global i32 0, align 4
@TDA_SEL_CLK = common dso_local global i32 0, align 4
@SEL_CLK_SEL_CLK1 = common dso_local global i32 0, align 4
@SEL_CLK_ENA_SC_CLK = common dso_local global i32 0, align 4
@TDA_PLL_SERIAL_2 = common dso_local global i32 0, align 4
@TDA_MAT_CONTRL = common dso_local global i32 0, align 4
@MAT_CONTRL_MAT_BP = common dso_local global i32 0, align 4
@TDA_ANA_GENERAL = common dso_local global i32 0, align 4
@TDA_TBG_CNTRL_0 = common dso_local global i32 0, align 4
@TBG_CNTRL_0_SYNC_MTHD = common dso_local global i32 0, align 4
@VIP_CNTRL_3_SYNC_HS = common dso_local global i32 0, align 4
@VID_NHSYNC = common dso_local global i32 0, align 4
@VIP_CNTRL_3_H_TGL = common dso_local global i32 0, align 4
@VID_NVSYNC = common dso_local global i32 0, align 4
@VIP_CNTRL_3_V_TGL = common dso_local global i32 0, align 4
@TDA_VIP_CNTRL_3 = common dso_local global i32 0, align 4
@TBG_CNTRL_1_TGL_EN = common dso_local global i32 0, align 4
@TBG_CNTRL_1_H_TGL = common dso_local global i32 0, align 4
@TBG_CNTRL_1_V_TGL = common dso_local global i32 0, align 4
@TDA_VIDFORMAT = common dso_local global i32 0, align 4
@TDA_REFPIX_MSB = common dso_local global i32 0, align 4
@TDA_REFLINE_MSB = common dso_local global i32 0, align 4
@TDA_NPIX_MSB = common dso_local global i32 0, align 4
@TDA_NLINE_MSB = common dso_local global i32 0, align 4
@TDA_VS_LINE_STRT_1_MSB = common dso_local global i32 0, align 4
@TDA_VS_PIX_STRT_1_MSB = common dso_local global i32 0, align 4
@TDA_VS_LINE_END_1_MSB = common dso_local global i32 0, align 4
@TDA_VS_PIX_END_1_MSB = common dso_local global i32 0, align 4
@TDA_VS_LINE_STRT_2_MSB = common dso_local global i32 0, align 4
@TDA_VS_PIX_STRT_2_MSB = common dso_local global i32 0, align 4
@TDA_VS_LINE_END_2_MSB = common dso_local global i32 0, align 4
@TDA_VS_PIX_END_2_MSB = common dso_local global i32 0, align 4
@TDA_HS_PIX_START_MSB = common dso_local global i32 0, align 4
@TDA_HS_PIX_STOP_MSB = common dso_local global i32 0, align 4
@TDA_VWIN_START_1_MSB = common dso_local global i32 0, align 4
@TDA_VWIN_END_1_MSB = common dso_local global i32 0, align 4
@TDA_VWIN_START_2_MSB = common dso_local global i32 0, align 4
@TDA_VWIN_END_2_MSB = common dso_local global i32 0, align 4
@TDA_DE_START_MSB = common dso_local global i32 0, align 4
@TDA_DE_STOP_MSB = common dso_local global i32 0, align 4
@TDA19988 = common dso_local global i64 0, align 8
@TDA_ENABLE_SPACE = common dso_local global i32 0, align 4
@TBG_CNTRL_0_SYNC_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda19988_softc*, %struct.videomode*)* @tda19988_init_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda19988_init_encoder(%struct.tda19988_softc* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.tda19988_softc*, align 8
  %4 = alloca %struct.videomode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  %27 = load %struct.videomode*, %struct.videomode** %4, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.videomode*, %struct.videomode** %4, align 8
  %31 = getelementptr inbounds %struct.videomode, %struct.videomode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.videomode*, %struct.videomode** %4, align 8
  %34 = getelementptr inbounds %struct.videomode, %struct.videomode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.videomode*, %struct.videomode** %4, align 8
  %37 = getelementptr inbounds %struct.videomode, %struct.videomode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.videomode*, %struct.videomode** %4, align 8
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.videomode*, %struct.videomode** %4, align 8
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.videomode*, %struct.videomode** %4, align 8
  %48 = getelementptr inbounds %struct.videomode, %struct.videomode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %24, align 4
  %50 = load %struct.videomode*, %struct.videomode** %4, align 8
  %51 = getelementptr inbounds %struct.videomode, %struct.videomode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.videomode*, %struct.videomode** %4, align 8
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 3
  store i32 %58, i32* %5, align 4
  %59 = load %struct.videomode*, %struct.videomode** %4, align 8
  %60 = getelementptr inbounds %struct.videomode, %struct.videomode* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VID_HSKEW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %2
  %66 = load %struct.videomode*, %struct.videomode** %4, align 8
  %67 = getelementptr inbounds %struct.videomode, %struct.videomode* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %2
  %72 = load %struct.videomode*, %struct.videomode** %4, align 8
  %73 = getelementptr inbounds %struct.videomode, %struct.videomode* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VID_INTERLACE, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %71
  %79 = load %struct.videomode*, %struct.videomode** %4, align 8
  %80 = getelementptr inbounds %struct.videomode, %struct.videomode* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 1, %81
  %83 = load %struct.videomode*, %struct.videomode** %4, align 8
  %84 = getelementptr inbounds %struct.videomode, %struct.videomode* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.videomode*, %struct.videomode** %4, align 8
  %88 = getelementptr inbounds %struct.videomode, %struct.videomode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.videomode*, %struct.videomode** %4, align 8
  %91 = getelementptr inbounds %struct.videomode, %struct.videomode* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.videomode*, %struct.videomode** %4, align 8
  %97 = getelementptr inbounds %struct.videomode, %struct.videomode* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %12, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.videomode*, %struct.videomode** %4, align 8
  %102 = getelementptr inbounds %struct.videomode, %struct.videomode* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.videomode*, %struct.videomode** %4, align 8
  %105 = getelementptr inbounds %struct.videomode, %struct.videomode* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.videomode*, %struct.videomode** %4, align 8
  %110 = getelementptr inbounds %struct.videomode, %struct.videomode* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = load %struct.videomode*, %struct.videomode** %4, align 8
  %114 = getelementptr inbounds %struct.videomode, %struct.videomode* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  store i32 %116, i32* %14, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %194

117:                                              ; preds = %71
  %118 = load %struct.videomode*, %struct.videomode** %4, align 8
  %119 = getelementptr inbounds %struct.videomode, %struct.videomode* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.videomode*, %struct.videomode** %4, align 8
  %122 = getelementptr inbounds %struct.videomode, %struct.videomode* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = sdiv i32 %124, 2
  %126 = add nsw i32 1, %125
  store i32 %126, i32* %6, align 4
  %127 = load %struct.videomode*, %struct.videomode** %4, align 8
  %128 = getelementptr inbounds %struct.videomode, %struct.videomode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.videomode*, %struct.videomode** %4, align 8
  %131 = getelementptr inbounds %struct.videomode, %struct.videomode* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  %134 = sdiv i32 %133, 2
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load %struct.videomode*, %struct.videomode** %4, align 8
  %137 = getelementptr inbounds %struct.videomode, %struct.videomode* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 2
  %140 = add nsw i32 %135, %139
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %12, align 4
  store i32 %141, i32* %11, align 4
  %142 = load %struct.videomode*, %struct.videomode** %4, align 8
  %143 = getelementptr inbounds %struct.videomode, %struct.videomode* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.videomode*, %struct.videomode** %4, align 8
  %146 = getelementptr inbounds %struct.videomode, %struct.videomode* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %144, %147
  %149 = sdiv i32 %148, 2
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.videomode*, %struct.videomode** %4, align 8
  %152 = getelementptr inbounds %struct.videomode, %struct.videomode* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.videomode*, %struct.videomode** %4, align 8
  %155 = getelementptr inbounds %struct.videomode, %struct.videomode* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %153, %156
  %158 = sdiv i32 %157, 2
  %159 = add nsw i32 %150, %158
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.videomode*, %struct.videomode** %4, align 8
  %162 = getelementptr inbounds %struct.videomode, %struct.videomode* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %163, 2
  %165 = add nsw i32 %160, %164
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load %struct.videomode*, %struct.videomode** %4, align 8
  %168 = getelementptr inbounds %struct.videomode, %struct.videomode* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 2
  %171 = add nsw i32 %166, %170
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.videomode*, %struct.videomode** %4, align 8
  %174 = getelementptr inbounds %struct.videomode, %struct.videomode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 2
  %177 = add nsw i32 %172, %176
  store i32 %177, i32* %16, align 4
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.videomode*, %struct.videomode** %4, align 8
  %180 = getelementptr inbounds %struct.videomode, %struct.videomode* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, 2
  %183 = add nsw i32 %178, %182
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.videomode*, %struct.videomode** %4, align 8
  %186 = getelementptr inbounds %struct.videomode, %struct.videomode* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.videomode*, %struct.videomode** %4, align 8
  %189 = getelementptr inbounds %struct.videomode, %struct.videomode* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %187, %190
  %192 = sdiv i32 %191, 2
  %193 = add nsw i32 %184, %192
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %117, %78
  %195 = load %struct.videomode*, %struct.videomode** %4, align 8
  %196 = getelementptr inbounds %struct.videomode, %struct.videomode* %195, i32 0, i32 10
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 148500, %197
  store i32 %198, i32* %26, align 4
  %199 = load i32, i32* %26, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load i32, i32* %26, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %26, align 4
  %204 = load i32, i32* %26, align 4
  %205 = icmp sgt i32 %204, 3
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store i32 3, i32* %26, align 4
  br label %207

207:                                              ; preds = %206, %201
  br label %208

208:                                              ; preds = %207, %194
  %209 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %210 = load i32, i32* @TDA_TBG_CNTRL_1, align 4
  %211 = load i32, i32* @TBG_CNTRL_1_DWIN_DIS, align 4
  %212 = call i32 @tda19988_reg_set(%struct.tda19988_softc* %209, i32 %210, i32 %211)
  %213 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %214 = load i32, i32* @TDA_HDCP_TX33, align 4
  %215 = load i32, i32* @HDCP_TX33_HDMI, align 4
  %216 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %213, i32 %214, i32 %215)
  %217 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %218 = load i32, i32* @TDA_ENC_CNTRL, align 4
  %219 = load i32, i32* @ENC_CNTRL_DVI_MODE, align 4
  %220 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %217, i32 %218, i32 %219)
  %221 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %222 = load i32, i32* @TDA_HVF_CNTRL_0, align 4
  %223 = load i32, i32* @HVF_CNTRL_0_INTPOL_BYPASS, align 4
  %224 = load i32, i32* @HVF_CNTRL_0_PREFIL_NONE, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %221, i32 %222, i32 %225)
  %227 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %228 = load i32, i32* @TDA_VIP_CNTRL_5, align 4
  %229 = call i32 @VIP_CNTRL_5_SP_CNT(i32 0)
  %230 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %227, i32 %228, i32 %229)
  %231 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %232 = load i32, i32* @TDA_VIP_CNTRL_4, align 4
  %233 = load i32, i32* @VIP_CNTRL_4_BLANKIT_NDE, align 4
  %234 = load i32, i32* @VIP_CNTRL_4_BLC_NONE, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %231, i32 %232, i32 %235)
  %237 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %238 = load i32, i32* @TDA_PLL_SERIAL_3, align 4
  %239 = load i32, i32* @PLL_SERIAL_3_SRL_CCIR, align 4
  %240 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %237, i32 %238, i32 %239)
  %241 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %242 = load i32, i32* @TDA_PLL_SERIAL_1, align 4
  %243 = load i32, i32* @PLL_SERIAL_1_SRL_MAN_IP, align 4
  %244 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %241, i32 %242, i32 %243)
  %245 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %246 = load i32, i32* @TDA_PLL_SERIAL_3, align 4
  %247 = load i32, i32* @PLL_SERIAL_3_SRL_DE, align 4
  %248 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %245, i32 %246, i32 %247)
  %249 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %250 = load i32, i32* @TDA_SERIALIZER, align 4
  %251 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %249, i32 %250, i32 0)
  %252 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %253 = load i32, i32* @TDA_HVF_CNTRL_1, align 4
  %254 = load i32, i32* @HVF_CNTRL_1_VQR_FULL, align 4
  %255 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %252, i32 %253, i32 %254)
  %256 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %257 = load i32, i32* @TDA_RPT_CNTRL, align 4
  %258 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %256, i32 %257, i32 0)
  %259 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %260 = load i32, i32* @TDA_SEL_CLK, align 4
  %261 = call i32 @SEL_CLK_SEL_VRF_CLK(i32 0)
  %262 = load i32, i32* @SEL_CLK_SEL_CLK1, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @SEL_CLK_ENA_SC_CLK, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %259, i32 %260, i32 %265)
  %267 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %268 = load i32, i32* @TDA_PLL_SERIAL_2, align 4
  %269 = load i32, i32* %26, align 4
  %270 = call i32 @PLL_SERIAL_2_SRL_NOSC(i32 %269)
  %271 = call i32 @PLL_SERIAL_2_SRL_PR(i32 0)
  %272 = or i32 %270, %271
  %273 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %267, i32 %268, i32 %272)
  %274 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %275 = load i32, i32* @TDA_MAT_CONTRL, align 4
  %276 = load i32, i32* @MAT_CONTRL_MAT_BP, align 4
  %277 = call i32 @tda19988_reg_set(%struct.tda19988_softc* %274, i32 %275, i32 %276)
  %278 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %279 = load i32, i32* @TDA_ANA_GENERAL, align 4
  %280 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %278, i32 %279, i32 9)
  %281 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %282 = load i32, i32* @TDA_TBG_CNTRL_0, align 4
  %283 = load i32, i32* @TBG_CNTRL_0_SYNC_MTHD, align 4
  %284 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %281, i32 %282, i32 %283)
  %285 = load i32, i32* @VIP_CNTRL_3_SYNC_HS, align 4
  store i32 %285, i32* %25, align 4
  %286 = load %struct.videomode*, %struct.videomode** %4, align 8
  %287 = getelementptr inbounds %struct.videomode, %struct.videomode* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @VID_NHSYNC, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %208
  %293 = load i32, i32* @VIP_CNTRL_3_H_TGL, align 4
  %294 = load i32, i32* %25, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %25, align 4
  br label %296

296:                                              ; preds = %292, %208
  %297 = load %struct.videomode*, %struct.videomode** %4, align 8
  %298 = getelementptr inbounds %struct.videomode, %struct.videomode* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @VID_NVSYNC, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %296
  %304 = load i32, i32* @VIP_CNTRL_3_V_TGL, align 4
  %305 = load i32, i32* %25, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %25, align 4
  br label %307

307:                                              ; preds = %303, %296
  %308 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %309 = load i32, i32* @TDA_VIP_CNTRL_3, align 4
  %310 = load i32, i32* %25, align 4
  %311 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %308, i32 %309, i32 %310)
  %312 = load i32, i32* @TBG_CNTRL_1_TGL_EN, align 4
  store i32 %312, i32* %25, align 4
  %313 = load %struct.videomode*, %struct.videomode** %4, align 8
  %314 = getelementptr inbounds %struct.videomode, %struct.videomode* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @VID_NHSYNC, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %307
  %320 = load i32, i32* @TBG_CNTRL_1_H_TGL, align 4
  %321 = load i32, i32* %25, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %25, align 4
  br label %323

323:                                              ; preds = %319, %307
  %324 = load %struct.videomode*, %struct.videomode** %4, align 8
  %325 = getelementptr inbounds %struct.videomode, %struct.videomode* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @VID_NVSYNC, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %323
  %331 = load i32, i32* @TBG_CNTRL_1_V_TGL, align 4
  %332 = load i32, i32* %25, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %25, align 4
  br label %334

334:                                              ; preds = %330, %323
  %335 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %336 = load i32, i32* @TDA_TBG_CNTRL_1, align 4
  %337 = load i32, i32* %25, align 4
  %338 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %335, i32 %336, i32 %337)
  %339 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %340 = load i32, i32* @TDA_VIDFORMAT, align 4
  %341 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %339, i32 %340, i32 0)
  %342 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %343 = load i32, i32* @TDA_REFPIX_MSB, align 4
  %344 = load i32, i32* %5, align 4
  %345 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %342, i32 %343, i32 %344)
  %346 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %347 = load i32, i32* @TDA_REFLINE_MSB, align 4
  %348 = load i32, i32* %6, align 4
  %349 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %346, i32 %347, i32 %348)
  %350 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %351 = load i32, i32* @TDA_NPIX_MSB, align 4
  %352 = load i32, i32* %7, align 4
  %353 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %350, i32 %351, i32 %352)
  %354 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %355 = load i32, i32* @TDA_NLINE_MSB, align 4
  %356 = load i32, i32* %8, align 4
  %357 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %354, i32 %355, i32 %356)
  %358 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %359 = load i32, i32* @TDA_VS_LINE_STRT_1_MSB, align 4
  %360 = load i32, i32* %13, align 4
  %361 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %358, i32 %359, i32 %360)
  %362 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %363 = load i32, i32* @TDA_VS_PIX_STRT_1_MSB, align 4
  %364 = load i32, i32* %11, align 4
  %365 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %362, i32 %363, i32 %364)
  %366 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %367 = load i32, i32* @TDA_VS_LINE_END_1_MSB, align 4
  %368 = load i32, i32* %14, align 4
  %369 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %366, i32 %367, i32 %368)
  %370 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %371 = load i32, i32* @TDA_VS_PIX_END_1_MSB, align 4
  %372 = load i32, i32* %12, align 4
  %373 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %370, i32 %371, i32 %372)
  %374 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %375 = load i32, i32* @TDA_VS_LINE_STRT_2_MSB, align 4
  %376 = load i32, i32* %17, align 4
  %377 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %374, i32 %375, i32 %376)
  %378 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %379 = load i32, i32* @TDA_VS_PIX_STRT_2_MSB, align 4
  %380 = load i32, i32* %15, align 4
  %381 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %378, i32 %379, i32 %380)
  %382 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %383 = load i32, i32* @TDA_VS_LINE_END_2_MSB, align 4
  %384 = load i32, i32* %18, align 4
  %385 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %382, i32 %383, i32 %384)
  %386 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %387 = load i32, i32* @TDA_VS_PIX_END_2_MSB, align 4
  %388 = load i32, i32* %16, align 4
  %389 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %386, i32 %387, i32 %388)
  %390 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %391 = load i32, i32* @TDA_HS_PIX_START_MSB, align 4
  %392 = load i32, i32* %9, align 4
  %393 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %390, i32 %391, i32 %392)
  %394 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %395 = load i32, i32* @TDA_HS_PIX_STOP_MSB, align 4
  %396 = load i32, i32* %10, align 4
  %397 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %394, i32 %395, i32 %396)
  %398 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %399 = load i32, i32* @TDA_VWIN_START_1_MSB, align 4
  %400 = load i32, i32* %19, align 4
  %401 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %398, i32 %399, i32 %400)
  %402 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %403 = load i32, i32* @TDA_VWIN_END_1_MSB, align 4
  %404 = load i32, i32* %20, align 4
  %405 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %402, i32 %403, i32 %404)
  %406 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %407 = load i32, i32* @TDA_VWIN_START_2_MSB, align 4
  %408 = load i32, i32* %21, align 4
  %409 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %406, i32 %407, i32 %408)
  %410 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %411 = load i32, i32* @TDA_VWIN_END_2_MSB, align 4
  %412 = load i32, i32* %22, align 4
  %413 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %410, i32 %411, i32 %412)
  %414 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %415 = load i32, i32* @TDA_DE_START_MSB, align 4
  %416 = load i32, i32* %23, align 4
  %417 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %414, i32 %415, i32 %416)
  %418 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %419 = load i32, i32* @TDA_DE_STOP_MSB, align 4
  %420 = load i32, i32* %24, align 4
  %421 = call i32 @tda19988_reg_write2(%struct.tda19988_softc* %418, i32 %419, i32 %420)
  %422 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %423 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @TDA19988, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %431

427:                                              ; preds = %334
  %428 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %429 = load i32, i32* @TDA_ENABLE_SPACE, align 4
  %430 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %428, i32 %429, i32 0)
  br label %431

431:                                              ; preds = %427, %334
  %432 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %433 = load i32, i32* @TDA_TBG_CNTRL_0, align 4
  %434 = load i32, i32* @TBG_CNTRL_0_SYNC_ONCE, align 4
  %435 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %432, i32 %433, i32 %434)
  ret void
}

declare dso_local i32 @tda19988_reg_set(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_reg_clear(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_reg_write(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @VIP_CNTRL_5_SP_CNT(i32) #1

declare dso_local i32 @SEL_CLK_SEL_VRF_CLK(i32) #1

declare dso_local i32 @PLL_SERIAL_2_SRL_NOSC(i32) #1

declare dso_local i32 @PLL_SERIAL_2_SRL_PR(i32) #1

declare dso_local i32 @tda19988_reg_write2(%struct.tda19988_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
