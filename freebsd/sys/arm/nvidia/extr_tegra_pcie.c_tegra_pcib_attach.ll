; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { %struct.tegra_pcib_port**, i32, i32*, %struct.TYPE_2__, i8*, i32, i32, i32*, i32, i32*, i32*, i32 }
%struct.tegra_pcib_port = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"msi_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot get FDT resources\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot allocate PADS register\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot allocate AFI register\0A\00", align 1
@RF_ALLOCATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot allocate config space memory\0A\00", align 1
@TEGRA_PCIB_MAX_PORTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot allocate memory for port: %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Cannot allocate MSI IRQ resources\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tegra_pci_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_pcib_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcib_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_pcib_port*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.tegra_pcib_softc* @device_get_softc(i32 %10)
  store %struct.tegra_pcib_softc* %11, %struct.tegra_pcib_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %15, i32 0, i32 11
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ofw_bus_get_node(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @tegra_pcib_parse_fdt_resources(%struct.tegra_pcib_softc* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %263

30:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i8* @bus_alloc_resource_any(i32 %31, i32 %32, i32* %7, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %36, i32 0, i32 10
  store i32* %35, i32** %37, align 8
  %38 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %38, i32 0, i32 10
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %6, align 4
  br label %261

46:                                               ; preds = %30
  %47 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %47, i32 0, i32 10
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @rman_get_bustag(i32* %49)
  %51 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %7, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call i8* @bus_alloc_resource_any(i32 %53, i32 %54, i32* %7, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %58, i32 0, i32 9
  store i32* %57, i32** %59, align 8
  %60 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %46
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %6, align 4
  br label %261

68:                                               ; preds = %46
  store i32 2, i32* %7, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @SYS_RES_MEMORY, align 4
  %71 = load i32, i32* @RF_ALLOCATED, align 4
  %72 = call i8* @bus_alloc_resource_any(i32 %69, i32 %70, i32* %7, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %74, i32 0, i32 7
  store i32* %73, i32** %75, align 8
  %76 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %6, align 4
  br label %261

84:                                               ; preds = %68
  %85 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @rman_get_start(i32* %87)
  %89 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %90 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %135, %84
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %138

95:                                               ; preds = %91
  %96 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %97 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %96, i32 0, i32 0
  %98 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %98, i64 %100
  %102 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %101, align 8
  %103 = icmp eq %struct.tegra_pcib_port* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %135

105:                                              ; preds = %95
  %106 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %106, i32 0, i32 0
  %108 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %108, i64 %110
  %112 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %111, align 8
  store %struct.tegra_pcib_port* %112, %struct.tegra_pcib_port** %8, align 8
  %113 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %114 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %8, align 8
  %117 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %8, align 8
  %120 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %8, align 8
  %123 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %122, i32 0, i32 1
  %124 = call i32 @bus_space_map(i32 %115, i32 %118, i32 %121, i32 0, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %105
  %128 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %129 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @ENXIO, align 4
  store i32 %133, i32* %6, align 4
  br label %261

134:                                              ; preds = %105
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %91

138:                                              ; preds = %91
  store i32 0, i32* %7, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @SYS_RES_IRQ, align 4
  %141 = load i32, i32* @RF_ACTIVE, align 4
  %142 = load i32, i32* @RF_SHAREABLE, align 4
  %143 = or i32 %141, %142
  %144 = call i8* @bus_alloc_resource_any(i32 %139, i32 %140, i32* %7, i32 %143)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %147 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %146, i32 0, i32 2
  store i32* %145, i32** %147, align 8
  %148 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %149 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %138
  %153 = load i32, i32* %3, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %6, align 4
  br label %261

156:                                              ; preds = %138
  store i32 1, i32* %7, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @SYS_RES_IRQ, align 4
  %159 = load i32, i32* @RF_ACTIVE, align 4
  %160 = call i8* @bus_alloc_resource_any(i32 %157, i32 %158, i32* %7, i32 %159)
  %161 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %162 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %164 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %156
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %170 = load i32, i32* @ENXIO, align 4
  store i32 %170, i32* %6, align 4
  br label %261

171:                                              ; preds = %156
  %172 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %173 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  store i32 3, i32* %174, align 8
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @ofw_pci_init(i32 %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %261

180:                                              ; preds = %171
  %181 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %182 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %183 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %187 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @tegra_pcib_decode_ranges(%struct.tegra_pcib_softc* %181, i32 %185, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %180
  br label %261

194:                                              ; preds = %180
  %195 = load i32, i32* %3, align 4
  %196 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %197 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* @INTR_TYPE_BIO, align 4
  %200 = load i32, i32* @INTR_MPSAFE, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @tegra_pci_intr, align 4
  %203 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %204 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %205 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %204, i32 0, i32 1
  %206 = call i64 @bus_setup_intr(i32 %195, i32* %198, i32 %201, i32 %202, i32* null, %struct.tegra_pcib_softc* %203, i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %194
  %209 = load i32, i32* %3, align 4
  %210 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %211 = load i32, i32* @ENXIO, align 4
  store i32 %211, i32* %6, align 4
  br label %261

212:                                              ; preds = %194
  %213 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %214 = call i32 @tegra_pcib_enable(%struct.tegra_pcib_softc* %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %261

218:                                              ; preds = %212
  store i32 0, i32* %9, align 4
  br label %219

219:                                              ; preds = %253, %218
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %219
  %224 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %225 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %224, i32 0, i32 0
  %226 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %226, i64 %228
  %230 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %229, align 8
  %231 = icmp eq %struct.tegra_pcib_port* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  br label %253

233:                                              ; preds = %223
  %234 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %235 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %234, i32 0, i32 0
  %236 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %236, i64 %238
  %240 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %239, align 8
  %241 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %233
  %245 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @tegra_pcib_port_enable(%struct.tegra_pcib_softc* %245, i32 %246)
  br label %252

248:                                              ; preds = %233
  %249 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @tegra_pcib_port_disable(%struct.tegra_pcib_softc* %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %244
  br label %253

253:                                              ; preds = %252, %232
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %219

256:                                              ; preds = %219
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @device_add_child(i32 %257, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %259 = load i32, i32* %3, align 4
  %260 = call i32 @bus_generic_attach(i32 %259)
  store i32 %260, i32* %2, align 4
  br label %263

261:                                              ; preds = %217, %208, %193, %179, %167, %152, %127, %80, %64, %42
  %262 = load i32, i32* %6, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %261, %256, %26
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.tegra_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @tegra_pcib_parse_fdt_resources(%struct.tegra_pcib_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ofw_pci_init(i32) #1

declare dso_local i32 @tegra_pcib_decode_ranges(%struct.tegra_pcib_softc*, i32, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.tegra_pcib_softc*, i32*) #1

declare dso_local i32 @tegra_pcib_enable(%struct.tegra_pcib_softc*) #1

declare dso_local i32 @tegra_pcib_port_enable(%struct.tegra_pcib_softc*, i32) #1

declare dso_local i32 @tegra_pcib_port_disable(%struct.tegra_pcib_softc*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
