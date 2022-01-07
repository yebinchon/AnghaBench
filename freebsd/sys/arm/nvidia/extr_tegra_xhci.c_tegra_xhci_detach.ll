; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_tegra_xhci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_tegra_xhci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xhci_softc = type { i64, i32, i32*, i32*, i64, %struct.xhci_softc }
%struct.xhci_softc = type { i32*, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_xhci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xhci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_xhci_softc*, align 8
  %4 = alloca %struct.xhci_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tegra_xhci_softc* @device_get_softc(i32 %5)
  store %struct.tegra_xhci_softc* %6, %struct.tegra_xhci_softc** %3, align 8
  %7 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %7, i32 0, i32 5
  store %struct.xhci_softc* %8, %struct.xhci_softc** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_delete_children(i32 %9)
  %11 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %17 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %16, i32 0, i32 3
  %18 = call i32 @usb_callout_drain(i32* %17)
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %20 = call i32 @xhci_halt_controller(%struct.xhci_softc* %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @bus_teardown_intr(i32 %32, i32* %35, i32* %38)
  %40 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %31, %26, %21
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %44 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SYS_RES_IRQ, align 4
  %50 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @rman_get_rid(i32* %52)
  %54 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %55 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bus_release_resource(i32 %48, i32 %49, i32 %53, i32* %56)
  %58 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %59 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %47, %42
  %61 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %62 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_MEMORY, align 4
  %68 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %69 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rman_get_rid(i32* %70)
  %72 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %73 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 %71, i32* %74)
  %76 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %65, %60
  %79 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %85 = call i32 @xhci_uninit(%struct.xhci_softc* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %97 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_teardown_intr(i32 %92, i32* %95, i32* %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %102 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %107 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @kmem_free(i64 %108, i32 %111)
  br label %113

113:                                              ; preds = %105, %100
  %114 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %115 = call i32 @LOCK_DESTROY(%struct.tegra_xhci_softc* %114)
  ret i32 0
}

declare dso_local %struct.tegra_xhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @xhci_halt_controller(%struct.xhci_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @xhci_uninit(%struct.xhci_softc*) #1

declare dso_local i32 @kmem_free(i64, i32) #1

declare dso_local i32 @LOCK_DESTROY(%struct.tegra_xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
