; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_setup_tcon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_setup_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10fb_softc = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VID_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot find reset 'lcd'\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't de-assert reset 'lcd'\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ahb_lcd\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot find clk 'ahb_lcd'\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot enable clk 'ahb_lcd'\0A\00", align 1
@TCON_GCTL = common dso_local global i32 0, align 4
@TCON1_CTL = common dso_local global i32 0, align 4
@TCON0_DCLK = common dso_local global i32 0, align 4
@DCLK_EN = common dso_local global i32 0, align 4
@TCON1_IO_TRI = common dso_local global i32 0, align 4
@IO_TRI_MASK = common dso_local global i32 0, align 4
@GCTL_IO_MAP_SEL_TCON1 = common dso_local global i32 0, align 4
@TCON1_BASIC0 = common dso_local global i32 0, align 4
@TCON1_BASIC1 = common dso_local global i32 0, align 4
@TCON1_BASIC2 = common dso_local global i32 0, align 4
@TCON1_BASIC3 = common dso_local global i32 0, align 4
@TCON1_BASIC4 = common dso_local global i32 0, align 4
@TCON1_BASIC5 = common dso_local global i32 0, align 4
@IO_POL_IO2_INV = common dso_local global i32 0, align 4
@VID_PHSYNC = common dso_local global i32 0, align 4
@IO_POL_PHSYNC = common dso_local global i32 0, align 4
@VID_PVSYNC = common dso_local global i32 0, align 4
@IO_POL_PVSYNC = common dso_local global i32 0, align 4
@TCON1_IO_POL = common dso_local global i32 0, align 4
@TCON_GINT1 = common dso_local global i32 0, align 4
@TCON1_EN = common dso_local global i32 0, align 4
@INTERLACE_EN = common dso_local global i32 0, align 4
@TCON1_SRC_CH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10fb_softc*, %struct.videomode*)* @a10fb_setup_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10fb_setup_tcon(%struct.a10fb_softc* %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10fb_softc*, align 8
  %5 = alloca %struct.videomode*, align 8
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
  store %struct.a10fb_softc* %0, %struct.a10fb_softc** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %22 = load %struct.videomode*, %struct.videomode** %5, align 8
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VID_INTERLACE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.videomode*, %struct.videomode** %5, align 8
  %32 = getelementptr inbounds %struct.videomode, %struct.videomode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.videomode*, %struct.videomode** %5, align 8
  %35 = getelementptr inbounds %struct.videomode, %struct.videomode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.videomode*, %struct.videomode** %5, align 8
  %38 = getelementptr inbounds %struct.videomode, %struct.videomode* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.videomode*, %struct.videomode** %5, align 8
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.videomode*, %struct.videomode** %5, align 8
  %45 = getelementptr inbounds %struct.videomode, %struct.videomode* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.videomode*, %struct.videomode** %5, align 8
  %48 = getelementptr inbounds %struct.videomode, %struct.videomode* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.videomode*, %struct.videomode** %5, align 8
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.videomode*, %struct.videomode** %5, align 8
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.videomode*, %struct.videomode** %5, align 8
  %59 = getelementptr inbounds %struct.videomode, %struct.videomode* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.videomode*, %struct.videomode** %5, align 8
  %62 = getelementptr inbounds %struct.videomode, %struct.videomode* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.videomode*, %struct.videomode** %5, align 8
  %66 = getelementptr inbounds %struct.videomode, %struct.videomode* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.videomode*, %struct.videomode** %5, align 8
  %69 = getelementptr inbounds %struct.videomode, %struct.videomode* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @VBLANK_LEN(i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @START_DELAY(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %76 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hwreset_get_by_ofw_name(i32 %77, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %19)
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %2
  %82 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %21, align 4
  store i32 %86, i32* %3, align 4
  br label %291

87:                                               ; preds = %2
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @hwreset_deassert(i32 %88)
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %21, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %94 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %21, align 4
  store i32 %97, i32* %3, align 4
  br label %291

98:                                               ; preds = %87
  %99 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %100 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @clk_get_by_ofw_name(i32 %101, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %18)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %107 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* %21, align 4
  store i32 %110, i32* %3, align 4
  br label %291

111:                                              ; preds = %98
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @clk_enable(i32 %112)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %118 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %3, align 4
  br label %291

122:                                              ; preds = %111
  %123 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %124 = load i32, i32* @TCON_GCTL, align 4
  %125 = call i32 @TCON_WRITE(%struct.a10fb_softc* %123, i32 %124, i32 0)
  %126 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %127 = load i32, i32* @TCON1_CTL, align 4
  %128 = call i32 @TCON_WRITE(%struct.a10fb_softc* %126, i32 %127, i32 0)
  %129 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %130 = load i32, i32* @TCON0_DCLK, align 4
  %131 = load i32, i32* @DCLK_EN, align 4
  %132 = call i32 @TCON_WRITE(%struct.a10fb_softc* %129, i32 %130, i32 %131)
  %133 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %134 = load i32, i32* @TCON1_IO_TRI, align 4
  %135 = load i32, i32* @IO_TRI_MASK, align 4
  %136 = call i32 @TCON_WRITE(%struct.a10fb_softc* %133, i32 %134, i32 %135)
  %137 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %138 = load i32, i32* @TCON_GCTL, align 4
  %139 = load i32, i32* @GCTL_IO_MAP_SEL_TCON1, align 4
  %140 = call i32 @TCON_WRITE(%struct.a10fb_softc* %137, i32 %138, i32 %139)
  %141 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %142 = load i32, i32* @TCON1_BASIC0, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @BASIC_X(i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @BASIC_Y(i32 %145)
  %147 = or i32 %144, %146
  %148 = call i32 @TCON_WRITE(%struct.a10fb_softc* %141, i32 %142, i32 %147)
  %149 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %150 = load i32, i32* @TCON1_BASIC1, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @BASIC_X(i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @BASIC_Y(i32 %153)
  %155 = or i32 %152, %154
  %156 = call i32 @TCON_WRITE(%struct.a10fb_softc* %149, i32 %150, i32 %155)
  %157 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %158 = load i32, i32* @TCON1_BASIC2, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @BASIC_X(i32 %159)
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @BASIC_Y(i32 %161)
  %163 = or i32 %160, %162
  %164 = call i32 @TCON_WRITE(%struct.a10fb_softc* %157, i32 %158, i32 %163)
  %165 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %166 = load i32, i32* @TCON1_BASIC3, align 4
  %167 = load %struct.videomode*, %struct.videomode** %5, align 8
  %168 = getelementptr inbounds %struct.videomode, %struct.videomode* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @BASIC3_HT(i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @BASIC3_HBP(i32 %171)
  %173 = or i32 %170, %172
  %174 = call i32 @TCON_WRITE(%struct.a10fb_softc* %165, i32 %166, i32 %173)
  %175 = load %struct.videomode*, %struct.videomode** %5, align 8
  %176 = getelementptr inbounds %struct.videomode, %struct.videomode* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @VTOTAL(i32 %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %216

181:                                              ; preds = %122
  %182 = load %struct.videomode*, %struct.videomode** %5, align 8
  %183 = getelementptr inbounds %struct.videomode, %struct.videomode* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @DOT_CLOCK_TO_HZ(i32 %184)
  %186 = load %struct.videomode*, %struct.videomode** %5, align 8
  %187 = getelementptr inbounds %struct.videomode, %struct.videomode* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @DIVIDE(i32 %185, i32 %188)
  %190 = load %struct.videomode*, %struct.videomode** %5, align 8
  %191 = getelementptr inbounds %struct.videomode, %struct.videomode* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @DIVIDE(i32 %189, i32 %192)
  store i32 %193, i32* %16, align 4
  %194 = load %struct.videomode*, %struct.videomode** %5, align 8
  %195 = getelementptr inbounds %struct.videomode, %struct.videomode* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.videomode*, %struct.videomode** %5, align 8
  %198 = getelementptr inbounds %struct.videomode, %struct.videomode* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @VTOTAL(i32 %199)
  %201 = add nsw i32 %200, 1
  %202 = mul nsw i32 %196, %201
  %203 = load i32, i32* %16, align 4
  %204 = mul nsw i32 %202, %203
  store i32 %204, i32* %17, align 4
  %205 = load i32, i32* %17, align 4
  %206 = sdiv i32 %205, 2
  %207 = load %struct.videomode*, %struct.videomode** %5, align 8
  %208 = getelementptr inbounds %struct.videomode, %struct.videomode* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @DOT_CLOCK_TO_HZ(i32 %209)
  %211 = icmp eq i32 %206, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %181
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %212, %181
  br label %216

216:                                              ; preds = %215, %122
  %217 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %218 = load i32, i32* @TCON1_BASIC4, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @BASIC4_VT(i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @BASIC4_VBP(i32 %221)
  %223 = or i32 %220, %222
  %224 = call i32 @TCON_WRITE(%struct.a10fb_softc* %217, i32 %218, i32 %223)
  %225 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %226 = load i32, i32* @TCON1_BASIC5, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @BASIC5_HSPW(i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @BASIC5_VSPW(i32 %229)
  %231 = or i32 %228, %230
  %232 = call i32 @TCON_WRITE(%struct.a10fb_softc* %225, i32 %226, i32 %231)
  %233 = load i32, i32* @IO_POL_IO2_INV, align 4
  store i32 %233, i32* %20, align 4
  %234 = load %struct.videomode*, %struct.videomode** %5, align 8
  %235 = getelementptr inbounds %struct.videomode, %struct.videomode* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @VID_PHSYNC, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %216
  %241 = load i32, i32* @IO_POL_PHSYNC, align 4
  %242 = load i32, i32* %20, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %20, align 4
  br label %244

244:                                              ; preds = %240, %216
  %245 = load %struct.videomode*, %struct.videomode** %5, align 8
  %246 = getelementptr inbounds %struct.videomode, %struct.videomode* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @VID_PVSYNC, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @IO_POL_PVSYNC, align 4
  %253 = load i32, i32* %20, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %20, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %257 = load i32, i32* @TCON1_IO_POL, align 4
  %258 = load i32, i32* %20, align 4
  %259 = call i32 @TCON_WRITE(%struct.a10fb_softc* %256, i32 %257, i32 %258)
  %260 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %261 = load i32, i32* @TCON_GINT1, align 4
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @GINT1_TCON1_LINENO(i32 %262)
  %264 = call i32 @TCON_WRITE(%struct.a10fb_softc* %260, i32 %261, i32 %263)
  %265 = load i32, i32* @TCON1_EN, align 4
  store i32 %265, i32* %20, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %255
  %269 = load i32, i32* @INTERLACE_EN, align 4
  %270 = load i32, i32* %20, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %20, align 4
  br label %272

272:                                              ; preds = %268, %255
  %273 = load i32, i32* %14, align 4
  %274 = call i32 @TCON1_START_DELAY(i32 %273)
  %275 = load i32, i32* %20, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %20, align 4
  %277 = load i32, i32* @TCON1_SRC_CH1, align 4
  %278 = call i32 @TCON1_SRC_SEL(i32 %277)
  %279 = load i32, i32* %20, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %20, align 4
  %281 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %282 = load i32, i32* @TCON1_CTL, align 4
  %283 = load i32, i32* %20, align 4
  %284 = call i32 @TCON_WRITE(%struct.a10fb_softc* %281, i32 %282, i32 %283)
  %285 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %286 = load %struct.videomode*, %struct.videomode** %5, align 8
  %287 = getelementptr inbounds %struct.videomode, %struct.videomode* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @DOT_CLOCK_TO_HZ(i32 %288)
  %290 = call i32 @a10fb_setup_pll(%struct.a10fb_softc* %285, i32 %289)
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %272, %116, %105, %92, %81
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @VBLANK_LEN(i32, i32, i32) #1

declare dso_local i32 @START_DELAY(i32) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @TCON_WRITE(%struct.a10fb_softc*, i32, i32) #1

declare dso_local i32 @BASIC_X(i32) #1

declare dso_local i32 @BASIC_Y(i32) #1

declare dso_local i32 @BASIC3_HT(i32) #1

declare dso_local i32 @BASIC3_HBP(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @DIVIDE(i32, i32) #1

declare dso_local i32 @DOT_CLOCK_TO_HZ(i32) #1

declare dso_local i32 @BASIC4_VT(i32) #1

declare dso_local i32 @BASIC4_VBP(i32) #1

declare dso_local i32 @BASIC5_HSPW(i32) #1

declare dso_local i32 @BASIC5_VSPW(i32) #1

declare dso_local i32 @GINT1_TCON1_LINENO(i32) #1

declare dso_local i32 @TCON1_START_DELAY(i32) #1

declare dso_local i32 @TCON1_SRC_SEL(i32) #1

declare dso_local i32 @a10fb_setup_pll(%struct.a10fb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
