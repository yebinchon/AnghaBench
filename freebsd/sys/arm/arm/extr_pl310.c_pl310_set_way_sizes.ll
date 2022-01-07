; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_set_way_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_set_way_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl310_softc = type { i32 }

@PL310_AUX_CTRL = common dso_local global i32 0, align 4
@AUX_CTRL_WAY_SIZE_MASK = common dso_local global i32 0, align 4
@AUX_CTRL_WAY_SIZE_SHIFT = common dso_local global i32 0, align 4
@g_way_size = common dso_local global i32 0, align 4
@AUX_CTRL_ASSOCIATIVITY_SHIFT = common dso_local global i32 0, align 4
@g_ways_assoc = common dso_local global i32 0, align 4
@g_l2cache_way_mask = common dso_local global i32 0, align 4
@g_l2cache_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl310_softc*)* @pl310_set_way_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl310_set_way_sizes(%struct.pl310_softc* %0) #0 {
  %2 = alloca %struct.pl310_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pl310_softc* %0, %struct.pl310_softc** %2, align 8
  %4 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %5 = load i32, i32* @PL310_AUX_CTRL, align 4
  %6 = call i32 @pl310_read4(%struct.pl310_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AUX_CTRL_WAY_SIZE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @AUX_CTRL_WAY_SIZE_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* @g_way_size, align 4
  %12 = load i32, i32* @g_way_size, align 4
  %13 = add nsw i32 %12, 13
  %14 = shl i32 1, %13
  store i32 %14, i32* @g_way_size, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AUX_CTRL_ASSOCIATIVITY_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 16, i32* @g_ways_assoc, align 4
  br label %22

21:                                               ; preds = %1
  store i32 8, i32* @g_ways_assoc, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* @g_ways_assoc, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* @g_l2cache_way_mask, align 4
  %26 = load i32, i32* @g_way_size, align 4
  %27 = load i32, i32* @g_ways_assoc, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* @g_l2cache_size, align 4
  ret void
}

declare dso_local i32 @pl310_read4(%struct.pl310_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
