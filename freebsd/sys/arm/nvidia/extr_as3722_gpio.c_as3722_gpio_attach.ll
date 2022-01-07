; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32, %struct.as3722_gpio_pin**, i32, i32*, i32 }
%struct.as3722_gpio_pin = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"AS3722 GPIO lock\00", align 1
@NGPIO = common dso_local global i32 0, align 4
@M_AS3722_GPIO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"gpio%d\00", align 1
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i32 0, align 4
@GPIO_PIN_PUSHPULL = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@GPIO_PIN_INVIN = common dso_local global i32 0, align 4
@GPIO_PIN_INVOUT = common dso_local global i32 0, align 4
@AS3722_GPIO0_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot read configuration for pin %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_attach(%struct.as3722_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.as3722_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3722_gpio_pin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %10 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %9, i32 0, i32 4
  %11 = call i32 @sx_init(i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @NGPIO, align 4
  %13 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %14 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %16 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_AS3722_GPIO, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @malloc(i32 %20, i32 %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.as3722_gpio_pin**
  %27 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %28 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %27, i32 0, i32 1
  store %struct.as3722_gpio_pin** %26, %struct.as3722_gpio_pin*** %28, align 8
  %29 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %30 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @gpiobus_attach_bus(i32 %31)
  %33 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %34 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %36 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %3, align 4
  br label %121

41:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %117, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %45 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %120

48:                                               ; preds = %42
  %49 = load i32, i32* @M_AS3722_GPIO, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @malloc(i32 12, i32 %49, i32 %52)
  %54 = bitcast i8* %53 to %struct.as3722_gpio_pin*
  %55 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %56 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %55, i32 0, i32 1
  %57 = load %struct.as3722_gpio_pin**, %struct.as3722_gpio_pin*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %57, i64 %59
  store %struct.as3722_gpio_pin* %54, %struct.as3722_gpio_pin** %60, align 8
  %61 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %62 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %61, i32 0, i32 1
  %63 = load %struct.as3722_gpio_pin**, %struct.as3722_gpio_pin*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %63, i64 %65
  %67 = load %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %66, align 8
  store %struct.as3722_gpio_pin* %67, %struct.as3722_gpio_pin** %6, align 8
  %68 = load %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %6, align 8
  %69 = getelementptr inbounds %struct.as3722_gpio_pin, %struct.as3722_gpio_pin* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @sprintf(i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %74 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GPIO_PIN_OPENDRAIN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @GPIO_PIN_PUSHPULL, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @GPIO_PIN_TRISTATE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %6, align 8
  %91 = getelementptr inbounds %struct.as3722_gpio_pin, %struct.as3722_gpio_pin* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %93 = load i64, i64* @AS3722_GPIO0_CONTROL, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %6, align 8
  %98 = getelementptr inbounds %struct.as3722_gpio_pin, %struct.as3722_gpio_pin* %97, i32 0, i32 2
  %99 = call i32 @RD1(%struct.as3722_softc* %92, i64 %96, i32* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %48
  %103 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %104 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %107 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %106, i32 0, i32 1
  %108 = load %struct.as3722_gpio_pin**, %struct.as3722_gpio_pin*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %108, i64 %110
  %112 = load %struct.as3722_gpio_pin*, %struct.as3722_gpio_pin** %111, align 8
  %113 = getelementptr inbounds %struct.as3722_gpio_pin, %struct.as3722_gpio_pin* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %102, %48
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %42

120:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %39
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @RD1(%struct.as3722_softc*, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
