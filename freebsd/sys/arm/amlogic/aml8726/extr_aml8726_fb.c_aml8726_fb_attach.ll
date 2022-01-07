; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_fb.c_aml8726_fb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_fb.c_aml8726_fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_fb_softc = type { %struct.TYPE_2__, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"missing width attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"width attribute in FDT must be a multiple of 8\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"missing height attribute in FDT\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"missing depth attribute in FDT\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"depth attribute in FDT is an unsupported value\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"linebytes\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"missing linebytes attribute in FDT\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"linebytes attribute in FDT must be a multiple of 8\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"linebytes attribute in FDT is too small\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"missing address attribute in FDT\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"address attribute in FDT must be a multiple of 8\0A\00", align 1
@aml8726_fb_spec = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aml8726_fb_intr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"could not setup interrupt handler\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"could not add fbd\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"could not attach fbd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_fb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_fb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_fb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.aml8726_fb_softc* @device_get_softc(i32 %9)
  store %struct.aml8726_fb_softc* %10, %struct.aml8726_fb_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_get_nameunit(i32 %16)
  %18 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @OF_getencprop(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %257

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %257

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32 4)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %257

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %53 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @OF_getencprop(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32 4)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %257

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 24
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %257

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %72 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %76 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @OF_getencprop(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %7, i32 4)
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %2, align 4
  br label %257

85:                                               ; preds = %69
  %86 = load i32, i32* %7, align 4
  %87 = srem i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %257

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %96 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 3
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %2, align 4
  br label %257

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %108 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @OF_getencprop(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %7, i32 4)
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  br label %257

117:                                              ; preds = %105
  %118 = load i32, i32* %7, align 4
  %119 = srem i32 %118, 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0))
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %2, align 4
  br label %257

125:                                              ; preds = %117
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %128 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 5
  store i32 %126, i32* %129, align 4
  %130 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %131 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %135 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %133, %137
  %139 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %140 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 6
  store i32 %138, i32* %141, align 8
  %142 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %143 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %147 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @pmap_mapdev(i32 %145, i32 %149)
  %151 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %152 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 7
  store i64 %150, i64* %153, align 8
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @aml8726_fb_spec, align 4
  %156 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %157 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call i64 @bus_alloc_resources(i32 %154, i32 %155, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %125
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @device_printf(i32 %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %164 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %165 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %169 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @pmap_unmapdev(i64 %167, i32 %171)
  %173 = load i32, i32* @ENXIO, align 4
  store i32 %173, i32* %2, align 4
  br label %257

174:                                              ; preds = %125
  %175 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %176 = call i32 @aml8726_fb_cfg_output(%struct.aml8726_fb_softc* %175)
  %177 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %178 = call i32 @aml8726_fb_cfg_video(%struct.aml8726_fb_softc* %177)
  %179 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %180 = call i32 @aml8726_fb_cfg_canvas(%struct.aml8726_fb_softc* %179)
  %181 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %182 = call i32 @AML_FB_LOCK_INIT(%struct.aml8726_fb_softc* %181)
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %185 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @INTR_TYPE_MISC, align 4
  %190 = load i32, i32* @INTR_MPSAFE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @aml8726_fb_intr, align 4
  %193 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %194 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %195 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %194, i32 0, i32 2
  %196 = call i32 @bus_setup_intr(i32 %183, i32 %188, i32 %191, i32* null, i32 %192, %struct.aml8726_fb_softc* %193, i64* %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %174
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @device_printf(i32 %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %222

202:                                              ; preds = %174
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @device_get_unit(i32 %204)
  %206 = call i32 @device_add_child(i32 %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @device_printf(i32 %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %212 = load i32, i32* @ENXIO, align 4
  store i32 %212, i32* %5, align 4
  br label %222

213:                                              ; preds = %202
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @device_probe_and_attach(i32 %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @device_printf(i32 %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  br label %222

221:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %257

222:                                              ; preds = %218, %209, %199
  %223 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %224 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = load i32, i32* %3, align 4
  %229 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %230 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %235 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @bus_teardown_intr(i32 %228, i32 %233, i64 %236)
  br label %238

238:                                              ; preds = %227, %222
  %239 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %240 = call i32 @AML_FB_LOCK_DESTROY(%struct.aml8726_fb_softc* %239)
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* @aml8726_fb_spec, align 4
  %243 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %244 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @bus_release_resources(i32 %241, i32 %242, i32* %245)
  %247 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %248 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %4, align 8
  %252 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @pmap_unmapdev(i64 %250, i32 %254)
  %256 = load i32, i32* %5, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %238, %221, %161, %121, %113, %101, %89, %81, %65, %58, %46, %34, %26
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.aml8726_fb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @pmap_unmapdev(i64, i32) #1

declare dso_local i32 @aml8726_fb_cfg_output(%struct.aml8726_fb_softc*) #1

declare dso_local i32 @aml8726_fb_cfg_video(%struct.aml8726_fb_softc*) #1

declare dso_local i32 @aml8726_fb_cfg_canvas(%struct.aml8726_fb_softc*) #1

declare dso_local i32 @AML_FB_LOCK_INIT(%struct.aml8726_fb_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.aml8726_fb_softc*, i64*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @AML_FB_LOCK_DESTROY(%struct.aml8726_fb_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
