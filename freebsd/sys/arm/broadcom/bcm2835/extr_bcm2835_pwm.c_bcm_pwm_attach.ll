; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_pwm.c_bcm_pwm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_pwm.c_bcm_pwm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_pwm_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"only one PWM controller supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bcm2835_clkman\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot find Clock Manager\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_pwm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_pwm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_pwm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_unit(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_printf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %73

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.bcm_pwm_softc* @device_get_softc(i32 %14)
  store %struct.bcm_pwm_softc* %15, %struct.bcm_pwm_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 8
  %19 = call i32 @devclass_find(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32* @devclass_get_device(i32 %19, i32 0)
  %21 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %21, i32 0, i32 8
  store i32* %20, i32** %22, align 8
  %23 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %73

31:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i32 @bus_alloc_resource_any(i32 %32, i32 %33, i32* %5, i32 %34)
  %36 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %73

46:                                               ; preds = %31
  %47 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rman_get_bustag(i32 %49)
  %51 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %54 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rman_get_bushandle(i32 %55)
  %57 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %58 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %60 = call i32 @bcm_pwm_sysctl_init(%struct.bcm_pwm_softc* %59)
  %61 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %61, i32 0, i32 0
  store i32 125000000, i32* %62, align 8
  %63 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %63, i32 0, i32 1
  store i32 10000, i32* %64, align 4
  %65 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %66 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %65, i32 0, i32 2
  store i32 2500, i32* %66, align 8
  %67 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %67, i32 0, i32 3
  store i32 10000, i32* %68, align 4
  %69 = load %struct.bcm_pwm_softc*, %struct.bcm_pwm_softc** %4, align 8
  %70 = getelementptr inbounds %struct.bcm_pwm_softc, %struct.bcm_pwm_softc* %69, i32 0, i32 4
  store i32 2500, i32* %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @bus_generic_attach(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %46, %42, %27, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.bcm_pwm_softc* @device_get_softc(i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bcm_pwm_sysctl_init(%struct.bcm_pwm_softc*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
