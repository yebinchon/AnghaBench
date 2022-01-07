; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_clock.c_mv_cp110_clock_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_clock.c_mv_cp110_clock_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.mv_cp110_clock_softc = type { i32, i32*, i32 }
%struct.clkdom = type { i32 }
%struct.clk_gate_def = type { i32, i32, %struct.TYPE_11__, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i8**, i8*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"cannot get syscon for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Bogus cp110-system-controller unit %d\0A\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@cp110_ofw_map = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cp110-pll0\00", align 1
@cp110_clk_pll_0 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"cp110-ppv2\00", align 1
@cp110_clk_ppv2_core = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@clk_parents_0 = common dso_local global i8* null, align 8
@clk_parents_1 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"cp110-x2core\00", align 1
@cp110_clk_x2core = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"cp110-core\00", align 1
@cp110_clk_core = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@core_parents_0 = common dso_local global i8* null, align 8
@core_parents_1 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"cp110-sdio\00", align 1
@cp110_clk_sdio = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cp110_gates = common dso_local global %struct.TYPE_13__* null, align 8
@CP110_MAX_CLOCK = common dso_local global i64 0, align 8
@CP110_CLOCK_GATING_OFFSET = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_cp110_clock_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cp110_clock_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_cp110_clock_softc*, align 8
  %5 = alloca %struct.clkdom*, align 8
  %6 = alloca %struct.clk_gate_def, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mv_cp110_clock_softc* @device_get_softc(i32 %10)
  store %struct.mv_cp110_clock_softc* %11, %struct.mv_cp110_clock_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mv_cp110_clock_softc*, %struct.mv_cp110_clock_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mv_cp110_clock_softc, %struct.mv_cp110_clock_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mv_cp110_clock_softc*, %struct.mv_cp110_clock_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mv_cp110_clock_softc, %struct.mv_cp110_clock_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mv_cp110_clock_softc*, %struct.mv_cp110_clock_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mv_cp110_clock_softc, %struct.mv_cp110_clock_softc* %18, i32 0, i32 1
  %20 = call i64 @SYSCON_GET_HANDLE(i32 %17, i32** %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.mv_cp110_clock_softc*, %struct.mv_cp110_clock_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mv_cp110_clock_softc, %struct.mv_cp110_clock_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %180

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_unit(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %180

41:                                               ; preds = %31
  %42 = load %struct.mv_cp110_clock_softc*, %struct.mv_cp110_clock_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mv_cp110_clock_softc, %struct.mv_cp110_clock_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_get_nameunit(i32 %44)
  %46 = load i32, i32* @MTX_DEF, align 4
  %47 = call i32 @mtx_init(i32* %43, i32 %45, i32* null, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call %struct.clkdom* @clkdom_create(i32 %48)
  store %struct.clkdom* %49, %struct.clkdom** %5, align 8
  %50 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %51 = load i32, i32* @cp110_ofw_map, align 4
  %52 = call i32 @clkdom_set_ofw_mapper(%struct.clkdom* %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i8* @mv_cp110_clock_name(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_pll_0, i32 0, i32 0, i32 0), align 8
  %56 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %57 = call i32 @clknode_fixed_register(%struct.clkdom* %56, %struct.TYPE_14__* @cp110_clk_pll_0)
  %58 = load i32, i32* %3, align 4
  %59 = call i8* @mv_cp110_clock_name(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_ppv2_core, i32 0, i32 0, i32 0), align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i8*, i8** @clk_parents_0, align 8
  br label %66

64:                                               ; preds = %41
  %65 = load i8*, i8** @clk_parents_1, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_ppv2_core, i32 0, i32 0, i32 1), align 8
  %68 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %69 = call i32 @clknode_fixed_register(%struct.clkdom* %68, %struct.TYPE_14__* @cp110_clk_ppv2_core)
  %70 = load i32, i32* %3, align 4
  %71 = call i8* @mv_cp110_clock_name(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %71, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_x2core, i32 0, i32 0, i32 0), align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i8*, i8** @clk_parents_0, align 8
  br label %78

76:                                               ; preds = %66
  %77 = load i8*, i8** @clk_parents_1, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ]
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_x2core, i32 0, i32 0, i32 1), align 8
  %80 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %81 = call i32 @clknode_fixed_register(%struct.clkdom* %80, %struct.TYPE_14__* @cp110_clk_x2core)
  %82 = load i32, i32* %3, align 4
  %83 = call i8* @mv_cp110_clock_name(i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_core, i32 0, i32 0, i32 0), align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i8*, i8** @core_parents_0, align 8
  br label %90

88:                                               ; preds = %78
  %89 = load i8*, i8** @core_parents_1, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i8* [ %87, %86 ], [ %89, %88 ]
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_core, i32 0, i32 0, i32 1), align 8
  %92 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %93 = call i32 @clknode_fixed_register(%struct.clkdom* %92, %struct.TYPE_14__* @cp110_clk_core)
  %94 = load i32, i32* %3, align 4
  %95 = call i8* @mv_cp110_clock_name(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_sdio, i32 0, i32 0, i32 0), align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i8*, i8** @clk_parents_0, align 8
  br label %102

100:                                              ; preds = %90
  %101 = load i8*, i8** @clk_parents_1, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  store i8* %103, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_sdio, i32 0, i32 0, i32 1), align 8
  %104 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %105 = call i32 @clknode_fixed_register(%struct.clkdom* %104, %struct.TYPE_14__* @cp110_clk_sdio)
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %168, %102
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cp110_gates, align 8
  %109 = call i32 @nitems(%struct.TYPE_13__* %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %171

111:                                              ; preds = %106
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cp110_gates, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %168

120:                                              ; preds = %111
  %121 = call i32 @memset(%struct.clk_gate_def* %6, i32 0, i32 56)
  %122 = load i64, i64* @CP110_MAX_CLOCK, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cp110_gates, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @mv_cp110_clock_name(i32 %128, i8* %134)
  %136 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32, i32* @CP110_CLOCK_GATING_OFFSET, align 4
  %141 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 5
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cp110_gates, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 4
  store i32 %147, i32* %148, align 8
  %149 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 1
  store i32 1, i32* %150, align 4
  %151 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %9, align 4
  switch i32 %152, label %162 [
    i32 132, label %153
    i32 134, label %153
    i32 129, label %153
    i32 128, label %156
    i32 133, label %159
    i32 130, label %159
    i32 131, label %159
    i32 136, label %159
    i32 135, label %159
  ]

153:                                              ; preds = %120, %120, %120
  %154 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_ppv2_core, i32 0, i32 0, i32 0), i8*** %155, align 8
  br label %165

156:                                              ; preds = %120
  %157 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_sdio, i32 0, i32 0, i32 0), i8*** %158, align 8
  br label %165

159:                                              ; preds = %120, %120, %120, %120, %120
  %160 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_x2core, i32 0, i32 0, i32 0), i8*** %161, align 8
  br label %165

162:                                              ; preds = %120
  %163 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %6, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cp110_clk_core, i32 0, i32 0, i32 0), i8*** %164, align 8
  br label %165

165:                                              ; preds = %162, %159, %156, %153
  %166 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %167 = call i32 @clknode_gate_register(%struct.clkdom* %166, %struct.clk_gate_def* %6)
  br label %168

168:                                              ; preds = %165, %119
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %106

171:                                              ; preds = %106
  %172 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %173 = call i32 @clkdom_finit(%struct.clkdom* %172)
  %174 = load i64, i64* @bootverbose, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %178 = call i32 @clkdom_dump(%struct.clkdom* %177)
  br label %179

179:                                              ; preds = %176, %171
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %36, %27
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.mv_cp110_clock_softc* @device_get_softc(i32) #1

declare dso_local i64 @SYSCON_GET_HANDLE(i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.clkdom* @clkdom_create(i32) #1

declare dso_local i32 @clkdom_set_ofw_mapper(%struct.clkdom*, i32) #1

declare dso_local i8* @mv_cp110_clock_name(i32, i8*) #1

declare dso_local i32 @clknode_fixed_register(%struct.clkdom*, %struct.TYPE_14__*) #1

declare dso_local i32 @nitems(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.clk_gate_def*, i32, i32) #1

declare dso_local i32 @clknode_gate_register(%struct.clkdom*, %struct.clk_gate_def*) #1

declare dso_local i32 @clkdom_finit(%struct.clkdom*) #1

declare dso_local i32 @clkdom_dump(%struct.clkdom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
