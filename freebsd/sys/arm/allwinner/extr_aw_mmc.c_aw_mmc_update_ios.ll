; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i32, i64, i32 }

@AW_MMC_BWDR = common dso_local global i32 0, align 4
@AW_MMC_BWDR1 = common dso_local global i32 0, align 4
@AW_MMC_BWDR4 = common dso_local global i32 0, align 4
@AW_MMC_BWDR8 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Powering down sd/mmc\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Powering up sd/mmc\0A\00", align 1
@AW_MMC_GCTL = common dso_local global i32 0, align 4
@bus_timing_uhs_ddr50 = common dso_local global i64 0, align 8
@bus_timing_mmc_ddr52 = common dso_local global i64 0, align 8
@AW_MMC_GCTL_DDR_MOD_SEL = common dso_local global i32 0, align 4
@AW_MMC_CKCR = common dso_local global i32 0, align 4
@AW_MMC_CKCR_DIV = common dso_local global i32 0, align 4
@AW_MMC_NTSR = common dso_local global i32 0, align 4
@AW_MMC_NTSR_MODE_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to disable mmc clock: %d\0A\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to set frequency to %u Hz: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to re-enable mmc clock: %d\0A\00", align 1
@AW_MMC_SAMP_DL = common dso_local global i32 0, align 4
@AW_MMC_SAMP_DL_SW_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @aw_mmc_update_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aw_mmc_softc*, align 8
  %8 = alloca %struct.mmc_ios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.aw_mmc_softc* @device_get_softc(i32 %12)
  store %struct.aw_mmc_softc* %13, %struct.aw_mmc_softc** %7, align 8
  %14 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %15 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.mmc_ios* %16, %struct.mmc_ios** %8, align 8
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %35 [
    i32 133, label %20
    i32 132, label %25
    i32 131, label %30
  ]

20:                                               ; preds = %2
  %21 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %22 = load i32, i32* @AW_MMC_BWDR, align 4
  %23 = load i32, i32* @AW_MMC_BWDR1, align 4
  %24 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %21, i32 %22, i32 %23)
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %27 = load i32, i32* @AW_MMC_BWDR, align 4
  %28 = load i32, i32* @AW_MMC_BWDR4, align 4
  %29 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %26, i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %32 = load i32, i32* @AW_MMC_BWDR, align 4
  %33 = load i32, i32* @AW_MMC_BWDR8, align 4
  %34 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %2, %30, %25, %20
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %102 [
    i32 129, label %39
    i32 130, label %40
    i32 128, label %71
  ]

39:                                               ; preds = %35
  br label %102

40:                                               ; preds = %35
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %45 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %50 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %55 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regulator_disable(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %60 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %65 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @regulator_disable(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %70 = call i32 @aw_mmc_reset(%struct.aw_mmc_softc* %69)
  br label %102

71:                                               ; preds = %35
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %76 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %81 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %86 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @regulator_enable(i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %91 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %96 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @regulator_enable(i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %101 = call i32 @aw_mmc_init(%struct.aw_mmc_softc* %100)
  br label %102

102:                                              ; preds = %35, %99, %68, %39
  %103 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %104 = load i32, i32* @AW_MMC_GCTL, align 4
  %105 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %107 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @bus_timing_uhs_ddr50, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %102
  %112 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %113 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @bus_timing_mmc_ddr52, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %102
  %118 = load i32, i32* @AW_MMC_GCTL_DDR_MOD_SEL, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %126

121:                                              ; preds = %111
  %122 = load i32, i32* @AW_MMC_GCTL_DDR_MOD_SEL, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %121, %117
  %127 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %128 = load i32, i32* @AW_MMC_GCTL, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %127, i32 %128, i32 %129)
  %131 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %132 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %278

135:                                              ; preds = %126
  %136 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %137 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %140 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %278

143:                                              ; preds = %135
  %144 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %145 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %9, align 4
  %147 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %148 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %150 = call i32 @aw_mmc_update_clock(%struct.aw_mmc_softc* %149, i32 0)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %279

155:                                              ; preds = %143
  %156 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %157 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @bus_timing_mmc_ddr52, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %163 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %170 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 131
  br i1 %172, label %173, label %176

173:                                              ; preds = %168, %161
  store i32 2, i32* %11, align 4
  %174 = load i32, i32* %9, align 4
  %175 = shl i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %173, %168, %155
  %177 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %178 = load i32, i32* @AW_MMC_CKCR, align 4
  %179 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %177, i32 %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* @AW_MMC_CKCR_DIV, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, i32* %10, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %10, align 4
  %188 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %189 = load i32, i32* @AW_MMC_CKCR, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %188, i32 %189, i32 %190)
  %192 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %193 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %176
  %199 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %200 = load i32, i32* @AW_MMC_NTSR, align 4
  %201 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* @AW_MMC_NTSR_MODE_SELECT, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  %205 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %206 = load i32, i32* @AW_MMC_NTSR, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %198, %176
  %210 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %211 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @clk_disable(i32 %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %209
  %217 = load i64, i64* @bootverbose, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %221 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (i32, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %219, %216, %209
  %226 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %227 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %231 = call i32 @clk_set_freq(i32 %228, i32 %229, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %225
  %235 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %236 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 (i32, i8*, ...) @device_printf(i32 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %238, i32 %239)
  %241 = load i32, i32* %6, align 4
  store i32 %241, i32* %3, align 4
  br label %279

242:                                              ; preds = %225
  %243 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %244 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @clk_enable(i32 %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %242
  %250 = load i64, i64* @bootverbose, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %254 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i32 (i32, i8*, ...) @device_printf(i32 %255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %252, %249, %242
  %259 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %260 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %259, i32 0, i32 1
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %258
  %266 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %267 = load i32, i32* @AW_MMC_SAMP_DL, align 4
  %268 = load i32, i32* @AW_MMC_SAMP_DL_SW_EN, align 4
  %269 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %258
  %271 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %7, align 8
  %272 = call i32 @aw_mmc_update_clock(%struct.aw_mmc_softc* %271, i32 1)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %3, align 4
  br label %279

277:                                              ; preds = %270
  br label %278

278:                                              ; preds = %277, %135, %126
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %278, %275, %234, %153
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local %struct.aw_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @aw_mmc_reset(%struct.aw_mmc_softc*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @aw_mmc_init(%struct.aw_mmc_softc*) #1

declare dso_local i32 @AW_MMC_READ_4(%struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @aw_mmc_update_clock(%struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
