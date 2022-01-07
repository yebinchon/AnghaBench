; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdmi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.hdmi_softc* @device_get_softc(i32 %4)
  store %struct.hdmi_softc* %5, %struct.hdmi_softc** %3, align 8
  %6 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32 %9, i32 %12)
  %14 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_teardown_intr(i32 %19, i32* %22, i32* %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @clk_release(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @clk_release(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @hwreset_release(i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %59 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @regulator_release(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %69 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @regulator_release(i32* %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %79 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %84 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @regulator_release(i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %89 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @SYS_RES_IRQ, align 4
  %95 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %96 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @bus_release_resource(i32 %93, i32 %94, i32 0, i32* %97)
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %101 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @SYS_RES_MEMORY, align 4
  %107 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %108 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 0, i32* %109)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @bus_generic_detach(i32 %112)
  ret i32 %113
}

declare dso_local %struct.hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @TEGRA_DRM_DEREGISTER_CLIENT(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @regulator_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
