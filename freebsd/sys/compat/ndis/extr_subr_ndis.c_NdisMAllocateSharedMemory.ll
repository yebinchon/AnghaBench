; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMAllocateSharedMemory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMAllocateSharedMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ndis_softc = type { i32, i32 }
%struct.ndis_shmem = type { i32, i8*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NDIS_BUS_SPACE_SHARED_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@ndis_mapshared_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8**, %struct.TYPE_8__*)* @NdisMAllocateSharedMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NdisMAllocateSharedMemory(i32* %0, i32 %1, i32 %2, i8** %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.ndis_softc*, align 8
  %13 = alloca %struct.ndis_shmem*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %131

18:                                               ; preds = %5
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ndis_softc* @device_get_softc(i32 %25)
  store %struct.ndis_softc* %26, %struct.ndis_softc** %12, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.ndis_shmem* @malloc(i32 32, i32 %27, i32 %30)
  store %struct.ndis_shmem* %31, %struct.ndis_shmem** %13, align 8
  %32 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %33 = icmp eq %struct.ndis_shmem* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %131

35:                                               ; preds = %18
  %36 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %37 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %36, i32 0, i32 0
  %38 = call i32 @InitializeListHead(i32* %37)
  %39 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %40 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NDIS_BUS_SPACE_SHARED_MAXADDR, align 4
  %43 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %47 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %48 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %47, i32 0, i32 3
  %49 = call i32 @bus_dma_tag_create(i32 %41, i32 64, i32 0, i32 %42, i32 %43, i32* null, i32* null, i32 %44, i32 1, i32 %45, i32 %46, i32* null, i32* null, i32* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %54 = load i32, i32* @M_DEVBUF, align 4
  %55 = call i32 @free(%struct.ndis_shmem* %53, i32 %54)
  br label %131

56:                                               ; preds = %35
  %57 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %58 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i8**, i8*** %9, align 8
  %61 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %62 = load i32, i32* @BUS_DMA_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %65 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %64, i32 0, i32 4
  %66 = call i32 @bus_dmamem_alloc(i32 %59, i8** %60, i32 %63, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %71 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bus_dma_tag_destroy(i32 %72)
  %74 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %75 = load i32, i32* @M_DEVBUF, align 4
  %76 = call i32 @free(%struct.ndis_shmem* %74, i32 %75)
  br label %131

77:                                               ; preds = %56
  %78 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %79 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %82 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i8**, i8*** %9, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ndis_mapshared_cb, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = bitcast %struct.TYPE_8__* %88 to i8*
  %90 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %91 = call i32 @bus_dmamap_load(i32 %80, i32 %83, i8* %85, i32 %86, i32 %87, i8* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %77
  %95 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %96 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i8**, i8*** %9, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %101 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dmamem_free(i32 %97, i8* %99, i32 %102)
  %104 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %105 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bus_dma_tag_destroy(i32 %106)
  %108 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %109 = load i32, i32* @M_DEVBUF, align 4
  %110 = call i32 @free(%struct.ndis_shmem* %108, i32 %109)
  br label %131

111:                                              ; preds = %77
  %112 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %113 = call i32 @NDIS_LOCK(%struct.ndis_softc* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %118 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load i8**, i8*** %9, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %123 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %125 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %124, i32 0, i32 0
  %126 = load %struct.ndis_shmem*, %struct.ndis_shmem** %13, align 8
  %127 = getelementptr inbounds %struct.ndis_shmem, %struct.ndis_shmem* %126, i32 0, i32 0
  %128 = call i32 @InsertHeadList(i32* %125, i32* %127)
  %129 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %130 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %129)
  br label %131

131:                                              ; preds = %111, %94, %69, %52, %34, %17
  ret void
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local %struct.ndis_shmem* @malloc(i32, i32, i32) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.ndis_shmem*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
