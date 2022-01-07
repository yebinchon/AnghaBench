; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_aintc.c_ti_aintc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_aintc.c_ti_aintc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_aintc_softc = type { i32*, i32, i32, i32 }

@ti_aintc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTC_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Revision %u.%u\0A\00", align 1
@INTC_SYSCONFIG = common dso_local global i32 0, align 4
@INTC_SYSSTATUS = common dso_local global i32 0, align 4
@INTC_THRESHOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"could not attach PIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_aintc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_aintc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_aintc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ti_aintc_softc* @device_get_softc(i32 %6)
  store %struct.ti_aintc_softc* %7, %struct.ti_aintc_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ti_aintc_spec, align 4
  %13 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rman_get_bustag(i32 %27)
  %29 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_bushandle(i32 %35)
  %37 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %40 = load i32, i32* @INTC_REVISION, align 4
  %41 = call i32 @aintc_read_4(%struct.ti_aintc_softc* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 15
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 15
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47)
  %49 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %50 = load i32, i32* @INTC_SYSCONFIG, align 4
  %51 = call i32 @aintc_write_4(%struct.ti_aintc_softc* %49, i32 %50, i32 2)
  br label %52

52:                                               ; preds = %59, %22
  %53 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %54 = load i32, i32* @INTC_SYSSTATUS, align 4
  %55 = call i32 @aintc_read_4(%struct.ti_aintc_softc* %53, i32 %54)
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %52

60:                                               ; preds = %52
  %61 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %62 = load i32, i32* @INTC_THRESHOLD, align 4
  %63 = call i32 @aintc_write_4(%struct.ti_aintc_softc* %61, i32 %62, i32 255)
  %64 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %4, align 8
  %65 = call i64 @ti_aintc_pic_attach(%struct.ti_aintc_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %67, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ti_aintc_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @aintc_read_4(%struct.ti_aintc_softc*, i32) #1

declare dso_local i32 @aintc_write_4(%struct.ti_aintc_softc*, i32, i32) #1

declare dso_local i64 @ti_aintc_pic_attach(%struct.ti_aintc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
