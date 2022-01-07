; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32*, i32*, i32, i8*, i64, i64, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error: could not allocate mem resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: could not allocate irq resources\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_gpio_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"WARNING: unable to register interrupt filter\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"WARNING: unable to attach PIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_gpio_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ti_gpio_softc* @device_get_softc(i32 %6)
  store %struct.ti_gpio_softc* %7, %struct.ti_gpio_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %12 = call i32 @TI_GPIO_LOCK_INIT(%struct.ti_gpio_softc* %11)
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %14, i32 0, i32 6
  %16 = call i32 @ti_gpio_pin_max(i32 %13, i32* %15)
  %17 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %25, i32 0, i32 5
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i8* @bus_alloc_resource_any(i32 %23, i32 %24, i64* %26, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ti_gpio_detach(i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %122

42:                                               ; preds = %1
  %43 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_IRQ, align 4
  %47 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %47, i32 0, i32 4
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = call i8* @bus_alloc_resource_any(i32 %45, i32 %46, i64* %48, i32 %49)
  %51 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @ti_gpio_detach(i32 %60)
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %122

63:                                               ; preds = %42
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @INTR_TYPE_MISC, align 4
  %69 = load i32, i32* @INTR_MPSAFE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ti_gpio_intr, align 4
  %72 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %73 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %73, i32 0, i32 2
  %75 = call i64 @bus_setup_intr(i32 %64, i8* %67, i32 %70, i32 %71, i32* null, %struct.ti_gpio_softc* %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ti_gpio_detach(i32 %80)
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %2, align 4
  br label %122

83:                                               ; preds = %63
  %84 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %85 = call i64 @ti_gpio_pic_attach(%struct.ti_gpio_softc* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @ti_gpio_detach(i32 %90)
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %122

93:                                               ; preds = %83
  %94 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @ti_gpio_bank_init(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @ti_gpio_detach(i32 %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %122

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %93
  %109 = load i32, i32* %3, align 4
  %110 = call i32* @gpiobus_attach_bus(i32 %109)
  %111 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %111, i32 0, i32 0
  store i32* %110, i32** %112, align 8
  %113 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @ti_gpio_detach(i32 %118)
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %117, %103, %87, %77, %57, %36
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @TI_GPIO_LOCK_INIT(%struct.ti_gpio_softc*) #1

declare dso_local i32 @ti_gpio_pin_max(i32, i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ti_gpio_detach(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32, i32*, %struct.ti_gpio_softc*, i32*) #1

declare dso_local i64 @ti_gpio_pic_attach(%struct.ti_gpio_softc*) #1

declare dso_local i32 @ti_gpio_bank_init(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
