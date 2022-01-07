; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.dc_softc* @device_get_softc(i32 %4)
  store %struct.dc_softc* %5, %struct.dc_softc** %3, align 8
  %6 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32 %9, i32 %12)
  %14 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_teardown_intr(i32 %19, i32* %22, i32* %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @clk_release(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @clk_release(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @hwreset_release(i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @SYS_RES_IRQ, align 4
  %65 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @bus_release_resource(i32 %63, i32 %64, i32 0, i32* %67)
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %71 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %78 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @bus_release_resource(i32 %75, i32 %76, i32 0, i32* %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %83 = call i32 @LOCK_DESTROY(%struct.dc_softc* %82)
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @bus_generic_detach(i32 %84)
  ret i32 %85
}

declare dso_local %struct.dc_softc* @device_get_softc(i32) #1

declare dso_local i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.dc_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
