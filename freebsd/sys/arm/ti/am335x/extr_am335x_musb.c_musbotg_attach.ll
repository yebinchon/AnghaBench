; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_super_softc = type { %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, %struct.musbotg_super_softc*, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@am335x_musbotg_mem_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error: could not allocate mem resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: could not allocate irq resources\0A\00", align 1
@musbotg_clocks_on = common dso_local global i32 0, align 4
@musbotg_clocks_off = common dso_local global i32 0, align 4
@musbotg_ep_int_set = common dso_local global i32 0, align 4
@MUSB2_MAX_DEVICES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed allocate bus mem for musb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RES_USBCORE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No busdev for musb\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@musbotg_wrapper_interrupt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to setup interrupt for musb\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@MUSB2_HOST_MODE = common dso_local global i64 0, align 8
@MUSB2_DEVICE_MODE = common dso_local global i8* null, align 8
@USBCTRL_MODE = common dso_local global i32 0, align 4
@USBCTRL_MODE_IDDIGMUX = common dso_local global i32 0, align 4
@USBCTRL_MODE_IDDIG = common dso_local global i32 0, align 4
@USBCTRL_UTMI = common dso_local global i32 0, align 4
@USBCTRL_UTMI_FSDATAEXT = common dso_local global i32 0, align 4
@USBCTRL_INTEN_USB_ALL = common dso_local global i32 0, align 4
@USBCTRL_INTEN_USB_SOF = common dso_local global i32 0, align 4
@USBCTRL_INTEN_SET1 = common dso_local global i32 0, align 4
@USBCTRL_INTEN_CLR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @musbotg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.musbotg_super_softc*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.musbotg_super_softc* @device_get_softc(i32 %8)
  store %struct.musbotg_super_softc* %9, %struct.musbotg_super_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @device_get_unit(i32 %10)
  %12 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %13 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @am335x_musbotg_mem_spec, align 4
  %17 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %18 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @bus_alloc_resources(i32 %15, i32 %16, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %297

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %31 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %30, i32 0, i32 2
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i32* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %35 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  store i32* %33, i32** %36, align 8
  %37 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %38 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %297

46:                                               ; preds = %27
  %47 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %48 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 14
  store i32* @musbotg_clocks_on, i32** %49, align 8
  %50 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %51 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 13
  store i32* @musbotg_clocks_off, i32** %52, align 8
  %53 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %54 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %53, i32 0, i32 0
  %55 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %56 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 12
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %57, align 8
  %58 = load i32, i32* @musbotg_ep_int_set, align 4
  %59 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %60 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 11
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %64 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i32 %62, i32* %66, align 8
  %67 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %68 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %72 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @MUSB2_MAX_DEVICES, align 4
  %76 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %77 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 8
  %80 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %81 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 32, i32* %83, align 8
  %84 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %85 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @USB_GET_DMA_TAG(i32 %87)
  %89 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_5__* %86, i32 %88, i32* null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %46
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  store i32 %94, i32* %2, align 4
  br label %297

95:                                               ; preds = %46
  %96 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %97 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @RES_USBCORE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %103 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  store i32 %101, i32* %104, align 8
  %105 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %106 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @rman_get_bustag(i32 %108)
  %110 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %111 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 9
  store i32 %109, i32* %112, align 4
  %113 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %114 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @rman_get_bushandle(i32 %116)
  %118 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %119 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 8
  store i32 %117, i32* %120, align 8
  %121 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %122 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @rman_get_size(i32 %124)
  %126 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %127 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 7
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @device_add_child(i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %131 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %132 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 4
  %135 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %136 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %95
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @device_printf(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %293

144:                                              ; preds = %95
  %145 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %146 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %151 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = call i32 @device_set_ivars(i32 %149, %struct.TYPE_5__* %152)
  %154 = load i32, i32* %3, align 4
  %155 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %156 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* @INTR_TYPE_BIO, align 4
  %160 = load i32, i32* @INTR_MPSAFE, align 4
  %161 = or i32 %159, %160
  %162 = load i64, i64* @musbotg_wrapper_interrupt, align 8
  %163 = inttoptr i64 %162 to i32*
  %164 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %165 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %164, i32 0, i32 0
  %166 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %167 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = call i32 @bus_setup_intr(i32 %154, i32* %158, i32 %161, i32* null, i32* %163, %struct.TYPE_6__* %165, i32** %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %144
  %173 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %174 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  store i32* null, i32** %175, align 8
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %293

178:                                              ; preds = %144
  %179 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %180 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %181 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  store %struct.musbotg_super_softc* %179, %struct.musbotg_super_softc** %182, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @ofw_bus_get_node(i32 %183)
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %186 = call i64 @OF_getprop(i32 %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %185, i32 16)
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %178
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %190 = call i64 @strcasecmp(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i64, i64* @MUSB2_HOST_MODE, align 8
  %194 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %195 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i64 %193, i64* %196, align 8
  br label %203

197:                                              ; preds = %188
  %198 = load i8*, i8** @MUSB2_DEVICE_MODE, align 8
  %199 = ptrtoint i8* %198 to i64
  %200 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %201 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i64 %199, i64* %202, align 8
  br label %203

203:                                              ; preds = %197, %192
  br label %222

204:                                              ; preds = %178
  %205 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %206 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load i8*, i8** @MUSB2_DEVICE_MODE, align 8
  %212 = ptrtoint i8* %211 to i64
  %213 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %214 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i64 %212, i64* %215, align 8
  br label %221

216:                                              ; preds = %204
  %217 = load i64, i64* @MUSB2_HOST_MODE, align 8
  %218 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %219 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  store i64 %217, i64* %220, align 8
  br label %221

221:                                              ; preds = %216, %210
  br label %222

222:                                              ; preds = %221, %203
  %223 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %224 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @MUSB2_HOST_MODE, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %248

229:                                              ; preds = %222
  %230 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %231 = load i32, i32* @USBCTRL_MODE, align 4
  %232 = call i32 @USBCTRL_READ4(%struct.musbotg_super_softc* %230, i32 %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* @USBCTRL_MODE_IDDIGMUX, align 4
  %234 = load i32, i32* %7, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* @USBCTRL_MODE_IDDIG, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %7, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %241 = load i32, i32* @USBCTRL_MODE, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %240, i32 %241, i32 %242)
  %244 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %245 = load i32, i32* @USBCTRL_UTMI, align 4
  %246 = load i32, i32* @USBCTRL_UTMI_FSDATAEXT, align 4
  %247 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %244, i32 %245, i32 %246)
  br label %262

248:                                              ; preds = %222
  %249 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %250 = load i32, i32* @USBCTRL_MODE, align 4
  %251 = call i32 @USBCTRL_READ4(%struct.musbotg_super_softc* %249, i32 %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* @USBCTRL_MODE_IDDIGMUX, align 4
  %253 = load i32, i32* %7, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* @USBCTRL_MODE_IDDIG, align 4
  %256 = load i32, i32* %7, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %7, align 4
  %258 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %259 = load i32, i32* @USBCTRL_MODE, align 4
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %248, %229
  %263 = load i32, i32* @USBCTRL_INTEN_USB_ALL, align 4
  %264 = load i32, i32* @USBCTRL_INTEN_USB_SOF, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %263, %265
  store i32 %266, i32* %7, align 4
  %267 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %268 = load i32, i32* @USBCTRL_INTEN_SET1, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %267, i32 %268, i32 %269)
  %271 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %272 = load i32, i32* @USBCTRL_INTEN_CLR0, align 4
  %273 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %271, i32 %272, i32 -1)
  %274 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %275 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %274, i32 0, i32 0
  %276 = call i32 @musbotg_init(%struct.TYPE_6__* %275)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %262
  %280 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %281 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @device_probe_and_attach(i32 %284)
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %279, %262
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  br label %293

290:                                              ; preds = %286
  %291 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %292 = call i32 @musbotg_vbus_poll(%struct.musbotg_super_softc* %291)
  store i32 0, i32* %2, align 4
  br label %297

293:                                              ; preds = %289, %172, %141
  %294 = load i32, i32* %3, align 4
  %295 = call i32 @musbotg_detach(i32 %294)
  %296 = load i32, i32* @ENXIO, align 4
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %293, %290, %91, %42, %23
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local %struct.musbotg_super_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_6__*, i32**) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @USBCTRL_READ4(%struct.musbotg_super_softc*, i32) #1

declare dso_local i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc*, i32, i32) #1

declare dso_local i32 @musbotg_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @musbotg_vbus_poll(%struct.musbotg_super_softc*) #1

declare dso_local i32 @musbotg_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
