; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ehci.c_vybrid_ehci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ehci.c_vybrid_ehci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vybrid_ehci_softc = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i64, i64 }

@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@EHCI_USBINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@vybrid_ehci_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vybrid_ehci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vybrid_ehci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vybrid_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.vybrid_ehci_softc* @device_get_softc(i32 %7)
  store %struct.vybrid_ehci_softc* %8, %struct.vybrid_ehci_softc** %4, align 8
  %9 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %9, i32 0, i32 1
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_delete_children(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = call i32 @ehci_detach(%struct.TYPE_3__* %24)
  %26 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @EHCI_USBINTR, align 4
  %50 = call i32 @bus_space_write_4(i64 %45, i64 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %42, %37, %32
  %52 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %53 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %66 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_teardown_intr(i32 %64, i64 %69, i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %94

81:                                               ; preds = %63
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %81, %58, %51
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = call i32 @usb_bus_mem_free_all(i32* %86, i32* @ehci_iterate_hw_softc)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @vybrid_ehci_spec, align 4
  %90 = load %struct.vybrid_ehci_softc*, %struct.vybrid_ehci_softc** %4, align 8
  %91 = getelementptr inbounds %struct.vybrid_ehci_softc, %struct.vybrid_ehci_softc* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = call i32 @bus_release_resources(i32 %88, i32 %89, i64* %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %84, %76, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.vybrid_ehci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @ehci_detach(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_space_write_4(i64, i64, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
