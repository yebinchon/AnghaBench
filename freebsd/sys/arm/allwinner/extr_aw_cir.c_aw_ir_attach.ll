; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ir_softc = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@aw_ir_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot de-assert reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot get gate clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Cannot get IR clock\0A\00", align 1
@AW_IR_BASE_CLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"cannot set IR clock rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Cannot enable clk gate\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Cannot enable IR clock\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aw_ir_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@AW_IR_CTL = common dso_local global i32 0, align 4
@AW_IR_CTL_MD = common dso_local global i32 0, align 4
@AW_IR_SAMPLE_128 = common dso_local global i32 0, align 4
@AW_IR_RXFILT_VAL = common dso_local global i32 0, align 4
@AW_IR_RXIDLE_VAL = common dso_local global i32 0, align 4
@AW_IR_ACTIVE_T = common dso_local global i32 0, align 4
@AW_IR_ACTIVE_T_C = common dso_local global i32 0, align 4
@AW_IR_CIR = common dso_local global i32 0, align 4
@AW_IR_RXCTL = common dso_local global i32 0, align 4
@AW_IR_RXCTL_RPPI = common dso_local global i32 0, align 4
@AW_IR_RXSTA = common dso_local global i32 0, align 4
@AW_IR_RXSTA_CLEARALL = common dso_local global i32 0, align 4
@AW_IR_RXINT = common dso_local global i32 0, align 4
@AW_IR_RXINT_ROI_EN = common dso_local global i32 0, align 4
@AW_IR_RXINT_RPEI_EN = common dso_local global i32 0, align 4
@AW_IR_RXINT_RAI_EN = common dso_local global i32 0, align 4
@AW_IR_CTL_GEN = common dso_local global i32 0, align 4
@AW_IR_CTL_RXEN = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to register evdev: error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_ir_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ir_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_ir_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.aw_ir_softc* @device_get_softc(i32 %10)
  store %struct.aw_ir_softc* %11, %struct.aw_ir_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @aw_ir_spec, align 4
  %17 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @bus_alloc_resources(i32 %15, i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %256

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @compat_data, align 4
  %29 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %38 [
    i32 129, label %32
    i32 128, label %35
  ]

32:                                               ; preds = %26
  %33 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %34 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %33, i32 0, i32 0
  store i32 16, i32* %34, align 8
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %37 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %36, i32 0, i32 0
  store i32 64, i32* %37, align 8
  br label %38

38:                                               ; preds = %26, %35, %32
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @hwreset_get_by_ofw_idx(i32 %39, i32 0, i32 0, i32** %5)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @hwreset_deassert(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %224

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %53 = call i32 @aw_ir_buf_reset(%struct.aw_ir_softc* %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @clk_get_by_ofw_name(i32 %54, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32** %7)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %224

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @clk_get_by_ofw_name(i32 %62, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32** %6)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %224

69:                                               ; preds = %61
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @AW_IR_BASE_CLK, align 4
  %72 = call i32 @clk_set_freq(i32* %70, i32 %71, i32 0)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %224

78:                                               ; preds = %69
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @clk_enable(i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %224

86:                                               ; preds = %78
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @clk_enable(i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %3, align 4
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %224

94:                                               ; preds = %86
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %97 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @INTR_TYPE_MISC, align 4
  %102 = load i32, i32* @INTR_MPSAFE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @aw_ir_intr, align 4
  %105 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %106 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %107 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %106, i32 0, i32 4
  %108 = call i64 @bus_setup_intr(i32 %95, i32 %100, i32 %103, i32* null, i32 %104, %struct.aw_ir_softc* %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %94
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @aw_ir_spec, align 4
  %113 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %114 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_release_resources(i32 %111, i32 %112, i32* %115)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %119 = load i32, i32* @ENXIO, align 4
  store i32 %119, i32* %2, align 4
  br label %256

120:                                              ; preds = %94
  %121 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %122 = load i32, i32* @AW_IR_CTL, align 4
  %123 = load i32, i32* @AW_IR_CTL_MD, align 4
  %124 = call i32 @WRITE(%struct.aw_ir_softc* %121, i32 %122, i32 %123)
  %125 = load i32, i32* @AW_IR_SAMPLE_128, align 4
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* @AW_IR_RXFILT_VAL, align 4
  %127 = load i32, i32* @AW_IR_RXIDLE_VAL, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @AW_IR_ACTIVE_T, align 4
  %132 = load i32, i32* @AW_IR_ACTIVE_T_C, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %137 = load i32, i32* @AW_IR_CIR, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @WRITE(%struct.aw_ir_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %141 = load i32, i32* @AW_IR_RXCTL, align 4
  %142 = load i32, i32* @AW_IR_RXCTL_RPPI, align 4
  %143 = call i32 @WRITE(%struct.aw_ir_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %145 = load i32, i32* @AW_IR_RXSTA, align 4
  %146 = load i32, i32* @AW_IR_RXSTA_CLEARALL, align 4
  %147 = call i32 @WRITE(%struct.aw_ir_softc* %144, i32 %145, i32 %146)
  %148 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %149 = load i32, i32* @AW_IR_RXINT, align 4
  %150 = load i32, i32* @AW_IR_RXINT_ROI_EN, align 4
  %151 = load i32, i32* @AW_IR_RXINT_RPEI_EN, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @AW_IR_RXINT_RAI_EN, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %156 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = ashr i32 %157, 1
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @AW_IR_RXINT_RAL(i32 %159)
  %161 = or i32 %154, %160
  %162 = call i32 @WRITE(%struct.aw_ir_softc* %148, i32 %149, i32 %161)
  %163 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %164 = load i32, i32* @AW_IR_CTL, align 4
  %165 = call i32 @READ(%struct.aw_ir_softc* %163, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %167 = load i32, i32* @AW_IR_CTL, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @AW_IR_CTL_GEN, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @AW_IR_CTL_RXEN, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @WRITE(%struct.aw_ir_softc* %166, i32 %167, i32 %172)
  %174 = call i32* (...) @evdev_alloc()
  %175 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %176 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %175, i32 0, i32 2
  store i32* %174, i32** %176, align 8
  %177 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %178 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %181 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @device_get_desc(i32 %182)
  %184 = call i32 @evdev_set_name(i32* %179, i32 %183)
  %185 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %186 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %189 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @device_get_nameunit(i32 %190)
  %192 = call i32 @evdev_set_phys(i32* %187, i32 %191)
  %193 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %194 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @BUS_HOST, align 4
  %197 = call i32 @evdev_set_id(i32* %195, i32 %196, i32 0, i32 0, i32 0)
  %198 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %199 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @EV_SYN, align 4
  %202 = call i32 @evdev_support_event(i32* %200, i32 %201)
  %203 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %204 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @EV_MSC, align 4
  %207 = call i32 @evdev_support_event(i32* %205, i32 %206)
  %208 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %209 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @MSC_SCAN, align 4
  %212 = call i32 @evdev_support_msc(i32* %210, i32 %211)
  %213 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %214 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @evdev_register(i32* %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %120
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (i32, i8*, ...) @device_printf(i32 %220, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %221)
  br label %224

223:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %256

224:                                              ; preds = %219, %91, %83, %75, %66, %58, %47
  %225 = load i32*, i32** %7, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32*, i32** %7, align 8
  %229 = call i32 @clk_release(i32* %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32*, i32** %6, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 @clk_release(i32* %234)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i32*, i32** %5, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @hwreset_release(i32* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %244 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @evdev_free(i32* %245)
  %247 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %248 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %247, i32 0, i32 2
  store i32* null, i32** %248, align 8
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* @aw_ir_spec, align 4
  %251 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %4, align 8
  %252 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @bus_release_resources(i32 %249, i32 %250, i32* %253)
  %255 = load i32, i32* @ENXIO, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %242, %223, %110, %22
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.aw_ir_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32**) #1

declare dso_local i32 @hwreset_deassert(i32*) #1

declare dso_local i32 @aw_ir_buf_reset(%struct.aw_ir_softc*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_set_freq(i32*, i32, i32) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.aw_ir_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @WRITE(%struct.aw_ir_softc*, i32, i32) #1

declare dso_local i32 @AW_IR_RXINT_RAL(i32) #1

declare dso_local i32 @READ(%struct.aw_ir_softc*, i32) #1

declare dso_local i32* @evdev_alloc(...) #1

declare dso_local i32 @evdev_set_name(i32*, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @evdev_set_phys(i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @evdev_set_id(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @evdev_support_event(i32*, i32) #1

declare dso_local i32 @evdev_support_msc(i32*, i32) #1

declare dso_local i32 @evdev_register(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @evdev_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
