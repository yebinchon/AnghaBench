; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_xhci.c_exynos_xhci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_xhci.c_exynos_xhci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_xhci_softc = type { %struct.TYPE_6__, i32*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32*, i32, i32, i8* }
%struct.TYPE_7__ = type { i32* }

@exynos_xhci_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Subregion failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not initialize softc\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xhci_interrupt = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Samsung\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Starting controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Controller started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exynos_xhci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_xhci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_xhci_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.exynos_xhci_softc* @device_get_softc(i32 %7)
  store %struct.exynos_xhci_softc* %8, %struct.exynos_xhci_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @exynos_xhci_spec, align 4
  %14 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %197

23:                                               ; preds = %1
  %24 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @rman_get_bustag(i32 %28)
  %30 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i8* %29, i8** %32, align 8
  %33 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rman_get_bushandle(i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rman_get_size(i32 %43)
  %45 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %49 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @rman_get_bustag(i32 %52)
  %54 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %55 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %57 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @rman_get_bushandle(i32 %60)
  %62 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %63 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %65 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %70 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = call i32 @bus_space_subregion(i8* %67, i8* %68, i32 0, i32 %72, i32* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %23
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @exynos_xhci_spec, align 4
  %84 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %85 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_release_resources(i32 %82, i32 %83, i32* %86)
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %2, align 4
  br label %197

89:                                               ; preds = %23
  %90 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %91 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @xhci_init(%struct.TYPE_6__* %91, i32 %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @exynos_xhci_spec, align 4
  %100 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %101 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @bus_release_resources(i32 %98, i32 %99, i32* %102)
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %2, align 4
  br label %197

105:                                              ; preds = %89
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %108 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @INTR_TYPE_BIO, align 4
  %113 = load i32, i32* @INTR_MPSAFE, align 4
  %114 = or i32 %112, %113
  %115 = load i64, i64* @xhci_interrupt, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %118 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %117, i32 0, i32 0
  %119 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %120 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = call i32 @bus_setup_intr(i32 %106, i32 %111, i32 %114, i32* null, i32* %116, %struct.TYPE_6__* %118, i32** %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %105
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %130 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  br label %193

132:                                              ; preds = %105
  %133 = load i32, i32* %3, align 4
  %134 = call i32* @device_add_child(i32 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %135 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %136 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32* %134, i32** %138, align 8
  %139 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %140 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %132
  %146 = load i32, i32* %3, align 4
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %193

148:                                              ; preds = %132
  %149 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %150 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %155 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = call i32 @device_set_ivars(i32* %153, %struct.TYPE_7__* %156)
  %158 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %159 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @strlcpy(i32 %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %163 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %164 = call i32 @dwc3_init(%struct.exynos_xhci_softc* %163)
  %165 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %166 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %165, i32 0, i32 0
  %167 = call i32 @xhci_halt_controller(%struct.TYPE_6__* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %148
  %171 = load i32, i32* %3, align 4
  %172 = call i32 (i32, i8*, ...) @device_printf(i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %173 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %174 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %173, i32 0, i32 0
  %175 = call i32 @xhci_start_controller(%struct.TYPE_6__* %174)
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %170, %148
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i32, i32* %3, align 4
  %181 = call i32 (i32, i8*, ...) @device_printf(i32 %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %182 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %183 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @device_probe_and_attach(i32* %186)
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %179, %176
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %193

192:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %197

193:                                              ; preds = %191, %145, %125
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @exynos_xhci_detach(i32 %194)
  %196 = load i32, i32* @ENXIO, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %193, %192, %95, %79, %19
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.exynos_xhci_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i32 @bus_space_subregion(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i64 @xhci_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32**) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dwc3_init(%struct.exynos_xhci_softc*) #1

declare dso_local i32 @xhci_halt_controller(%struct.TYPE_6__*) #1

declare dso_local i32 @xhci_start_controller(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @exynos_xhci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
