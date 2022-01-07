; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_set_videomode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_set_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.a10hdmi_softc = type { i64, i64 }

@VID_DBLSCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"couldn't get tcon config: %d\0A\00", align 1
@HDMI_INT_STATUS = common dso_local global i32 0, align 4
@HDMI_PADCTRL1 = common dso_local global i32 0, align 4
@PADCTRL1_REG_CKSS = common dso_local global i32 0, align 4
@PADCTRL1_REG_CKSS_2X = common dso_local global i32 0, align 4
@PADCTRL1_REG_CKSS_1X = common dso_local global i32 0, align 4
@HDMI_PLLCTRL0 = common dso_local global i32 0, align 4
@PLLCTRL0_PLL_EN = common dso_local global i32 0, align 4
@PLLCTRL0_BWS = common dso_local global i32 0, align 4
@PLLCTRL0_HV_IS_33 = common dso_local global i32 0, align 4
@PLLCTRL0_LDO1_EN = common dso_local global i32 0, align 4
@PLLCTRL0_LDO2_EN = common dso_local global i32 0, align 4
@PLLCTRL0_SDIV2 = common dso_local global i32 0, align 4
@PLLCTRL0_VCO_GAIN = common dso_local global i32 0, align 4
@PLLCTRL0_S = common dso_local global i32 0, align 4
@PLLCTRL0_CP_S = common dso_local global i32 0, align 4
@PLLCTRL0_CS = common dso_local global i32 0, align 4
@PLLCTRL0_VCO_S = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"HDMI: %s, Audio: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@VID_CTRL_HDMI_MODE = common dso_local global i32 0, align 4
@VID_INTERLACE = common dso_local global i32 0, align 4
@VID_CTRL_INTERLACE = common dso_local global i32 0, align 4
@VID_CTRL_REPEATER_2X = common dso_local global i32 0, align 4
@HDMI_VID_CTRL = common dso_local global i32 0, align 4
@HDMI_VID_TIMING0 = common dso_local global i32 0, align 4
@HDMI_VID_TIMING1 = common dso_local global i32 0, align 4
@HDMI_VID_TIMING2 = common dso_local global i32 0, align 4
@HDMI_VID_TIMING3 = common dso_local global i32 0, align 4
@TX_CLOCK_NORMAL = common dso_local global i32 0, align 4
@VID_PVSYNC = common dso_local global i32 0, align 4
@VID_VSYNC_ACTSEL = common dso_local global i32 0, align 4
@VID_PHSYNC = common dso_local global i32 0, align 4
@VID_HSYNC_ACTSEL = common dso_local global i32 0, align 4
@HDMI_VID_TIMING4 = common dso_local global i32 0, align 4
@HDMI_PKTCTRL0 = common dso_local global i32 0, align 4
@PKT_GC = common dso_local global i32 0, align 4
@PKT_AVI = common dso_local global i32 0, align 4
@PKT_AI = common dso_local global i32 0, align 4
@PKT_END = common dso_local global i32 0, align 4
@HDMI_PKTCTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.videomode*)* @a10hdmi_set_videomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmi_set_videomode(i32 %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca %struct.a10hdmi_softc*, align 8
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
  store i32 %0, i32* %4, align 4
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.a10hdmi_softc* @device_get_softc(i32 %18)
  store %struct.a10hdmi_softc* %19, %struct.a10hdmi_softc** %6, align 8
  %20 = load %struct.videomode*, %struct.videomode** %5, align 8
  %21 = getelementptr inbounds %struct.videomode, %struct.videomode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VID_DBLSCAN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.videomode*, %struct.videomode** %5, align 8
  %30 = getelementptr inbounds %struct.videomode, %struct.videomode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.videomode*, %struct.videomode** %5, align 8
  %33 = getelementptr inbounds %struct.videomode, %struct.videomode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.videomode*, %struct.videomode** %5, align 8
  %37 = getelementptr inbounds %struct.videomode, %struct.videomode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.videomode*, %struct.videomode** %5, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.videomode*, %struct.videomode** %5, align 8
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.videomode*, %struct.videomode** %5, align 8
  %47 = getelementptr inbounds %struct.videomode, %struct.videomode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load %struct.videomode*, %struct.videomode** %5, align 8
  %51 = getelementptr inbounds %struct.videomode, %struct.videomode* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.videomode*, %struct.videomode** %5, align 8
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.videomode*, %struct.videomode** %5, align 8
  %58 = getelementptr inbounds %struct.videomode, %struct.videomode* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.videomode*, %struct.videomode** %5, align 8
  %61 = getelementptr inbounds %struct.videomode, %struct.videomode* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %15, align 4
  %64 = load %struct.videomode*, %struct.videomode** %5, align 8
  %65 = getelementptr inbounds %struct.videomode, %struct.videomode* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.videomode*, %struct.videomode** %5, align 8
  %68 = getelementptr inbounds %struct.videomode, %struct.videomode* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %16, align 4
  %71 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %72 = call i32 @a10hdmi_get_tcon_config(%struct.a10hdmi_softc* %71, i32* %8, i32* %9)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %2
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %279

80:                                               ; preds = %2
  %81 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %82 = load i32, i32* @HDMI_INT_STATUS, align 4
  %83 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %84 = load i32, i32* @HDMI_INT_STATUS, align 4
  %85 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %83, i32 %84)
  %86 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %88 = load i32, i32* @HDMI_PADCTRL1, align 4
  %89 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %87, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* @PADCTRL1_REG_CKSS, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %17, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  %97 = load i32, i32* @PADCTRL1_REG_CKSS_2X, align 4
  br label %100

98:                                               ; preds = %80
  %99 = load i32, i32* @PADCTRL1_REG_CKSS_1X, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load i32, i32* %17, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %105 = load i32, i32* @HDMI_PADCTRL1, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %104, i32 %105, i32 %106)
  %108 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %109 = load i32, i32* @HDMI_PLLCTRL0, align 4
  %110 = load i32, i32* @PLLCTRL0_PLL_EN, align 4
  %111 = load i32, i32* @PLLCTRL0_BWS, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PLLCTRL0_HV_IS_33, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @PLLCTRL0_LDO1_EN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @PLLCTRL0_LDO2_EN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PLLCTRL0_SDIV2, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PLLCTRL0_VCO_GAIN, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PLLCTRL0_S, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @PLLCTRL0_CP_S, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PLLCTRL0_CS, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @PLLCTRL0_PREDIV(i32 %129)
  %131 = or i32 %128, %130
  %132 = load i32, i32* @PLLCTRL0_VCO_S, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %108, i32 %109, i32 %133)
  %135 = load i64, i64* @bootverbose, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %100
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %140 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %145 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %146 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %144, i8* %150)
  br label %152

152:                                              ; preds = %137, %100
  store i32 0, i32* %17, align 4
  %153 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %154 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @VID_CTRL_HDMI_MODE, align 4
  %159 = load i32, i32* %17, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %157, %152
  %162 = load %struct.videomode*, %struct.videomode** %5, align 8
  %163 = getelementptr inbounds %struct.videomode, %struct.videomode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @VID_INTERLACE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* @VID_CTRL_INTERLACE, align 4
  %170 = load i32, i32* %17, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %168, %161
  %173 = load %struct.videomode*, %struct.videomode** %5, align 8
  %174 = getelementptr inbounds %struct.videomode, %struct.videomode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @VID_DBLSCAN, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* @VID_CTRL_REPEATER_2X, align 4
  %181 = load i32, i32* %17, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %17, align 4
  br label %183

183:                                              ; preds = %179, %172
  %184 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %185 = load i32, i32* @HDMI_VID_CTRL, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %184, i32 %185, i32 %186)
  %188 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %189 = load i32, i32* @HDMI_VID_TIMING0, align 4
  %190 = load %struct.videomode*, %struct.videomode** %5, align 8
  %191 = getelementptr inbounds %struct.videomode, %struct.videomode* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @VID_ACT_V(i32 %192)
  %194 = load %struct.videomode*, %struct.videomode** %5, align 8
  %195 = getelementptr inbounds %struct.videomode, %struct.videomode* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %10, align 4
  %198 = shl i32 %196, %197
  %199 = call i32 @VID_ACT_H(i32 %198)
  %200 = or i32 %193, %199
  %201 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %188, i32 %189, i32 %200)
  %202 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %203 = load i32, i32* @HDMI_VID_TIMING1, align 4
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @VID_VBP(i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %10, align 4
  %208 = shl i32 %206, %207
  %209 = call i32 @VID_HBP(i32 %208)
  %210 = or i32 %205, %209
  %211 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %202, i32 %203, i32 %210)
  %212 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %213 = load i32, i32* @HDMI_VID_TIMING2, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @VID_VFP(i32 %214)
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %10, align 4
  %218 = shl i32 %216, %217
  %219 = call i32 @VID_HFP(i32 %218)
  %220 = or i32 %215, %219
  %221 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %212, i32 %213, i32 %220)
  %222 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %223 = load i32, i32* @HDMI_VID_TIMING3, align 4
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @VID_VSPW(i32 %224)
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %10, align 4
  %228 = shl i32 %226, %227
  %229 = call i32 @VID_HSPW(i32 %228)
  %230 = or i32 %225, %229
  %231 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %222, i32 %223, i32 %230)
  %232 = load i32, i32* @TX_CLOCK_NORMAL, align 4
  store i32 %232, i32* %17, align 4
  %233 = load %struct.videomode*, %struct.videomode** %5, align 8
  %234 = getelementptr inbounds %struct.videomode, %struct.videomode* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @VID_PVSYNC, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %183
  %240 = load i32, i32* @VID_VSYNC_ACTSEL, align 4
  %241 = load i32, i32* %17, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %17, align 4
  br label %243

243:                                              ; preds = %239, %183
  %244 = load %struct.videomode*, %struct.videomode** %5, align 8
  %245 = getelementptr inbounds %struct.videomode, %struct.videomode* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @VID_PHSYNC, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load i32, i32* @VID_HSYNC_ACTSEL, align 4
  %252 = load i32, i32* %17, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %250, %243
  %255 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %256 = load i32, i32* @HDMI_VID_TIMING4, align 4
  %257 = load i32, i32* %17, align 4
  %258 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %255, i32 %256, i32 %257)
  %259 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %260 = load i32, i32* @HDMI_PKTCTRL0, align 4
  %261 = load i32, i32* @PKT_GC, align 4
  %262 = call i32 @PKTCTRL_PACKET(i32 0, i32 %261)
  %263 = load i32, i32* @PKT_AVI, align 4
  %264 = call i32 @PKTCTRL_PACKET(i32 1, i32 %263)
  %265 = or i32 %262, %264
  %266 = load i32, i32* @PKT_AI, align 4
  %267 = call i32 @PKTCTRL_PACKET(i32 2, i32 %266)
  %268 = or i32 %265, %267
  %269 = load i32, i32* @PKT_END, align 4
  %270 = call i32 @PKTCTRL_PACKET(i32 3, i32 %269)
  %271 = or i32 %268, %270
  %272 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %259, i32 %260, i32 %271)
  %273 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %6, align 8
  %274 = load i32, i32* @HDMI_PKTCTRL1, align 4
  %275 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %273, i32 %274, i32 0)
  %276 = load i32, i32* %4, align 4
  %277 = load %struct.videomode*, %struct.videomode** %5, align 8
  %278 = call i32 @a10hdmi_set_audiomode(i32 %276, %struct.videomode* %277)
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %254, %75
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local %struct.a10hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @a10hdmi_get_tcon_config(%struct.a10hdmi_softc*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @HDMI_WRITE(%struct.a10hdmi_softc*, i32, i32) #1

declare dso_local i32 @HDMI_READ(%struct.a10hdmi_softc*, i32) #1

declare dso_local i32 @PLLCTRL0_PREDIV(i32) #1

declare dso_local i32 @VID_ACT_V(i32) #1

declare dso_local i32 @VID_ACT_H(i32) #1

declare dso_local i32 @VID_VBP(i32) #1

declare dso_local i32 @VID_HBP(i32) #1

declare dso_local i32 @VID_VFP(i32) #1

declare dso_local i32 @VID_HFP(i32) #1

declare dso_local i32 @VID_VSPW(i32) #1

declare dso_local i32 @VID_HSPW(i32) #1

declare dso_local i32 @PKTCTRL_PACKET(i32, i32) #1

declare dso_local i32 @a10hdmi_set_audiomode(i32, %struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
