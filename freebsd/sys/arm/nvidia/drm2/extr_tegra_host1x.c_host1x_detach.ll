; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_softc = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @host1x_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.host1x_softc* @device_get_softc(i32 %4)
  store %struct.host1x_softc* %5, %struct.host1x_softc** %3, align 8
  %6 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %7 = call i32 @host1x_drm_exit(%struct.host1x_softc* %6)
  %8 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %9 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %15 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %18 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @bus_teardown_intr(i32 %13, i32* %16, i32* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %23 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %28 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %31 = call i32 @free(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %34 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %39 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @clk_release(i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %44 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %49 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @hwreset_release(i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %54 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %60 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %63 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_teardown_intr(i32 %58, i32* %61, i32* %64)
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %68 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @SYS_RES_IRQ, align 4
  %74 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %75 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @bus_release_resource(i32 %72, i32 %73, i32 1, i32* %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %80 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @SYS_RES_IRQ, align 4
  %86 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %87 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @bus_release_resource(i32 %84, i32 %85, i32 0, i32* %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %92 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @SYS_RES_MEMORY, align 4
  %98 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %99 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @bus_release_resource(i32 %96, i32 %97, i32 0, i32* %100)
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.host1x_softc*, %struct.host1x_softc** %3, align 8
  %104 = call i32 @LOCK_DESTROY(%struct.host1x_softc* %103)
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @bus_generic_detach(i32 %105)
  ret i32 %106
}

declare dso_local %struct.host1x_softc* @device_get_softc(i32) #1

declare dso_local i32 @host1x_drm_exit(%struct.host1x_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.host1x_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
