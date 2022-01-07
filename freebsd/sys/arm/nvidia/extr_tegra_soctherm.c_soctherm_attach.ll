; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soctherm_softc = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i64 }
%struct.soctherm_shared_cal = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"soctherm\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot get fuse reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tsensor\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot get 'tsensor' clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Cannot get 'soctherm' clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Cannot assert reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Cannot enable 'tsensor' clock: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Cannot enable 'soctherm' clock: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Cannot clear reset\0A\00", align 1
@t124_tsensors = common dso_local global i64 0, align 8
@TSENSOR_PDIV = common dso_local global i32 0, align 4
@TSENSOR_PDIV_T124 = common dso_local global i32 0, align 4
@TSENSOR_HOTSPOT_OFF = common dso_local global i32 0, align 4
@TSENSOR_HOTSPOT_OFF_T124 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Cannot initialize sysctls\0A\00", align 1
@soctherm_sysctl_ctx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @soctherm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.soctherm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.soctherm_shared_cal, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.soctherm_softc* @device_get_softc(i32 %10)
  store %struct.soctherm_softc* %11, %struct.soctherm_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %14 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %16 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %7, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %27 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %175

33:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %7, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %175

48:                                               ; preds = %33
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %51 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %50, i32 0, i32 3
  %52 = call i32 @hwreset_get_by_ofw_name(i32 %49, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32** %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %175

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %61 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %60, i32 0, i32 5
  %62 = call i32 @clk_get_by_ofw_name(i32 %59, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32** %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %175

69:                                               ; preds = %58
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %72 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %71, i32 0, i32 4
  %73 = call i32 @clk_get_by_ofw_name(i32 %70, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32** %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  br label %175

80:                                               ; preds = %69
  %81 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %82 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @hwreset_assert(i32* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %175

90:                                               ; preds = %80
  %91 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %92 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @clk_enable(i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  br label %175

101:                                              ; preds = %90
  %102 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %103 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @clk_enable(i32* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  br label %175

112:                                              ; preds = %101
  %113 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %114 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @hwreset_deassert(i32* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %175

122:                                              ; preds = %112
  %123 = load i64, i64* @t124_tsensors, align 8
  %124 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %125 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %124, i32 0, i32 8
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* @t124_tsensors, align 8
  %127 = call i32 @nitems(i64 %126)
  %128 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %129 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %131 = call i32 @get_shared_cal(%struct.soctherm_softc* %130, %struct.soctherm_shared_cal* %9)
  %132 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %133 = load i32, i32* @TSENSOR_PDIV, align 4
  %134 = load i32, i32* @TSENSOR_PDIV_T124, align 4
  %135 = call i32 @WR4(%struct.soctherm_softc* %132, i32 %133, i32 %134)
  %136 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %137 = load i32, i32* @TSENSOR_HOTSPOT_OFF, align 4
  %138 = load i32, i32* @TSENSOR_HOTSPOT_OFF_T124, align 4
  %139 = call i32 @WR4(%struct.soctherm_softc* %136, i32 %137, i32 %138)
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %155, %122
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %143 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %148 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %149 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = call i32 @soctherm_init_tsensor(%struct.soctherm_softc* %147, i64 %153, %struct.soctherm_shared_cal* %9)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %140

158:                                              ; preds = %140
  %159 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %160 = call i32 @soctherm_init_sysctl(%struct.soctherm_softc* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %165 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @device_printf(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %175

168:                                              ; preds = %158
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @OF_xref_from_node(i32 %169)
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @OF_device_register_xref(i32 %170, i32 %171)
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @bus_generic_attach(i32 %173)
  store i32 %174, i32* %2, align 4
  br label %246

175:                                              ; preds = %163, %119, %108, %97, %87, %76, %65, %55, %45, %30
  %176 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %177 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %183 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %186 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %185, i32 0, i32 6
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @bus_teardown_intr(i32 %181, i32* %184, i32* %187)
  br label %189

189:                                              ; preds = %180, %175
  %190 = call i32 @sysctl_ctx_free(i32* @soctherm_sysctl_ctx)
  %191 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %192 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %197 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @clk_release(i32* %198)
  br label %200

200:                                              ; preds = %195, %189
  %201 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %202 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %207 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @clk_release(i32* %208)
  br label %210

210:                                              ; preds = %205, %200
  %211 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %212 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %217 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @hwreset_release(i32* %218)
  br label %220

220:                                              ; preds = %215, %210
  %221 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %222 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* @SYS_RES_IRQ, align 4
  %228 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %229 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @bus_release_resource(i32 %226, i32 %227, i32 0, i32* %230)
  br label %232

232:                                              ; preds = %225, %220
  %233 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %234 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load i32, i32* %3, align 4
  %239 = load i32, i32* @SYS_RES_MEMORY, align 4
  %240 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %241 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @bus_release_resource(i32 %238, i32 %239, i32 0, i32* %242)
  br label %244

244:                                              ; preds = %237, %232
  %245 = load i32, i32* @ENXIO, align 4
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %244, %168
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local %struct.soctherm_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @hwreset_assert(i32*) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @hwreset_deassert(i32*) #1

declare dso_local i32 @nitems(i64) #1

declare dso_local i32 @get_shared_cal(%struct.soctherm_softc*, %struct.soctherm_shared_cal*) #1

declare dso_local i32 @WR4(%struct.soctherm_softc*, i32, i32) #1

declare dso_local i32 @soctherm_init_tsensor(%struct.soctherm_softc*, i64, %struct.soctherm_shared_cal*) #1

declare dso_local i32 @soctherm_init_sysctl(%struct.soctherm_softc*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
