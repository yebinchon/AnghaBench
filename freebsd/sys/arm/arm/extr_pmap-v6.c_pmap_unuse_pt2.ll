; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_unuse_pt2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_unuse_pt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spglist = type { i32 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.spglist*)* @pmap_unuse_pt2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_unuse_pt2(i32 %0, i64 %1, %struct.spglist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.spglist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.spglist* %2, %struct.spglist** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @pmap_pte1(i32 %16, i64 %17)
  %19 = call i32 @pte1_load(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pte1_link_pa(i32 %20)
  %22 = call i32 @PHYS_TO_VM_PAGE(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.spglist*, %struct.spglist** %7, align 8
  %27 = call i32 @pmap_unwire_pt2(i32 %23, i64 %24, i32 %25, %struct.spglist* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @pte1_load(i32) #1

declare dso_local i32 @pmap_pte1(i32, i64) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pte1_link_pa(i32) #1

declare dso_local i32 @pmap_unwire_pt2(i32, i64, i32, %struct.spglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
