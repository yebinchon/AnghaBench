; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_busdma_bounce.c_free_bounce_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_busdma_bounce.c_free_bounce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.bounce_zone* }
%struct.TYPE_4__ = type { i32 }
%struct.bounce_zone = type { i32, i32, i32, i32 }
%struct.bounce_page = type { i32, i32, i64, i64 }
%struct.bus_dmamap = type { i32 }

@BUS_DMA_KEEP_PG_OFFSET = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@bounce_lock = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@bounce_map_waitinglist = common dso_local global i32 0, align 4
@bounce_map_callbacklist = common dso_local global i32 0, align 4
@busdma_swi_pending = common dso_local global i32 0, align 4
@vm_ih = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.bounce_page*)* @free_bounce_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_bounce_page(%struct.TYPE_5__* %0, %struct.bounce_page* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.bounce_page*, align 8
  %5 = alloca %struct.bus_dmamap*, align 8
  %6 = alloca %struct.bounce_zone*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.bounce_page* %1, %struct.bounce_page** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.bounce_zone*, %struct.bounce_zone** %8, align 8
  store %struct.bounce_zone* %9, %struct.bounce_zone** %6, align 8
  %10 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %11 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %13 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %25 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %31 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %21, %2
  %35 = call i32 @mtx_lock(i32* @bounce_lock)
  %36 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %37 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %36, i32 0, i32 3
  %38 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %39 = load i32, i32* @links, align 4
  %40 = call i32 @STAILQ_INSERT_HEAD(i32* %37, %struct.bounce_page* %38, i32 %39)
  %41 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %42 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %46 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = call %struct.bus_dmamap* @STAILQ_FIRST(i32* @bounce_map_waitinglist)
  store %struct.bus_dmamap* %49, %struct.bus_dmamap** %5, align 8
  %50 = icmp ne %struct.bus_dmamap* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %34
  %52 = load %struct.bus_dmamap*, %struct.bus_dmamap** %5, align 8
  %53 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bus_dmamap*, %struct.bus_dmamap** %5, align 8
  %56 = call i64 @reserve_bounce_pages(i32 %54, %struct.bus_dmamap* %55, i32 1)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load i32, i32* @links, align 4
  %60 = call i32 @STAILQ_REMOVE_HEAD(i32* @bounce_map_waitinglist, i32 %59)
  %61 = load %struct.bus_dmamap*, %struct.bus_dmamap** %5, align 8
  %62 = load i32, i32* @links, align 4
  %63 = call i32 @STAILQ_INSERT_TAIL(i32* @bounce_map_callbacklist, %struct.bus_dmamap* %61, i32 %62)
  store i32 1, i32* @busdma_swi_pending, align 4
  %64 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %65 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @vm_ih, align 4
  %69 = call i32 @swi_sched(i32 %68, i32 0)
  br label %70

70:                                               ; preds = %58, %51
  br label %71

71:                                               ; preds = %70, %34
  %72 = call i32 @mtx_unlock(i32* @bounce_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.bounce_page*, i32) #1

declare dso_local %struct.bus_dmamap* @STAILQ_FIRST(i32*) #1

declare dso_local i64 @reserve_bounce_pages(i32, %struct.bus_dmamap*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bus_dmamap*, i32) #1

declare dso_local i32 @swi_sched(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
