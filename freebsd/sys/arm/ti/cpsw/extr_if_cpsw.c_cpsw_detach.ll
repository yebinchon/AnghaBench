; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32*, i32, i64, i64, i32*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CPSW_PORTS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to destroy DMA tag\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@irq_res_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpsw_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @bus_generic_detach(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cpsw_softc* @device_get_softc(i32 %9)
  store %struct.cpsw_softc* %10, %struct.cpsw_softc** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CPSW_PORTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %17 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %16, i32 0, i32 9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %28 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %27, i32 0, i32 9
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @device_delete_child(i32 %26, i64 %34)
  br label %36

36:                                               ; preds = %25, %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @device_is_attached(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %46 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @callout_stop(i32* %47)
  %49 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %50 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @callout_drain(i32* %51)
  br label %53

53:                                               ; preds = %44, %40
  %54 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %55 = call i32 @cpsw_intr_detach(%struct.cpsw_softc* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %72, %53
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %59 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @nitems(i32* %60)
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %65 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @cpsw_free_slot(%struct.cpsw_softc* %64, i32* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %77 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %82 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @M_DEVBUF, align 4
  %85 = call i32 @free(i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %88 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %93 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @bus_dma_tag_destroy(i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @KASSERT(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %91, %86
  %101 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %102 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @SYS_RES_MEMORY, align 4
  %108 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %109 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %112 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @bus_release_resource(i32 %106, i32 %107, i32 %110, i32* %113)
  br label %115

115:                                              ; preds = %105, %100
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @irq_res_spec, align 4
  %118 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %119 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @bus_release_resources(i32 %116, i32 %117, i32 %120)
  %122 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %123 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32 @mtx_destroy(i32* %124)
  %126 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %127 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = call i32 @mtx_destroy(i32* %128)
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @bus_generic_detach(i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %115
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %139

136:                                              ; preds = %115
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @device_delete_children(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %136, %134
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local %struct.cpsw_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @cpsw_intr_detach(%struct.cpsw_softc*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @cpsw_free_slot(%struct.cpsw_softc*, i32*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @device_delete_children(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
