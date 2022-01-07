; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ecap.c_am335x_ecap_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ecap.c_am335x_ecap_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_ecap_softc = type { i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_ecap_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_ecap_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_ecap_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.am335x_ecap_softc* @device_get_softc(i32 %5)
  store %struct.am335x_ecap_softc* %6, %struct.am335x_ecap_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.am335x_ecap_softc*, %struct.am335x_ecap_softc** %4, align 8
  %9 = getelementptr inbounds %struct.am335x_ecap_softc, %struct.am335x_ecap_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.am335x_ecap_softc*, %struct.am335x_ecap_softc** %4, align 8
  %11 = call i32 @PWM_LOCK_INIT(%struct.am335x_ecap_softc* %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load %struct.am335x_ecap_softc*, %struct.am335x_ecap_softc** %4, align 8
  %15 = getelementptr inbounds %struct.am335x_ecap_softc, %struct.am335x_ecap_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.am335x_ecap_softc*, %struct.am335x_ecap_softc** %4, align 8
  %19 = getelementptr inbounds %struct.am335x_ecap_softc, %struct.am335x_ecap_softc* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.am335x_ecap_softc*, %struct.am335x_ecap_softc** %4, align 8
  %21 = getelementptr inbounds %struct.am335x_ecap_softc, %struct.am335x_ecap_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

28:                                               ; preds = %24
  %29 = load %struct.am335x_ecap_softc*, %struct.am335x_ecap_softc** %4, align 8
  %30 = call i32 @PWM_LOCK_DESTROY(%struct.am335x_ecap_softc* %29)
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.am335x_ecap_softc* @device_get_softc(i32) #1

declare dso_local i32 @PWM_LOCK_INIT(%struct.am335x_ecap_softc*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @PWM_LOCK_DESTROY(%struct.am335x_ecap_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
