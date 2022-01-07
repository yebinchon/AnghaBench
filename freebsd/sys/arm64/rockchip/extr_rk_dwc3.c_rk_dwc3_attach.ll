; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_dwc3.c_rk_dwc3_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_dwc3.c_rk_dwc3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_dwc3_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot get ref_clk clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not enable clock %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"suspend_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot get suspend_clk clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot get bus_clk clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"grf_clk\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Cannot get grf_clk clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"aclk_usb3_rksoc_axi_perf\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"aclk_usb3\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"usb3-otg\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Cannot deassert reset\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rk_dwc3_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_dwc3_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rk_dwc3_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.rk_dwc3_softc* @device_get_softc(i32* %9)
  store %struct.rk_dwc3_softc* %10, %struct.rk_dwc3_softc** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %13 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %12, i32 0, i32 8
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ofw_bus_get_node(i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %18 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %17, i32 0, i32 7
  %19 = call i64 @clk_get_by_ofw_name(i32* %16, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @device_printf(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %212

25:                                               ; preds = %1
  %26 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_enable(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %35 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_get_name(i32 %36)
  %38 = call i32 (i32*, i8*, ...) @device_printf(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %212

40:                                               ; preds = %25
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %43 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %42, i32 0, i32 6
  %44 = call i64 @clk_get_by_ofw_name(i32* %41, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 (i32*, i8*, ...) @device_printf(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %212

50:                                               ; preds = %40
  %51 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %52 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_enable(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_get_name(i32 %61)
  %63 = call i32 (i32*, i8*, ...) @device_printf(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %212

65:                                               ; preds = %50
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %68 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %67, i32 0, i32 5
  %69 = call i64 @clk_get_by_ofw_name(i32* %66, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 (i32*, i8*, ...) @device_printf(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %212

75:                                               ; preds = %65
  %76 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %77 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clk_enable(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %85 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clk_get_name(i32 %86)
  %88 = call i32 (i32*, i8*, ...) @device_printf(i32* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %212

90:                                               ; preds = %75
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %93 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %92, i32 0, i32 4
  %94 = call i64 @clk_get_by_ofw_name(i32* %91, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 (i32*, i8*, ...) @device_printf(i32* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %2, align 4
  br label %212

100:                                              ; preds = %90
  %101 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %102 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @clk_enable(i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %110 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_get_name(i32 %111)
  %113 = call i32 (i32*, i8*, ...) @device_printf(i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %212

115:                                              ; preds = %100
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %118 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %117, i32 0, i32 3
  %119 = call i64 @clk_get_by_ofw_name(i32* %116, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %123 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @clk_enable(i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %131 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @clk_get_name(i32 %132)
  %134 = call i32 (i32*, i8*, ...) @device_printf(i32* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ENXIO, align 4
  store i32 %135, i32* %2, align 4
  br label %212

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %115
  %138 = load i32*, i32** %3, align 8
  %139 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %140 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %139, i32 0, i32 2
  %141 = call i64 @clk_get_by_ofw_name(i32* %138, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %137
  %144 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %145 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_enable(i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load i32*, i32** %3, align 8
  %152 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %153 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @clk_get_name(i32 %154)
  %156 = call i32 (i32*, i8*, ...) @device_printf(i32* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @ENXIO, align 4
  store i32 %157, i32* %2, align 4
  br label %212

158:                                              ; preds = %143
  br label %159

159:                                              ; preds = %158, %137
  %160 = load i32*, i32** %3, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %163 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %162, i32 0, i32 1
  %164 = call i64 @hwreset_get_by_ofw_name(i32* %160, i64 %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %168 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @hwreset_deassert(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 (i32*, i8*, ...) @device_printf(i32* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %2, align 4
  br label %212

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %159
  %178 = load i32*, i32** %3, align 8
  %179 = load i64, i64* %6, align 8
  %180 = call i32 @simplebus_init(i32* %178, i64 %179)
  %181 = load i64, i64* %6, align 8
  %182 = load %struct.rk_dwc3_softc*, %struct.rk_dwc3_softc** %4, align 8
  %183 = getelementptr inbounds %struct.rk_dwc3_softc, %struct.rk_dwc3_softc* %182, i32 0, i32 0
  %184 = call i64 @simplebus_fill_ranges(i64 %181, i32* %183)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 (i32*, i8*, ...) @device_printf(i32* %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %189 = load i32, i32* @ENXIO, align 4
  store i32 %189, i32* %2, align 4
  br label %212

190:                                              ; preds = %177
  %191 = load i64, i64* %6, align 8
  %192 = call i64 @OF_child(i64 %191)
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %206, %190
  %194 = load i64, i64* %7, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load i32*, i32** %3, align 8
  %198 = load i64, i64* %7, align 8
  %199 = call i32* @simplebus_add_device(i32* %197, i64 %198, i32 0, i32* null, i32 -1, i32* null)
  store i32* %199, i32** %5, align 8
  %200 = load i32*, i32** %5, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32*, i32** %5, align 8
  %204 = call i32 @device_probe_and_attach(i32* %203)
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* %7, align 8
  %208 = call i64 @OF_peer(i64 %207)
  store i64 %208, i64* %7, align 8
  br label %193

209:                                              ; preds = %193
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @bus_generic_attach(i32* %210)
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %209, %186, %172, %150, %128, %107, %96, %82, %71, %57, %46, %32, %21
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.rk_dwc3_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @clk_get_by_ofw_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i64 @hwreset_get_by_ofw_name(i32*, i64, i8*, i32*) #1

declare dso_local i64 @hwreset_deassert(i32) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local i64 @simplebus_fill_ranges(i64, i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32* @simplebus_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
