; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_early_page_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_early_page_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_SHIFT = common dso_local global i64 0, align 8
@Ln_ADDR_MASK = common dso_local global i64 0, align 8
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid bootstrap L1 table\00", align 1
@init_pt_va = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i64*, i64*)* @pmap_early_page_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_early_page_idx(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @L1_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = load i64, i64* @Ln_ADDR_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64*, i64** %7, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @L1_TABLE, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @init_pt_va, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @pmap_l2_index(i64 %32)
  %34 = load i64*, i64** %8, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %9, align 8
  ret i32* %35
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pmap_l2_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
