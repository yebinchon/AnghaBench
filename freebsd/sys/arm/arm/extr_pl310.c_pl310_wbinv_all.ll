; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_wbinv_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_wbinv_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@pl310_softc = common dso_local global %struct.TYPE_6__* null, align 8
@PL310_CLEAN_INV_WAY = common dso_local global i32 0, align 4
@g_l2cache_way_mask = common dso_local global i32 0, align 4
@CACHE_ID_RELEASE_r2p0 = common dso_local global i64 0, align 8
@CACHE_ID_RELEASE_r3p0 = common dso_local global i64 0, align 8
@PL310_CLEAN_INV_LINE_IDX = common dso_local global i32 0, align 4
@g_l2cache_line_size = common dso_local global i32 0, align 4
@g_way_size = common dso_local global i32 0, align 4
@g_ways_assoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pl310_wbinv_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl310_wbinv_all() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %2 = icmp eq %struct.TYPE_6__* %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3, %0
  br label %22

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %11 = call i32 @PL310_LOCK(%struct.TYPE_6__* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %13 = load i32, i32* @PL310_CLEAN_INV_WAY, align 4
  %14 = load i32, i32* @g_l2cache_way_mask, align 4
  %15 = call i32 @pl310_write4(%struct.TYPE_6__* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @PL310_CLEAN_INV_WAY, align 4
  %17 = load i32, i32* @g_l2cache_way_mask, align 4
  %18 = call i32 @pl310_wait_background_op(i32 %16, i32 %17)
  %19 = call i32 (...) @pl310_cache_sync()
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %21 = call i32 @PL310_UNLOCK(%struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @PL310_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @pl310_write4(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pl310_wait_background_op(i32, i32) #1

declare dso_local i32 @pl310_cache_sync(...) #1

declare dso_local i32 @PL310_UNLOCK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
