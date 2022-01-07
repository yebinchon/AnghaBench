; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMStartBufferPhysicalMapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMStartBufferPhysicalMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ndis_softc = type { i64, i32, i32* }
%struct.ndis_map_arg = type { i64, i32* }

@ndis_map_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64, i32*, i64*)* @NdisMStartBufferPhysicalMapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NdisMStartBufferPhysicalMapping(i32* %0, i32* %1, i64 %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.ndis_softc*, align 8
  %15 = alloca %struct.ndis_map_arg, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %77

21:                                               ; preds = %6
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %13, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ndis_softc* @device_get_softc(i32 %28)
  store %struct.ndis_softc* %29, %struct.ndis_softc** %14, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.ndis_softc*, %struct.ndis_softc** %14, align 8
  %32 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %77

36:                                               ; preds = %21
  %37 = load %struct.ndis_softc*, %struct.ndis_softc** %14, align 8
  %38 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds %struct.ndis_map_arg, %struct.ndis_map_arg* %15, i32 0, i32 1
  store i32* %43, i32** %44, align 8
  %45 = load %struct.ndis_softc*, %struct.ndis_softc** %14, align 8
  %46 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @MmGetMdlVirtualAddress(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @MmGetMdlByteCount(i32* %51)
  %53 = load i32, i32* @ndis_map_cb, align 4
  %54 = bitcast %struct.ndis_map_arg* %15 to i8*
  %55 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %56 = call i32 @bus_dmamap_load(i32 %47, i32 %48, i32 %50, i32 %52, i32 %53, i8* %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %36
  br label %77

60:                                               ; preds = %36
  %61 = load %struct.ndis_softc*, %struct.ndis_softc** %14, align 8
  %62 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @bus_dmamap_sync(i32 %63, i32 %64, i32 %72)
  %74 = getelementptr inbounds %struct.ndis_map_arg, %struct.ndis_map_arg* %15, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %59, %35, %20
  ret void
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MmGetMdlVirtualAddress(i32*) #1

declare dso_local i32 @MmGetMdlByteCount(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
