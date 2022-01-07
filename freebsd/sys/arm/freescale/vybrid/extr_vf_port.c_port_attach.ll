; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_port.c_port_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_port.c_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_softc = type { i32*, i32*, i32, i32 }

@port_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@port_sc = common dso_local global %struct.port_softc* null, align 8
@NPORTS = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@port_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: Unable to register interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @port_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.port_softc* @device_get_softc(i32 %6)
  store %struct.port_softc* %7, %struct.port_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @port_spec, align 4
  %10 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %11 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %21 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rman_get_bustag(i32 %24)
  %26 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %27 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %29 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rman_get_bushandle(i32 %32)
  %34 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %35 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  store %struct.port_softc* %36, %struct.port_softc** @port_sc, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %67, %19
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @NPORTS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %44 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @INTR_TYPE_MISC, align 4
  %52 = load i32, i32* @port_intr, align 4
  %53 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %54 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %55 = getelementptr inbounds %struct.port_softc, %struct.port_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i64 @bus_setup_intr(i32 %42, i32 %50, i32 %51, i32 %52, i32* null, %struct.port_softc* %53, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %41
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %37

70:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.port_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.port_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
