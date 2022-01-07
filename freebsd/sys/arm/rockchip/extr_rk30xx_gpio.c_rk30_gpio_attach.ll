; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i32, i32, i32, i8*, i8*, i32*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@rk30_gpio_sc = common dso_local global %struct.rk30_gpio_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rk30 gpio\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@rk30_gpio_base_addr = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"unsupported device unit (only GPIO0..3 are supported)\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@RK30_GPIO_PINS = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"pin %d\00", align 1
@RK30_GPIO_DEFAULT_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk30_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk30_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk30_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.rk30_gpio_softc* @device_get_softc(i32 %9)
  store %struct.rk30_gpio_softc* %10, %struct.rk30_gpio_softc** %4, align 8
  %11 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** @rk30_gpio_sc, align 8
  %12 = icmp ne %struct.rk30_gpio_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %198

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %19, i32 0, i32 2
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 0, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i8* @bus_alloc_resource_any(i32 %23, i32 %24, i32* %6, i32 %25)
  %27 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %28 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %169

36:                                               ; preds = %15
  %37 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %38 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @rman_get_bustag(i8* %39)
  %41 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %42 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %44 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @rman_get_bushandle(i8* %45)
  %47 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %48 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %50 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @rman_get_start(i8* %53)
  store i64 %54, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %73, %36
  %56 = load i32, i32* %5, align 4
  %57 = load i64*, i64** @rk30_gpio_base_addr, align 8
  %58 = call i32 @nitems(i64* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i64*, i64** @rk30_gpio_base_addr, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %71 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %76

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %55

76:                                               ; preds = %68, %55
  %77 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %78 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %169

84:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SYS_RES_IRQ, align 4
  %87 = load i32, i32* @RF_ACTIVE, align 4
  %88 = call i8* @bus_alloc_resource_any(i32 %85, i32 %86, i32* %6, i32 %87)
  %89 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %90 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %92 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %169

98:                                               ; preds = %84
  %99 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %100 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ofw_bus_get_node(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @OF_hasprop(i32 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %169

107:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %150, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @RK30_GPIO_PINS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %108
  %113 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %114 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @GPIOMAXNAME, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @snprintf(i32 %120, i32 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %126 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %125, i32 0, i32 6
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* @RK30_GPIO_DEFAULT_CAPS, align 4
  %133 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %134 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %133, i32 0, i32 6
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  store i32 %132, i32* %139, align 4
  %140 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @rk30_gpio_get_function(%struct.rk30_gpio_softc* %140, i32 %141)
  %143 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %144 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %143, i32 0, i32 6
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 %142, i32* %149, align 4
  br label %150

150:                                              ; preds = %112
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %108

153:                                              ; preds = %108
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %156 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  store %struct.rk30_gpio_softc* %157, %struct.rk30_gpio_softc** @rk30_gpio_sc, align 8
  %158 = call i32 (...) @rk30_gpio_init()
  %159 = load i32, i32* %3, align 4
  %160 = call i32* @gpiobus_attach_bus(i32 %159)
  %161 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %162 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %161, i32 0, i32 5
  store i32* %160, i32** %162, align 8
  %163 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %164 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  br label %169

168:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %198

169:                                              ; preds = %167, %106, %95, %81, %33
  %170 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %171 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @SYS_RES_IRQ, align 4
  %177 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %178 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @bus_release_resource(i32 %175, i32 %176, i32 0, i8* %179)
  br label %181

181:                                              ; preds = %174, %169
  %182 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %183 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @SYS_RES_MEMORY, align 4
  %189 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %190 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @bus_release_resource(i32 %187, i32 %188, i32 0, i8* %191)
  br label %193

193:                                              ; preds = %186, %181
  %194 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %195 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %194, i32 0, i32 2
  %196 = call i32 @mtx_destroy(i32* %195)
  %197 = load i32, i32* @ENXIO, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %193, %168, %13
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.rk30_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i64 @rman_get_start(i8*) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @rk30_gpio_get_function(%struct.rk30_gpio_softc*, i32) #1

declare dso_local i32 @rk30_gpio_init(...) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
