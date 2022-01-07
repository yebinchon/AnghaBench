; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soctherm_softc = type { i32*, i32*, i32*, i32*, i32*, i32* }

@soctherm_sysctl_ctx = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @soctherm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soctherm_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.soctherm_softc* @device_get_softc(i32 %4)
  store %struct.soctherm_softc* %5, %struct.soctherm_softc** %3, align 8
  %6 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %6, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %13 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bus_teardown_intr(i32 %11, i32* %14, i32* %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = call i32 @sysctl_ctx_free(i32* @soctherm_sysctl_ctx)
  %21 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @clk_release(i32* %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %32 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %37 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @clk_release(i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %42 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %47 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @hwreset_release(i32* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %52 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_release_resource(i32 %56, i32 %57, i32 0, i32* %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %64 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @SYS_RES_MEMORY, align 4
  %70 = load %struct.soctherm_softc*, %struct.soctherm_softc** %3, align 8
  %71 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 0, i32* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* @ENXIO, align 4
  ret i32 %75
}

declare dso_local %struct.soctherm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
