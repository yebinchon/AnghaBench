; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c__bus_dmamap_reserve_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c__bus_dmamap_reserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@bounce_lock = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bounce_map_waitinglist = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32)* @_bus_dmamap_reserve_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_reserve_pages(i32 %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = call i32 @mtx_lock(i32* @bounce_lock)
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = call i64 @reserve_bounce_pages(i32 %14, %struct.TYPE_5__* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = call i32 @mtx_unlock(i32* @bounce_lock)
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %13
  br label %36

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = call i64 @reserve_bounce_pages(i32 %25, %struct.TYPE_5__* %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = load i32, i32* @links, align 4
  %32 = call i32 @STAILQ_INSERT_TAIL(i32* @bounce_map_waitinglist, %struct.TYPE_5__* %30, i32 %31)
  %33 = call i32 @mtx_unlock(i32* @bounce_lock)
  %34 = load i32, i32* @EINPROGRESS, align 4
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %23
  %37 = call i32 @mtx_unlock(i32* @bounce_lock)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %29, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @reserve_bounce_pages(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
