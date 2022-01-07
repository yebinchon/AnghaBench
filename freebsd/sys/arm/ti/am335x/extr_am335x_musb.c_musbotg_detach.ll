; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_super_softc = type { %struct.TYPE_2__, i32, i64* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@am335x_musbotg_mem_spec = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @musbotg_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_super_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.musbotg_super_softc* @device_get_softc(i32 %5)
  store %struct.musbotg_super_softc* %6, %struct.musbotg_super_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_delete_children(i32 %7)
  %9 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %10 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %16 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %22 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %21, i32 0, i32 0
  %23 = call i32 @musbotg_uninit(%struct.TYPE_2__* %22)
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %26 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %30 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @bus_teardown_intr(i32 %24, i64 %28, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %35 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %20, %14, %1
  %38 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %39 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @usb_bus_mem_free_all(i32* %40, i32* null)
  %42 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %43 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @am335x_musbotg_mem_spec, align 4
  %51 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %52 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 @bus_release_resources(i32 %49, i32 %50, i64* %53)
  br label %55

55:                                               ; preds = %48, %37
  %56 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %57 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @SYS_RES_IRQ, align 4
  %64 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %65 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %3, align 8
  %68 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %66, i64 %70)
  br label %72

72:                                               ; preds = %61, %55
  ret i32 0
}

declare dso_local %struct.musbotg_super_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @musbotg_uninit(%struct.TYPE_2__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i64*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
