; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32, i8*, i64, i8*, i64, i32 }

@have_ipu = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to reset IPU\0A\00", align 1
@hdmi_event = common dso_local global i32 0, align 4
@ipu_hdmi_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @have_ipu, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %2, align 4
  br label %78

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ipu_softc* @device_get_softc(i32 %10)
  store %struct.ipu_softc* %11, %struct.ipu_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %19, i32 0, i32 2
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i64* %20, i32 %21)
  %23 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %78

33:                                               ; preds = %9
  %34 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %38, i32 0, i32 4
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i64* %39, i32 %40)
  %42 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @bus_release_resource(i32 %49, i32 %50, i64 %53, i8* %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %78

61:                                               ; preds = %33
  %62 = call i32 @imx_ccm_ipu_enable(i32 1)
  %63 = call i64 (...) @src_reset_ipu()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %78

69:                                               ; preds = %61
  %70 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %71 = call i32 @IPU_LOCK_INIT(%struct.ipu_softc* %70)
  %72 = load i32, i32* @hdmi_event, align 4
  %73 = load i32, i32* @ipu_hdmi_event, align 4
  %74 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %75 = call i32 @EVENTHANDLER_REGISTER(i32 %72, i32 %73, %struct.ipu_softc* %74, i32 0)
  %76 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 1, i32* @have_ipu, align 4
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %69, %65, %48, %29, %7
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ipu_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i8*) #1

declare dso_local i32 @imx_ccm_ipu_enable(i32) #1

declare dso_local i64 @src_reset_ipu(...) #1

declare dso_local i32 @IPU_LOCK_INIT(%struct.ipu_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.ipu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
