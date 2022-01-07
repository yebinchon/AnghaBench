; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mv_pcib_softc = type { i32, i32, i32, %struct.rman, %struct.rman }
%struct.rman = type { i32 }

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @mv_pcib_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @mv_pcib_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mv_pcib_softc*, align 8
  %19 = alloca %struct.rman*, align 8
  %20 = alloca %struct.resource*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.mv_pcib_softc* @device_get_softc(i32 %21)
  store %struct.mv_pcib_softc* %22, %struct.mv_pcib_softc** %18, align 8
  store %struct.rman* null, %struct.rman** %19, align 8
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %41 [
    i32 129, label %24
    i32 128, label %27
    i32 130, label %30
  ]

24:                                               ; preds = %8
  %25 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %26 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %25, i32 0, i32 4
  store %struct.rman* %26, %struct.rman** %19, align 8
  br label %52

27:                                               ; preds = %8
  %28 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %29 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %28, i32 0, i32 3
  store %struct.rman* %29, %struct.rman** %19, align 8
  br label %52

30:                                               ; preds = %8
  %31 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %32 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call %struct.resource* @pci_domain_alloc_bus(i32 %33, i32 %34, i32* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store %struct.resource* %40, %struct.resource** %9, align 8
  br label %137

41:                                               ; preds = %8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @device_get_parent(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %43, i32 %44, i32 %45, i32* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store %struct.resource* %51, %struct.resource** %9, align 8
  br label %137

52:                                               ; preds = %27, %24
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %59 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %62 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %65 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %70 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %57, %52
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %75 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %96, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %88 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %18, align 8
  %91 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = icmp sgt i32 %86, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %85, %78, %72
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %137

97:                                               ; preds = %85
  %98 = load %struct.rman*, %struct.rman** %19, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.resource* @rman_reserve_resource(%struct.rman* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  store %struct.resource* %104, %struct.resource** %20, align 8
  %105 = load %struct.resource*, %struct.resource** %20, align 8
  %106 = icmp eq %struct.resource* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %137

108:                                              ; preds = %97
  %109 = load %struct.resource*, %struct.resource** %20, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @rman_set_rid(%struct.resource* %109, i32 %111)
  %113 = load %struct.resource*, %struct.resource** %20, align 8
  %114 = load i32, i32* @fdtbus_bs_tag, align 4
  %115 = call i32 @rman_set_bustag(%struct.resource* %113, i32 %114)
  %116 = load %struct.resource*, %struct.resource** %20, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @rman_set_bushandle(%struct.resource* %116, i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @RF_ACTIVE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %108
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.resource*, %struct.resource** %20, align 8
  %129 = call i64 @bus_activate_resource(i32 %124, i32 %125, i32 %127, %struct.resource* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.resource*, %struct.resource** %20, align 8
  %133 = call i32 @rman_release_resource(%struct.resource* %132)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %137

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %108
  %136 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %136, %struct.resource** %9, align 8
  br label %137

137:                                              ; preds = %135, %131, %107, %96, %41, %30
  %138 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %138
}

declare dso_local %struct.mv_pcib_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @pci_domain_alloc_bus(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
