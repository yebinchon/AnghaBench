; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ehci.c_vybrid_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ehci.c_vybrid_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vybrid_ehci_softc = type { i32*, i8*, i8*, i8*, i8*, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i8* }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@vybrid_ehci_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not setup PHY\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Freescale\00", align 1
@EHCI_SCFLG_TT = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@vybrid_ehci_post_reset = common dso_local global i32 0, align 4
@ehci_get_port_speed_portsc = common dso_local global i32 0, align 4
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@USB_HCSPARAMS = common dso_local global i32 0, align 4
@USB_HWDEVICE = common dso_local global i32 0, align 4
@USB_HWGENERAL = common dso_local global i32 0, align 4
@USB_HWHOST = common dso_local global i32 0, align 4
@USB_HWRXBUF = common dso_local global i32 0, align 4
@USB_HWTXBUF = common dso_local global i32 0, align 4
@USB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vybrid_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vybrid_ehci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vybrid_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.vybrid_ehci_softc* @device_get_softc(i8* %9)
  store %struct.vybrid_ehci_softc* %10, %struct.vybrid_ehci_softc** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %14, i32 0, i32 5
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i8* %16, i8** %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 32, i32* %32, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @vybrid_ehci_spec, align 4
  %35 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %36 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @bus_alloc_resources(i8* %33, i32 %34, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, i8*, ...) @device_printf(i8* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %270

44:                                               ; preds = %1
  %45 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %46 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @rman_get_bustag(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @rman_get_bushandle(i32 %57)
  store i8* %58, i8** %6, align 8
  %59 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %60 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rman_get_size(i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @rman_get_bustag(i32 %71)
  %73 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %76 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @rman_get_bushandle(i32 %79)
  %81 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %82 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %84 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @rman_get_bustag(i32 %87)
  %89 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %90 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %92 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @rman_get_bushandle(i32 %95)
  %97 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %98 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @USB_GET_DMA_TAG(i8* %101)
  %103 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__* %100, i32 %102, i32* @ehci_iterate_hw_softc)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %44
  %106 = load i32, i32* @ENXIO, align 4
  store i32 %106, i32* %2, align 4
  br label %270

107:                                              ; preds = %44
  %108 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %109 = call i64 @phy_init(%struct.vybrid_ehci_softc* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 (i8*, i8*, ...) @device_printf(i8* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %270

114:                                              ; preds = %107
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = call i32 @bus_space_subregion(i8* %117, i8* %118, i32 256, i32 %121, i8** %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  br label %270

129:                                              ; preds = %114
  %130 = load i8*, i8** %3, align 8
  %131 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %132 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @INTR_TYPE_BIO, align 4
  %137 = load i32, i32* @INTR_MPSAFE, align 4
  %138 = or i32 %136, %137
  %139 = load i64, i64* @ehci_interrupt, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = call i32 @bus_setup_intr(i8* %130, i32 %135, i32 %138, i32* null, i32* %140, %struct.TYPE_6__* %141, i32* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %129
  %148 = load i8*, i8** %3, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i8*, i8*, ...) @device_printf(i8* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  store i32 1, i32* %2, align 4
  br label %270

151:                                              ; preds = %129
  %152 = load i8*, i8** %3, align 8
  %153 = call i32* @device_add_child(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i32* %153, i32** %156, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %182, label %162

162:                                              ; preds = %151
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 (i8*, i8*, ...) @device_printf(i8* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i8*, i8** %3, align 8
  %166 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %167 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @bus_teardown_intr(i8* %165, i32 %170, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %162
  %178 = load i8*, i8** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 (i8*, i8*, ...) @device_printf(i8* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %177, %162
  store i32 1, i32* %2, align 4
  br label %270

182:                                              ; preds = %151
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = call i32 @device_set_ivars(i32* %186, %struct.TYPE_7__* %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @strlcpy(i32 %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 5
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @bus_space_read_4(i8* %196, i8* %199, i32 168)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, 3
  store i32 %202, i32* %8, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 6
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 5
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @bus_space_write_4(i8* %205, i8* %208, i32 168, i32 %209)
  %211 = load i32, i32* @EHCI_SCFLG_TT, align 4
  %212 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* @vybrid_ehci_post_reset, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @ehci_get_port_speed_portsc, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %225 = call i32 @ehci_init(%struct.TYPE_6__* %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %182
  %229 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @device_probe_and_attach(i32* %237)
  store i32 %238, i32* %7, align 4
  br label %269

239:                                              ; preds = %182
  %240 = load i8*, i8** %3, align 8
  %241 = load i32, i32* %7, align 4
  %242 = call i32 (i8*, i8*, ...) @device_printf(i8* %240, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %241)
  %243 = load i8*, i8** %3, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @device_delete_child(i8* %243, i32* %247)
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  store i32* null, i32** %251, align 8
  %252 = load i8*, i8** %3, align 8
  %253 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %254 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 5
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @bus_teardown_intr(i8* %252, i32 %257, i32 %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %239
  %265 = load i8*, i8** %3, align 8
  %266 = load i32, i32* %7, align 4
  %267 = call i32 (i8*, i8*, ...) @device_printf(i8* %265, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %264, %239
  store i32 1, i32* %2, align 4
  br label %270

269:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %270

270:                                              ; preds = %269, %268, %181, %147, %127, %111, %105, %40
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.vybrid_ehci_softc* @device_get_softc(i8*) #1

declare dso_local i64 @bus_alloc_resources(i8*, i32, i32*) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i64 @phy_init(%struct.vybrid_ehci_softc*) #1

declare dso_local i32 @bus_space_subregion(i8*, i8*, i32, i32, i8**) #1

declare dso_local i32 @bus_setup_intr(i8*, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i8*, i32, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bus_space_read_4(i8*, i8*, i32) #1

declare dso_local i32 @bus_space_write_4(i8*, i8*, i32, i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @device_delete_child(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
