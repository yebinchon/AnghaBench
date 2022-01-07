; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOURCE_SELECT_AUTO = common dso_local global i32 0, align 4
@tegra124_tmds_config = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@hdmi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"WARNING: unable to register interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot parse FDT resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Cannot enable FDT resources\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot register DRM device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.hdmi_softc* @device_get_softc(i32 %8)
  store %struct.hdmi_softc* %9, %struct.hdmi_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %11, i32 0, i32 12
  store i32 %10, i32* %12, align 8
  %13 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %16, i32 0, i32 16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @SOURCE_SELECT_AUTO, align 4
  %24 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %26, i32 0, i32 0
  store i32 44100, i32* %27, align 8
  %28 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %28, i32 0, i32 1
  store i32 2, i32* %29, align 4
  %30 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @tegra124_tmds_config, align 4
  %33 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @tegra124_tmds_config, align 4
  %36 = call i32 @nitems(i32 %35)
  %37 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %6, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %120

53:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_RES_IRQ, align 4
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = call i8* @bus_alloc_resource_any(i32 %54, i32 %55, i32* %6, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %120

68:                                               ; preds = %53
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @INTR_TYPE_MISC, align 4
  %74 = load i32, i32* @INTR_MPSAFE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @hdmi_intr, align 4
  %77 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %78 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %79 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %78, i32 0, i32 11
  %80 = call i32 @bus_setup_intr(i32 %69, i32* %72, i32 %75, i32* null, i32 %76, %struct.hdmi_softc* %77, i32** %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %120

86:                                               ; preds = %68
  %87 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @get_fdt_resources(%struct.hdmi_softc* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %120

95:                                               ; preds = %86
  %96 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %97 = call i32 @enable_fdt_resources(%struct.hdmi_softc* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %120

103:                                              ; preds = %95
  %104 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %105 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @device_get_parent(i32 %106)
  %108 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %109 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @TEGRA_DRM_REGISTER_CLIENT(i32 %107, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %120

117:                                              ; preds = %103
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @bus_generic_attach(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %228

120:                                              ; preds = %114, %100, %92, %83, %65, %50
  %121 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %122 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @device_get_parent(i32 %123)
  %125 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %126 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32 %124, i32 %127)
  %129 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %130 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %129, i32 0, i32 11
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %120
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %136 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %139 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %138, i32 0, i32 11
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @bus_teardown_intr(i32 %134, i32* %137, i32* %140)
  br label %142

142:                                              ; preds = %133, %120
  %143 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %144 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %143, i32 0, i32 10
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %149 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %148, i32 0, i32 10
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @clk_release(i32* %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %154 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %153, i32 0, i32 9
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %159 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %158, i32 0, i32 9
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @clk_release(i32* %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %164 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %163, i32 0, i32 8
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %169 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %168, i32 0, i32 8
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @hwreset_release(i32* %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %174 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %179 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %178, i32 0, i32 7
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @regulator_release(i32* %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %184 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %189 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @regulator_release(i32* %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %194 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %199 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @regulator_release(i32* %200)
  br label %202

202:                                              ; preds = %197, %192
  %203 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %204 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @SYS_RES_IRQ, align 4
  %210 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %211 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @bus_release_resource(i32 %208, i32 %209, i32 0, i32* %212)
  br label %214

214:                                              ; preds = %207, %202
  %215 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %216 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* @SYS_RES_MEMORY, align 4
  %222 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %223 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @bus_release_resource(i32 %220, i32 %221, i32 0, i32* %224)
  br label %226

226:                                              ; preds = %219, %214
  %227 = load i32, i32* @ENXIO, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %226, %117
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.hdmi_softc*, i32**) #1

declare dso_local i32 @get_fdt_resources(%struct.hdmi_softc*, i32) #1

declare dso_local i32 @enable_fdt_resources(%struct.hdmi_softc*) #1

declare dso_local i32 @TEGRA_DRM_REGISTER_CLIENT(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @regulator_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
