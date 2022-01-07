; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_exynos_ehci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_exynos_ehci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_ehci_softc = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32*, i64, i64 }
%struct.TYPE_4__ = type { i32* }

@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@EHCI_USBINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@exynos_ehci_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exynos_ehci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ehci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.exynos_ehci_softc* @device_get_softc(i32 %7)
  store %struct.exynos_ehci_softc* %8, %struct.exynos_ehci_softc** %4, align 8
  %9 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %9, i32 0, i32 1
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i32 @ehci_detach(%struct.TYPE_5__* %26)
  %28 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %25, %18
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @EHCI_USBINTR, align 4
  %52 = call i32 @bus_space_write_4(i64 %47, i64 %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %44, %39, %34
  %54 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %55 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @bus_teardown_intr(i32 %66, i64 %71, i32* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %111

83:                                               ; preds = %65
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %83, %60, %53
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @device_delete_child(i32 %93, i32* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %92, %86
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @device_delete_children(i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @exynos_ehci_spec, align 4
  %107 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %108 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = call i32 @bus_release_resources(i32 %105, i32 %106, i64* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %102, %78, %17
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.exynos_ehci_softc* @device_get_softc(i32) #1

declare dso_local i32 @ehci_detach(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_space_write_4(i64, i64, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
