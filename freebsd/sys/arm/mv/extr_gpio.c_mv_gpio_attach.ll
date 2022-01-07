; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i32, i32*, i32*, i32, i32*, i32, i32, i32, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pin-count\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@MV_GPIO_MAX_NPINS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%d pins available\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"ERROR: no pin-count or ngpios entry found!\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@GPIO_GENERIC_CAP = common dso_local global i32 0, align 4
@MTX_SPIN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"could not allocate memory window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_gpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @device_get_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %11, %struct.mv_gpio_softc** %6, align 8
  %12 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %13 = icmp eq %struct.mv_gpio_softc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %158

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %21 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %8, i32 8)
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32 8)
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25, %16
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @MV_GPIO_MAX_NPINS, align 4
  %32 = call i32 @MIN(i64 %30, i32 %31)
  %33 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %34 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %40 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  br label %48

44:                                               ; preds = %25
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %158

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %51 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %50, i32 0, i32 10
  %52 = call i32 @OF_getencprop(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64* %51, i32 8)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %56 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %55, i32 0, i32 10
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %48
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %61 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load i32, i32* @GPIO_GENERIC_CAP, align 4
  %66 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %67 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %66, i32 0, i32 9
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %78 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @device_get_nameunit(i32 %79)
  %81 = load i32, i32* @MTX_SPIN, align 4
  %82 = call i32 @mtx_init(i32* %78, i32 %80, i32* null, i32 %81)
  %83 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %84 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SYS_RES_MEMORY, align 4
  %87 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %88 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %87, i32 0, i32 8
  %89 = load i32, i32* @RF_ACTIVE, align 4
  %90 = load i32, i32* @RF_SHAREABLE, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @bus_alloc_resource_any(i32 %85, i32 %86, i64* %88, i32 %91)
  %93 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %94 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %96 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %76
  %100 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %101 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %100, i32 0, i32 3
  %102 = call i32 @mtx_destroy(i32* %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %2, align 4
  br label %158

106:                                              ; preds = %76
  %107 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %108 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @rman_get_bustag(i32 %109)
  %111 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %112 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 8
  %113 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %114 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @rman_get_bushandle(i32 %115)
  %117 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %118 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @mv_gpio_setup_interrupts(%struct.mv_gpio_softc* %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %106
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %158

126:                                              ; preds = %106
  %127 = load i32, i32* %3, align 4
  %128 = call i32* @gpiobus_attach_bus(i32 %127)
  %129 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %130 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  %131 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %132 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %157

135:                                              ; preds = %126
  %136 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %137 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %136, i32 0, i32 3
  %138 = call i32 @mtx_destroy(i32* %137)
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @SYS_RES_IRQ, align 4
  %141 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %142 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %149 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @bus_release_resource(i32 %139, i32 %140, i32 %147, i32 %154)
  %156 = load i32, i32* @ENXIO, align 4
  store i32 %156, i32* %2, align 4
  br label %158

157:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %135, %124, %99, %44, %14
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @mv_gpio_setup_interrupts(%struct.mv_gpio_softc*, i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
