; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmtpps_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.dmtpps_softc*, i32, i32 }
%struct.make_dev_args = type { i32, %struct.dmtpps_softc*, i32, i32, i32, i32*, i32*, i32 }

@SYS_CLK = common dso_local global i32 0, align 4
@INVALID_CLK_IDENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYSCLK_CLK = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DMTimer%d\00", align 1
@DMT_TCLR_GPO_CFG = common dso_local global i32 0, align 4
@DMT_TCLR = common dso_local global i32 0, align 4
@DMT_TSICR = common dso_local global i32 0, align 4
@DMT_TSICR_RESET = common dso_local global i32 0, align 4
@DMT_TIOCP_CFG = common dso_local global i32 0, align 4
@DMT_TIOCP_RESET = common dso_local global i32 0, align 4
@DMT_TCLR_START = common dso_local global i32 0, align 4
@DMT_TCLR_AUTOLOAD = common dso_local global i32 0, align 4
@DMT_TLDR = common dso_local global i32 0, align 4
@DMT_TCRR = common dso_local global i32 0, align 4
@dmtpps_get_timecount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"dmtpps\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@PPSFLAG_MTX_SPIN = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_ABI_VERSION = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@dmtpps_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@PPS_CDEV_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to create cdev %s\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Using %s for PPS device /dev/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dmtpps_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmtpps_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmtpps_softc*, align 8
  %5 = alloca %struct.make_dev_args, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.dmtpps_softc* @device_get_softc(i32 %9)
  store %struct.dmtpps_softc* %10, %struct.dmtpps_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %13 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @SYS_CLK, align 4
  %15 = call i32 @ti_prcm_clk_get_source_freq(i32 %14, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ti_hwmods_get_clock(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @INVALID_CLK_IDENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %192

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SYSCLK_CLK, align 4
  %25 = call i32 @ti_prcm_clk_set_source(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %192

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ti_prcm_clk_enable(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %192

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %39 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %38, i32 0, i32 9
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i32* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %39, i32 %40)
  %42 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %43 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %42, i32 0, i32 8
  store i32* %41, i32** %43, align 8
  %44 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %45 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %192

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ti_hwmods_get_unit(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %54 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %56 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %59 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snprintf(i32 %57, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @DMT_TCLR_GPO_CFG, align 4
  %63 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %64 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %66 = load i32, i32* @DMT_TCLR, align 4
  %67 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %68 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %65, i32 %66, i32 %69)
  %71 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %72 = load i32, i32* @DMT_TSICR, align 4
  %73 = load i32, i32* @DMT_TSICR_RESET, align 4
  %74 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %82, %50
  %76 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %77 = load i32, i32* @DMT_TIOCP_CFG, align 4
  %78 = call i32 @DMTIMER_READ4(%struct.dmtpps_softc* %76, i32 %77)
  %79 = load i32, i32* @DMT_TIOCP_RESET, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %75

83:                                               ; preds = %75
  %84 = load i32, i32* @DMT_TCLR_START, align 4
  %85 = load i32, i32* @DMT_TCLR_AUTOLOAD, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %88 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %92 = load i32, i32* @DMT_TLDR, align 4
  %93 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %91, i32 %92, i32 0)
  %94 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %95 = load i32, i32* @DMT_TCRR, align 4
  %96 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %94, i32 %95, i32 0)
  %97 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %98 = load i32, i32* @DMT_TCLR, align 4
  %99 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %100 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %97, i32 %98, i32 %101)
  %103 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %104 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %107 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @dmtpps_get_timecount, align 4
  %110 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %111 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 8
  %113 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %114 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %118 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %121 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 1000, i32* %122, align 8
  %123 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %124 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %125 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  store %struct.dmtpps_softc* %123, %struct.dmtpps_softc** %126, align 8
  %127 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %128 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %127, i32 0, i32 7
  %129 = call i32 @tc_init(%struct.TYPE_3__* %128)
  %130 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %131 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %130, i32 0, i32 6
  %132 = load i32, i32* @MTX_SPIN, align 4
  %133 = call i32 @mtx_init(i32* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %132)
  %134 = load i32, i32* @PPSFLAG_MTX_SPIN, align 4
  %135 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %136 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %139 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %140 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @PPS_ABI_VERSION, align 4
  %143 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %144 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %147 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %146, i32 0, i32 6
  %148 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %149 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32* %147, i32** %150, align 8
  %151 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %152 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %151, i32 0, i32 5
  %153 = call i32 @pps_init_abi(%struct.TYPE_4__* %152)
  %154 = call i32 @make_dev_args_init(%struct.make_dev_args* %5)
  %155 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %156 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 7
  store i32 %155, i32* %156, align 8
  %157 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 6
  store i32* @dmtpps_cdevsw, i32** %157, align 8
  %158 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 5
  store i32* null, i32** %158, align 8
  %159 = load i32, i32* @UID_ROOT, align 4
  %160 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 4
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* @GID_WHEEL, align 4
  %162 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 3
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 0
  store i32 384, i32* %163, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @device_get_unit(i32 %164)
  %166 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 2
  store i32 %165, i32* %166, align 8
  %167 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %168 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %5, i32 0, i32 1
  store %struct.dmtpps_softc* %167, %struct.dmtpps_softc** %168, align 8
  %169 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %170 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %169, i32 0, i32 4
  %171 = load i32, i32* @PPS_CDEV_NAME, align 4
  %172 = call i32 @make_dev_s(%struct.make_dev_args* %5, i32* %170, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %83
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @PPS_CDEV_NAME, align 4
  %177 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %192

179:                                              ; preds = %83
  %180 = load i64, i64* @bootverbose, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %184 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %4, align 8
  %187 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @PPS_CDEV_NAME, align 4
  %190 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %179
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %174, %48, %33, %27, %20
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.dmtpps_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_prcm_clk_get_source_freq(i32, i32*) #1

declare dso_local i32 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @ti_prcm_clk_set_source(i32, i32) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ti_hwmods_get_unit(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @DMTIMER_WRITE4(%struct.dmtpps_softc*, i32, i32) #1

declare dso_local i32 @DMTIMER_READ4(%struct.dmtpps_softc*, i32) #1

declare dso_local i32 @tc_init(%struct.TYPE_3__*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pps_init_abi(%struct.TYPE_4__*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
