; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i32, i32, i32, i32, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NXP TDA19988 HDMI transmitter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tda19988_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tda19988_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tda19988_softc* @device_get_softc(i32 %5)
  store %struct.tda19988_softc* %6, %struct.tda19988_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @iicbus_get_addr(i32 %10)
  %12 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %13 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %14, i32 0, i32 0
  store i32 104, i32* %15, align 4
  %16 = load i32, i32* @EDID_LENGTH, align 4
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @malloc(i32 %16, i32 %17, i32 %20)
  %22 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @EDID_LENGTH, align 4
  %25 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_set_desc(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @ofw_bus_get_node(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @OF_xref_from_node(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @OF_device_register_xref(i32 %32, i32 %33)
  %35 = load %struct.tda19988_softc*, %struct.tda19988_softc** %3, align 8
  %36 = call i32 @tda19988_start(%struct.tda19988_softc* %35)
  ret i32 0
}

declare dso_local %struct.tda19988_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @tda19988_start(%struct.tda19988_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
