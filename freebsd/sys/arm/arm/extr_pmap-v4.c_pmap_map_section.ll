; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_map_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_map_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_S_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"ouin2\00", align 1
@pte_l1_s_cache_mode = common dso_local global i64 0, align 8
@pte_l1_s_cache_mode_pt = common dso_local global i64 0, align 8
@L1_S_PROTO = common dso_local global i64 0, align 8
@PTE_KERNEL = common dso_local global i32 0, align 4
@PMAP_DOMAIN_KERNEL = common dso_local global i32 0, align 4
@L1_S_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_map_section(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @L1_S_OFFSET, align 8
  %19 = and i64 %17, %18
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %25 [
    i32 129, label %24
    i32 130, label %26
    i32 128, label %28
  ]

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %5, %24
  store i64 0, i64* %12, align 8
  br label %30

26:                                               ; preds = %5
  %27 = load i64, i64* @pte_l1_s_cache_mode, align 8
  store i64 %27, i64* %12, align 8
  br label %30

28:                                               ; preds = %5
  %29 = load i64, i64* @pte_l1_s_cache_mode_pt, align 8
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %28, %26, %25
  %31 = load i64, i64* @L1_S_PROTO, align 8
  %32 = load i64, i64* %8, align 8
  %33 = or i64 %31, %32
  %34 = load i32, i32* @PTE_KERNEL, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @L1_S_PROT(i32 %34, i32 %35)
  %37 = or i64 %33, %36
  %38 = load i64, i64* %12, align 8
  %39 = or i64 %37, %38
  %40 = load i32, i32* @PMAP_DOMAIN_KERNEL, align 4
  %41 = call i64 @L1_S_DOM(i32 %40)
  %42 = or i64 %39, %41
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @L1_S_SHIFT, align 8
  %46 = lshr i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 %42, i64* %47, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @L1_S_SHIFT, align 8
  %51 = lshr i64 %49, %50
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = call i32 @PTE_SYNC(i64* %52)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @L1_S_PROT(i32, i32) #1

declare dso_local i64 @L1_S_DOM(i32) #1

declare dso_local i32 @PTE_SYNC(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
