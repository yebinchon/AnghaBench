; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_busdma_swi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c_busdma_swi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32)* }
%struct.bus_dmamap = type { i32, i32, i32, %struct.TYPE_3__* }

@bounce_lock = common dso_local global i32 0, align 4
@bounce_map_callbacklist = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@BUS_DMA_LOCK = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @busdma_swi() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.bus_dmamap*, align 8
  %3 = call i32 @mtx_lock(i32* @bounce_lock)
  br label %4

4:                                                ; preds = %7, %0
  %5 = call %struct.bus_dmamap* @STAILQ_FIRST(i32* @bounce_map_callbacklist)
  store %struct.bus_dmamap* %5, %struct.bus_dmamap** %2, align 8
  %6 = icmp ne %struct.bus_dmamap* %5, null
  br i1 %6, label %7, label %45

7:                                                ; preds = %4
  %8 = load i32, i32* @links, align 4
  %9 = call i32 @STAILQ_REMOVE_HEAD(i32* @bounce_map_callbacklist, i32 %8)
  %10 = call i32 @mtx_unlock(i32* @bounce_lock)
  %11 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %12 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %1, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BUS_DMA_LOCK, align 4
  %21 = call i32 %16(i32 %19, i32 %20)
  %22 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %23 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %26 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %27 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %26, i32 0, i32 2
  %28 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %29 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %32 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %35 = call i32 @bus_dmamap_load_mem(%struct.TYPE_3__* %24, %struct.bus_dmamap* %25, i32* %27, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BUS_DMA_UNLOCK, align 4
  %43 = call i32 %38(i32 %41, i32 %42)
  %44 = call i32 @mtx_lock(i32* @bounce_lock)
  br label %4

45:                                               ; preds = %4
  %46 = call i32 @mtx_unlock(i32* @bounce_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bus_dmamap* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_dmamap_load_mem(%struct.TYPE_3__*, %struct.bus_dmamap*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
