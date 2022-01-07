; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_probe_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_probe_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs_map = type { i64, i64 }

@CK_HS_PROBE_L1_MASK = common dso_local global i64 0, align 8
@CK_HS_PROBE_L1_SHIFT = common dso_local global i64 0, align 8
@CK_HS_PROBE_L1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_hs_map*, i64, i64, i64, i64)* @ck_hs_map_probe_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_hs_map_probe_next(%struct.ck_hs_map* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ck_hs_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ck_hs_map* %0, %struct.ck_hs_map** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %15 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = lshr i64 %13, %16
  %18 = load i64, i64* %9, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @CK_HS_PROBE_L1_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %20, %22
  %24 = shl i64 %23, 1
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @CK_HS_PROBE_L1_MASK, align 8
  %27 = and i64 %25, %26
  %28 = or i64 %24, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @CK_HS_PROBE_L1_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = add i64 %29, %32
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %36 = or i64 %34, %35
  %37 = add i64 %33, %36
  %38 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %39 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %37, %40
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
