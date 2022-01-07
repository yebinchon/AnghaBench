; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_wbinv_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_wbinv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@pl310_softc = common dso_local global %struct.TYPE_6__* null, align 8
@g_l2cache_align_mask = common dso_local global i32 0, align 4
@g_l2cache_line_size = common dso_local global i64 0, align 8
@PL310_CLEAN_INV_LINE_PA = common dso_local global i32 0, align 4
@CACHE_ID_RELEASE_r1p0 = common dso_local global i64 0, align 8
@CACHE_ID_RELEASE_r2p0 = common dso_local global i64 0, align 8
@CACHE_ID_RELEASE_r3p1 = common dso_local global i64 0, align 8
@PL310_CLEAN_LINE_PA = common dso_local global i32 0, align 4
@PL310_INV_LINE_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pl310_wbinv_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl310_wbinv_range(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %68

13:                                               ; preds = %7
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %15 = call i32 @PL310_LOCK(%struct.TYPE_6__* %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @g_l2cache_align_mask, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @g_l2cache_align_mask, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @g_l2cache_align_mask, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @g_l2cache_align_mask, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* @g_l2cache_align_mask, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @g_l2cache_line_size, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %30
  br label %46

46:                                               ; preds = %49, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %51 = load i32, i32* @PL310_CLEAN_INV_LINE_PA, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @pl310_write4(%struct.TYPE_6__* %50, i32 %51, i32 %52)
  %54 = load i64, i64* @g_l2cache_line_size, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %3, align 4
  %59 = load i64, i64* @g_l2cache_line_size, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %46

64:                                               ; preds = %46
  %65 = call i32 (...) @pl310_cache_sync()
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pl310_softc, align 8
  %67 = call i32 @PL310_UNLOCK(%struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %64, %12
  ret void
}

declare dso_local i32 @PL310_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @pl310_write4(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pl310_cache_sync(...) #1

declare dso_local i32 @PL310_UNLOCK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
