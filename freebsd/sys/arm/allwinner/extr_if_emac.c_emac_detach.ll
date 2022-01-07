; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32, %struct.TYPE_3__*, i32*, i32*, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emac_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.emac_softc* @device_get_softc(i32 %4)
  store %struct.emac_softc* %5, %struct.emac_softc** %3, align 8
  %6 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %9 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %7
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %19 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @ether_ifdetach(%struct.TYPE_3__* %20)
  %22 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %23 = call i32 @EMAC_LOCK(%struct.emac_softc* %22)
  %24 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %25 = call i32 @emac_stop_locked(%struct.emac_softc* %24)
  %26 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %27 = call i32 @EMAC_UNLOCK(%struct.emac_softc* %26)
  %28 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %29 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %28, i32 0, i32 8
  %30 = call i32 @callout_drain(i32* %29)
  br label %31

31:                                               ; preds = %17, %1
  %32 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %33 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %41 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %44 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_teardown_intr(i32 %39, i32* %42, i32* %45)
  br label %47

47:                                               ; preds = %36, %31
  %48 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %49 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %54 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %57 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @device_delete_child(i32 %55, i32* %58)
  %60 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_generic_detach(i32 %62)
  br label %64

64:                                               ; preds = %52, %47
  %65 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %66 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %71 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @clk_disable(i32* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %76 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @SYS_RES_MEMORY, align 4
  %82 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %83 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_release_resource(i32 %80, i32 %81, i32 0, i32* %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %88 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @SYS_RES_IRQ, align 4
  %94 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %95 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_release_resource(i32 %92, i32 %93, i32 0, i32* %96)
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %100 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = icmp ne %struct.TYPE_3__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %105 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @if_free(%struct.TYPE_3__* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %110 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %109, i32 0, i32 0
  %111 = call i64 @mtx_initialized(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %115 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %114, i32 0, i32 0
  %116 = call i32 @mtx_destroy(i32* %115)
  br label %117

117:                                              ; preds = %113, %108
  ret i32 0
}

declare dso_local %struct.emac_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.TYPE_3__*) #1

declare dso_local i32 @EMAC_LOCK(%struct.emac_softc*) #1

declare dso_local i32 @emac_stop_locked(%struct.emac_softc*) #1

declare dso_local i32 @EMAC_UNLOCK(%struct.emac_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @clk_disable(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @if_free(%struct.TYPE_3__*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
