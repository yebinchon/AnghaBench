; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAP_MIN_ADDRESS = common dso_local global i32 0, align 4
@DMAP_MAX_ADDRESS = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_kextract(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @DMAP_MIN_ADDRESS, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @DMAP_MAX_ADDRESS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @DMAP_TO_PHYS(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %51

15:                                               ; preds = %8, %1
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @PMAP_ADDRESS_IN_LARGEMAP(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @pmap_large_map_kextract(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = call i32* @vtopde(i32 %23)
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PG_PS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PG_PS_FRAME, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @PDRMASK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %22
  %39 = load i32, i32* %2, align 4
  %40 = call i32* @pmap_pde_to_pte(i32* %3, i32 %39)
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PG_FRAME, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @PAGE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %44, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %30
  br label %50

50:                                               ; preds = %49, %19
  br label %51

51:                                               ; preds = %50, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i64 @PMAP_ADDRESS_IN_LARGEMAP(i32) #1

declare dso_local i32 @pmap_large_map_kextract(i32) #1

declare dso_local i32* @vtopde(i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
