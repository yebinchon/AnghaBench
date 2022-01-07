; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ehci.c_tegra_ehci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ehci.c_tegra_ehci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ehci_softc = type { i64, i32*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_5__ = type { i32* }

@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_ehci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ehci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_ehci_softc*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tegra_ehci_softc* @device_get_softc(i32 %5)
  store %struct.tegra_ehci_softc* %6, %struct.tegra_ehci_softc** %3, align 8
  %7 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %7, i32 0, i32 4
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @clk_release(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @device_delete_child(i32 %25, i32* %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @ehci_detach(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_teardown_intr(i32 %47, i32 %50, i32* %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @SYS_RES_IRQ, align 4
  %63 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %61, i32 %62, i32 0, i32* %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @SYS_RES_MEMORY, align 4
  %75 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %76 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_release_resource(i32 %73, i32 %74, i32 0, i32* %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = call i32 @usb_bus_mem_free_all(%struct.TYPE_5__* %86, i32* @ehci_iterate_hw_softc)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @device_delete_children(i32 %89)
  ret i32 0
}

declare dso_local %struct.tegra_ehci_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @ehci_detach(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @device_delete_children(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
