; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_setup_debe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_setup_debe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10fb_softc = type { i32, i32 }
%struct.videomode = type { i32, i32, i32 }

@VID_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"de_be\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot find reset 'de_be'\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"couldn't de-assert reset 'de_be'\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ahb_de_be\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot find clk 'ahb_de_be'\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"cannot enable clk 'ahb_de_be'\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dram_de_be\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"cannot find clk 'dram_de_be'\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot enable clk 'dram_de_be'\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"cannot find clk 'de_be'\0A\00", align 1
@DEBE_FREQ = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"cannot set 'de_be' frequency\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"cannot enable clk 'de_be'\0A\00", align 1
@DEBE_REG_START = common dso_local global i32 0, align 4
@DEBE_REG_END = common dso_local global i32 0, align 4
@DEBE_REG_WIDTH = common dso_local global i64 0, align 8
@DEBE_MODCTL = common dso_local global i32 0, align 4
@MODCTL_EN = common dso_local global i32 0, align 4
@DEBE_DISSIZE = common dso_local global i32 0, align 4
@DEBE_LAYSIZE0 = common dso_local global i32 0, align 4
@DEBE_LAYCOOR0 = common dso_local global i32 0, align 4
@DEBE_LAYLINEWIDTH0 = common dso_local global i32 0, align 4
@FB_BPP = common dso_local global i32 0, align 4
@DEBE_LAYFB_L32ADD0 = common dso_local global i32 0, align 4
@DEBE_LAYFB_H4ADD = common dso_local global i32 0, align 4
@DEBE_ATTCTL1 = common dso_local global i32 0, align 4
@FBFMT_XRGB8888 = common dso_local global i32 0, align 4
@FBPS_32BPP_ARGB = common dso_local global i32 0, align 4
@MODCTL_LAY0_EN = common dso_local global i32 0, align 4
@MODCTL_OUT_SEL_MASK = common dso_local global i32 0, align 4
@OUT_SEL_LCD = common dso_local global i32 0, align 4
@MODCTL_ITLMOD_EN = common dso_local global i32 0, align 4
@DEBE_REGBUFFCTL = common dso_local global i32 0, align 4
@REGBUFFCTL_LOAD = common dso_local global i32 0, align 4
@MODCTL_START_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10fb_softc*, %struct.videomode*)* @a10fb_setup_debe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10fb_setup_debe(%struct.a10fb_softc* %0, %struct.videomode* %1) #0 {
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
  store %struct.a10fb_softc* %0, %struct.a10fb_softc** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %16 = load %struct.videomode*, %struct.videomode** %5, align 8
  %17 = getelementptr inbounds %struct.videomode, %struct.videomode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VID_INTERLACE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.videomode*, %struct.videomode** %5, align 8
  %26 = getelementptr inbounds %struct.videomode, %struct.videomode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.videomode*, %struct.videomode** %5, align 8
  %29 = getelementptr inbounds %struct.videomode, %struct.videomode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %34 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hwreset_get_by_ofw_name(i32 %35, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %3, align 4
  br label %256

45:                                               ; preds = %2
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @hwreset_deassert(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %52 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %3, align 4
  br label %256

56:                                               ; preds = %45
  %57 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %58 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_get_by_ofw_name(i32 %59, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %10)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %65 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %3, align 4
  br label %256

69:                                               ; preds = %56
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @clk_enable(i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %76 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %3, align 4
  br label %256

80:                                               ; preds = %69
  %81 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %82 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clk_get_by_ofw_name(i32 %83, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %89 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %3, align 4
  br label %256

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @clk_enable(i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %100 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %3, align 4
  br label %256

104:                                              ; preds = %93
  %105 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %106 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_get_by_ofw_name(i32 %107, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %113 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %3, align 4
  br label %256

117:                                              ; preds = %104
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @DEBE_FREQ, align 4
  %120 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %121 = call i32 @clk_set_freq(i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %126 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %3, align 4
  br label %256

130:                                              ; preds = %117
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @clk_enable(i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %137 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %3, align 4
  br label %256

141:                                              ; preds = %130
  %142 = load i32, i32* @DEBE_REG_START, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %151, %141
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @DEBE_REG_END, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %148, i32 %149, i32 0)
  br label %151

151:                                              ; preds = %147
  %152 = load i64, i64* @DEBE_REG_WIDTH, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %9, align 4
  br label %143

157:                                              ; preds = %143
  %158 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %159 = load i32, i32* @DEBE_MODCTL, align 4
  %160 = load i32, i32* @MODCTL_EN, align 4
  %161 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %158, i32 %159, i32 %160)
  %162 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %163 = load i32, i32* @DEBE_DISSIZE, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @DIS_HEIGHT(i32 %164)
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @DIS_WIDTH(i32 %166)
  %168 = or i32 %165, %167
  %169 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %162, i32 %163, i32 %168)
  %170 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %171 = load i32, i32* @DEBE_LAYSIZE0, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @LAY_HEIGHT(i32 %172)
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @LAY_WIDTH(i32 %174)
  %176 = or i32 %173, %175
  %177 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %170, i32 %171, i32 %176)
  %178 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %179 = load i32, i32* @DEBE_LAYCOOR0, align 4
  %180 = call i32 @LAY_XCOOR(i32 0)
  %181 = call i32 @LAY_YCOOR(i32 0)
  %182 = or i32 %180, %181
  %183 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %178, i32 %179, i32 %182)
  %184 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %185 = load i32, i32* @DEBE_LAYLINEWIDTH0, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @FB_BPP, align 4
  %188 = mul nsw i32 %186, %187
  %189 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %184, i32 %185, i32 %188)
  %190 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %191 = load i32, i32* @DEBE_LAYFB_L32ADD0, align 4
  %192 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %193 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @LAYFB_L32ADD(i32 %194)
  %196 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %190, i32 %191, i32 %195)
  %197 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %198 = load i32, i32* @DEBE_LAYFB_H4ADD, align 4
  %199 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %200 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @LAY0FB_H4ADD(i32 %201)
  %203 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %197, i32 %198, i32 %202)
  %204 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %205 = load i32, i32* @DEBE_ATTCTL1, align 4
  %206 = load i32, i32* @FBFMT_XRGB8888, align 4
  %207 = call i32 @ATTCTL1_FBFMT(i32 %206)
  %208 = load i32, i32* @FBPS_32BPP_ARGB, align 4
  %209 = call i32 @ATTCTL1_FBPS(i32 %208)
  %210 = or i32 %207, %209
  %211 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %204, i32 %205, i32 %210)
  %212 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %213 = load i32, i32* @DEBE_MODCTL, align 4
  %214 = call i32 @DEBE_READ(%struct.a10fb_softc* %212, i32 %213)
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* @MODCTL_LAY0_EN, align 4
  %216 = load i32, i32* %14, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* @MODCTL_OUT_SEL_MASK, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %14, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* @OUT_SEL_LCD, align 4
  %223 = call i32 @MODCTL_OUT_SEL(i32 %222)
  %224 = load i32, i32* %14, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %157
  %229 = load i32, i32* @MODCTL_ITLMOD_EN, align 4
  %230 = load i32, i32* %14, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %14, align 4
  br label %237

232:                                              ; preds = %157
  %233 = load i32, i32* @MODCTL_ITLMOD_EN, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %14, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %232, %228
  %238 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %239 = load i32, i32* @DEBE_MODCTL, align 4
  %240 = load i32, i32* %14, align 4
  %241 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %238, i32 %239, i32 %240)
  %242 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %243 = load i32, i32* @DEBE_REGBUFFCTL, align 4
  %244 = load i32, i32* @REGBUFFCTL_LOAD, align 4
  %245 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %242, i32 %243, i32 %244)
  %246 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %247 = load i32, i32* @DEBE_MODCTL, align 4
  %248 = call i32 @DEBE_READ(%struct.a10fb_softc* %246, i32 %247)
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* @MODCTL_START_CTL, align 4
  %250 = load i32, i32* %14, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %14, align 4
  %252 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %253 = load i32, i32* @DEBE_MODCTL, align 4
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @DEBE_WRITE(%struct.a10fb_softc* %252, i32 %253, i32 %254)
  store i32 0, i32* %3, align 4
  br label %256

256:                                              ; preds = %237, %135, %124, %111, %98, %87, %74, %63, %50, %39
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @DEBE_WRITE(%struct.a10fb_softc*, i32, i32) #1

declare dso_local i32 @DIS_HEIGHT(i32) #1

declare dso_local i32 @DIS_WIDTH(i32) #1

declare dso_local i32 @LAY_HEIGHT(i32) #1

declare dso_local i32 @LAY_WIDTH(i32) #1

declare dso_local i32 @LAY_XCOOR(i32) #1

declare dso_local i32 @LAY_YCOOR(i32) #1

declare dso_local i32 @LAYFB_L32ADD(i32) #1

declare dso_local i32 @LAY0FB_H4ADD(i32) #1

declare dso_local i32 @ATTCTL1_FBFMT(i32) #1

declare dso_local i32 @ATTCTL1_FBPS(i32) #1

declare dso_local i32 @DEBE_READ(%struct.a10fb_softc*, i32) #1

declare dso_local i32 @MODCTL_OUT_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
