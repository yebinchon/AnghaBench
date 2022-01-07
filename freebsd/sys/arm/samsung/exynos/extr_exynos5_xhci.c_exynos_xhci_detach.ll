; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_xhci.c_exynos_xhci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_xhci.c_exynos_xhci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_xhci_softc = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Could not tear down IRQ, %d\0A\00", align 1
@exynos_xhci_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exynos_xhci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_xhci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_xhci_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.exynos_xhci_softc* @device_get_softc(i32 %6)
  store %struct.exynos_xhci_softc* %7, %struct.exynos_xhci_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_delete_children(i32 %8)
  %10 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %10, i32 0, i32 0
  %12 = call i32 @xhci_halt_controller(%struct.TYPE_3__* %11)
  %13 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @bus_teardown_intr(i32 %26, i64 %31, i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %19, %1
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @exynos_xhci_spec, align 4
  %48 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %49 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @bus_release_resources(i32 %46, i32 %47, i64* %50)
  %52 = load %struct.exynos_xhci_softc*, %struct.exynos_xhci_softc** %4, align 8
  %53 = getelementptr inbounds %struct.exynos_xhci_softc, %struct.exynos_xhci_softc* %52, i32 0, i32 0
  %54 = call i32 @xhci_uninit(%struct.TYPE_3__* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %39
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.exynos_xhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @xhci_halt_controller(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i64*) #1

declare dso_local i32 @xhci_uninit(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
