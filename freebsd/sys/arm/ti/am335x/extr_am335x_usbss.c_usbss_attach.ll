; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_usbss.c_usbss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_usbss.c_usbss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbss_softc = type { i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error: could not allocate mem resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MUSB0_CLK = common dso_local global i32 0, align 4
@USBSS_SYSCONFIG = common dso_local global i32 0, align 4
@USBSS_SYSCONFIG_SRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"reset timeout.\0A\00", align 1
@USBSS_REVREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"TI AM335X USBSS v%d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usbss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbss_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbss_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.usbss_softc* @device_get_softc(i32 %8)
  store %struct.usbss_softc* %9, %struct.usbss_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load %struct.usbss_softc*, %struct.usbss_softc** %4, align 8
  %13 = getelementptr inbounds %struct.usbss_softc, %struct.usbss_softc* %12, i32 0, i32 1
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %13, i32 %14)
  %16 = load %struct.usbss_softc*, %struct.usbss_softc** %4, align 8
  %17 = getelementptr inbounds %struct.usbss_softc, %struct.usbss_softc* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.usbss_softc*, %struct.usbss_softc** %4, align 8
  %19 = getelementptr inbounds %struct.usbss_softc, %struct.usbss_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %1
  %27 = load i32, i32* @MUSB0_CLK, align 4
  %28 = call i32 @ti_prcm_clk_enable(i32 %27)
  %29 = load %struct.usbss_softc*, %struct.usbss_softc** %4, align 8
  %30 = load i32, i32* @USBSS_SYSCONFIG, align 4
  %31 = load i32, i32* @USBSS_SYSCONFIG_SRESET, align 4
  %32 = call i32 @USBSS_WRITE4(%struct.usbss_softc* %29, i32 %30, i32 %31)
  %33 = call i32 @DELAY(i32 100)
  store i32 10, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %26
  %35 = load %struct.usbss_softc*, %struct.usbss_softc** %4, align 8
  %36 = load i32, i32* @USBSS_SYSCONFIG, align 4
  %37 = call i32 @USBSS_READ4(%struct.usbss_softc* %35, i32 %36)
  %38 = load i32, i32* @USBSS_SYSCONFIG_SRESET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = call i32 @DELAY(i32 100)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %94

50:                                               ; preds = %41
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.usbss_softc*, %struct.usbss_softc** %4, align 8
  %53 = load i32, i32* @USBSS_REVREG, align 4
  %54 = call i32 @USBSS_READ4(%struct.usbss_softc* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 7
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 6
  %61 = and i32 %60, 3
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 63
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ofw_bus_get_node(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @usbss_detach(i32 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %94

73:                                               ; preds = %51
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @simplebus_init(i32 %74, i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @bus_generic_probe(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @OF_child(i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %88, %73
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @simplebus_add_device(i32 %85, i32 %86, i32 0, i32* null, i32 -1, i32* null)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @OF_peer(i32 %89)
  store i32 %90, i32* %7, align 4
  br label %81

91:                                               ; preds = %81
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @bus_generic_attach(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %69, %46, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.usbss_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @USBSS_WRITE4(%struct.usbss_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @USBSS_READ4(%struct.usbss_softc*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @usbss_detach(i32) #1

declare dso_local i32 @simplebus_init(i32, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @simplebus_add_device(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
