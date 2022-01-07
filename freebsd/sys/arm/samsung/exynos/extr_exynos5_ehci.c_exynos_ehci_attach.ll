; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_exynos_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_exynos_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_ehci_softc = type { i32*, i8*, i8*, i8*, i8*, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i8* }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@exynos_ehci_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Samsung\00", align 1
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @exynos_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ehci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.exynos_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.exynos_ehci_softc* @device_get_softc(i8* %8)
  store %struct.exynos_ehci_softc* %9, %struct.exynos_ehci_softc** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %12 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %13, i32 0, i32 5
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  store i8* %15, i8** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 32, i32* %31, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @exynos_ehci_spec, align 4
  %34 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @bus_alloc_resources(i8* %32, i32 %33, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i8*, i8*, ...) @device_printf(i8* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %234

43:                                               ; preds = %1
  %44 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %45 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @rman_get_bustag(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %53 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @rman_get_bushandle(i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %59 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rman_get_size(i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %67 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @rman_get_bustag(i32 %70)
  %72 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %73 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %75 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @rman_get_bushandle(i32 %78)
  %80 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %81 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @rman_get_bustag(i32 %86)
  %88 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %89 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %91 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @rman_get_bushandle(i32 %94)
  %96 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %97 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @USB_GET_DMA_TAG(i8* %100)
  %102 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__* %99, i32 %101, i32* @ehci_iterate_hw_softc)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %43
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %2, align 4
  br label %234

106:                                              ; preds = %43
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = call i32 @bus_space_subregion(i8* %109, i8* %110, i32 0, i32 %113, i32* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %2, align 4
  br label %234

121:                                              ; preds = %106
  %122 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %123 = call i32 @phy_init(%struct.exynos_ehci_softc* %122)
  %124 = load i8*, i8** %3, align 8
  %125 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %126 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @INTR_TYPE_BIO, align 4
  %131 = load i32, i32* @INTR_MPSAFE, align 4
  %132 = or i32 %130, %131
  %133 = load i64, i64* @ehci_interrupt, align 8
  %134 = inttoptr i64 %133 to i32*
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = call i32 @bus_setup_intr(i8* %124, i32 %129, i32 %132, i32* null, i32* %134, %struct.TYPE_6__* %135, i32* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %121
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (i8*, i8*, ...) @device_printf(i8* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  store i32 1, i32* %2, align 4
  br label %234

145:                                              ; preds = %121
  %146 = load i8*, i8** %3, align 8
  %147 = call i32* @device_add_child(i8* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32* %147, i32** %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %176, label %156

156:                                              ; preds = %145
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 (i8*, i8*, ...) @device_printf(i8* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i8*, i8** %3, align 8
  %160 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %161 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @bus_teardown_intr(i8* %159, i32 %164, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %156
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 (i8*, i8*, ...) @device_printf(i8* %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %156
  store i32 1, i32* %2, align 4
  br label %234

176:                                              ; preds = %145
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = call i32 @device_set_ivars(i32* %180, %struct.TYPE_7__* %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @strlcpy(i32 %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %189 = call i32 @ehci_init(%struct.TYPE_6__* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %176
  %193 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @device_probe_and_attach(i32* %201)
  store i32 %202, i32* %7, align 4
  br label %233

203:                                              ; preds = %176
  %204 = load i8*, i8** %3, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 (i8*, i8*, ...) @device_printf(i8* %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  %207 = load i8*, i8** %3, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @device_delete_child(i8* %207, i32* %211)
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  store i32* null, i32** %215, align 8
  %216 = load i8*, i8** %3, align 8
  %217 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %218 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @bus_teardown_intr(i8* %216, i32 %221, i32 %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %203
  %229 = load i8*, i8** %3, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 (i8*, i8*, ...) @device_printf(i8* %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %228, %203
  store i32 1, i32* %2, align 4
  br label %234

233:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %234

234:                                              ; preds = %233, %232, %175, %141, %119, %104, %39
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.exynos_ehci_softc* @device_get_softc(i8*) #1

declare dso_local i64 @bus_alloc_resources(i8*, i32, i32*) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i32 @bus_space_subregion(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @phy_init(%struct.exynos_ehci_softc*) #1

declare dso_local i32 @bus_setup_intr(i8*, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i8*, i32, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @device_delete_child(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
