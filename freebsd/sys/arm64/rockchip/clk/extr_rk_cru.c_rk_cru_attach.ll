; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_cru.c_rk_cru_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_cru.c_rk_cru_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_cru_softc = type { i32, i32*, i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@rk_cru_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot create clkdom\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown clock type\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot finalize clkdom initialization\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rk_cru_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_cru_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.rk_cru_softc* @device_get_softc(i32 %7)
  store %struct.rk_cru_softc* %8, %struct.rk_cru_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %11 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @rk_cru_spec, align 4
  %16 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %17 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %16, i32 0, i32 5
  %18 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %208

24:                                               ; preds = %1
  %25 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %26 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %25, i32 0, i32 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %26, i32 %28, i32* null, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32* @clkdom_create(i32 %31)
  %33 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %34 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %36 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %24
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %175, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %45 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %178

48:                                               ; preds = %42
  %49 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %170 [
    i32 128, label %57
    i32 136, label %58
    i32 135, label %72
    i32 133, label %86
    i32 129, label %100
    i32 134, label %114
    i32 132, label %128
    i32 131, label %142
    i32 130, label %156
  ]

57:                                               ; preds = %48
  br label %174

58:                                               ; preds = %48
  %59 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %63 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rk3328_clk_pll_register(i32* %61, i32 %70)
  br label %174

72:                                               ; preds = %48
  %73 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %74 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %77 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rk3399_clk_pll_register(i32* %75, i32 %84)
  br label %174

86:                                               ; preds = %48
  %87 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %88 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %91 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rk_clk_composite_register(i32* %89, i32 %98)
  br label %174

100:                                              ; preds = %48
  %101 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %102 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %105 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rk_clk_mux_register(i32* %103, i32 %112)
  br label %174

114:                                              ; preds = %48
  %115 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %116 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %119 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %118, i32 0, i32 3
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @rk_clk_armclk_register(i32* %117, i32 %126)
  br label %174

128:                                              ; preds = %48
  %129 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %130 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %133 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @clknode_fixed_register(i32* %131, i32 %140)
  br label %174

142:                                              ; preds = %48
  %143 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %144 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %147 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @rk_clk_fract_register(i32* %145, i32 %154)
  br label %174

156:                                              ; preds = %48
  %157 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %158 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %161 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %160, i32 0, i32 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @clknode_link_register(i32* %159, i32 %168)
  br label %174

170:                                              ; preds = %48
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @device_printf(i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @ENXIO, align 4
  store i32 %173, i32* %2, align 4
  br label %208

174:                                              ; preds = %156, %142, %128, %114, %100, %86, %72, %58, %57
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %42

178:                                              ; preds = %42
  %179 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %180 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %185 = call i32 @rk_cru_register_gates(%struct.rk_cru_softc* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %188 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = call i64 @clkdom_finit(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %186
  %195 = load i64, i64* @bootverbose, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %4, align 8
  %199 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @clkdom_dump(i32* %200)
  br label %202

202:                                              ; preds = %197, %194
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @clk_set_assigned(i32 %203, i32 %204)
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @hwreset_register_ofw_provider(i32 %206)
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %202, %170, %20
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.rk_cru_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @clkdom_create(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @rk3328_clk_pll_register(i32*, i32) #1

declare dso_local i32 @rk3399_clk_pll_register(i32*, i32) #1

declare dso_local i32 @rk_clk_composite_register(i32*, i32) #1

declare dso_local i32 @rk_clk_mux_register(i32*, i32) #1

declare dso_local i32 @rk_clk_armclk_register(i32*, i32) #1

declare dso_local i32 @clknode_fixed_register(i32*, i32) #1

declare dso_local i32 @rk_clk_fract_register(i32*, i32) #1

declare dso_local i32 @clknode_link_register(i32*, i32) #1

declare dso_local i32 @rk_cru_register_gates(%struct.rk_cru_softc*) #1

declare dso_local i64 @clkdom_finit(i32*) #1

declare dso_local i32 @clkdom_dump(i32*) #1

declare dso_local i32 @clk_set_assigned(i32, i32) #1

declare dso_local i32 @hwreset_register_ofw_provider(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
