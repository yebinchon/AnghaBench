; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i32, i32*, i32*, i32*, i32*, i32, i64, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot map registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot allocate interrupt.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot get i2c clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cannot get i2c reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Cannot set clock frequency\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cannot get clock frequency\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Cannot enable clock: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"tegra_i2c_activate failed\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tegra_i2c_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Cannot setup interrupt.\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Could not allocate iicbus instance.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_i2c_softc*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tegra_i2c_softc* @device_get_softc(i32 %9)
  store %struct.tegra_i2c_softc* %10, %struct.tegra_i2c_softc** %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %13 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %17 = call i32 @LOCK_INIT(%struct.tegra_i2c_softc* %16)
  store i32 0, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i8* @bus_alloc_resource_any(i32 %18, i32 %19, i32* %5, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %24 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %26 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %4, align 4
  br label %163

33:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %5, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %40 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %42 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %4, align 4
  br label %163

49:                                               ; preds = %33
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %52 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %51, i32 0, i32 5
  %53 = call i32 @clk_get_by_ofw_name(i32 %50, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %163

60:                                               ; preds = %49
  %61 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %62 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %64, i32 0, i32 8
  %66 = call i32 @hwreset_get_by_ofw_name(i32 %63, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %71 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %205

75:                                               ; preds = %60
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %78 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %77, i32 0, i32 0
  %79 = call i32 @OF_getencprop(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %78, i32 4)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 4
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %85 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %84, i32 0, i32 0
  store i32 100000, i32* %85, align 8
  br label %163

86:                                               ; preds = %75
  %87 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %88 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %91 = call i32 @clk_set_freq(i32 %89, i32 136000000, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %163

97:                                               ; preds = %86
  %98 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %99 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @clk_get_freq(i32 %100, i64* %8)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %3, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %163

107:                                              ; preds = %97
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %110 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %109, i32 0, i32 6
  store i64 %108, i64* %110, align 8
  %111 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %112 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @clk_enable(i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  br label %163

121:                                              ; preds = %107
  %122 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %123 = call i32 @tegra_i2c_hw_init(%struct.tegra_i2c_softc* %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %3, align 4
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %163

129:                                              ; preds = %121
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %132 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @INTR_TYPE_MISC, align 4
  %135 = load i32, i32* @INTR_MPSAFE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @tegra_i2c_intr, align 4
  %138 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %139 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %140 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %139, i32 0, i32 3
  %141 = call i32 @bus_setup_intr(i32 %130, i32* %133, i32 %136, i32* null, i32 %137, %struct.tegra_i2c_softc* %138, i32** %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load i32, i32* %3, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %163

147:                                              ; preds = %129
  %148 = load i32, i32* %3, align 4
  %149 = call i32* @device_add_child(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %150 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %151 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %150, i32 0, i32 4
  store i32* %149, i32** %151, align 8
  %152 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %153 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i32, i32* %3, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %4, align 4
  br label %163

160:                                              ; preds = %147
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @bus_generic_attach(i32 %161)
  store i32 %162, i32* %2, align 4
  br label %205

163:                                              ; preds = %156, %144, %126, %117, %104, %94, %83, %56, %45, %29
  %164 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %165 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i32, i32* %3, align 4
  %170 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %171 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %174 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @bus_teardown_intr(i32 %169, i32* %172, i32* %175)
  br label %177

177:                                              ; preds = %168, %163
  %178 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %179 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @SYS_RES_IRQ, align 4
  %185 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %186 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @bus_release_resource(i32 %183, i32 %184, i32 0, i32* %187)
  br label %189

189:                                              ; preds = %182, %177
  %190 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %191 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @SYS_RES_MEMORY, align 4
  %197 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %198 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @bus_release_resource(i32 %195, i32 %196, i32 0, i32* %199)
  br label %201

201:                                              ; preds = %194, %189
  %202 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %7, align 8
  %203 = call i32 @LOCK_DESTROY(%struct.tegra_i2c_softc* %202)
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %201, %160, %69
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.tegra_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @LOCK_INIT(%struct.tegra_i2c_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_get_freq(i32, i64*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @tegra_i2c_hw_init(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.tegra_i2c_softc*, i32**) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.tegra_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
