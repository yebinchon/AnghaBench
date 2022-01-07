; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_free_ptp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_free_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VTD_PTE_RD = common dso_local global i32 0, align 4
@VTD_PTE_WR = common dso_local global i32 0, align 4
@VTD_PTE_SUPERPAGE = common dso_local global i32 0, align 4
@VTD_PTE_ADDR_M = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_VTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @vtd_free_ptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtd_free_ptp(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %48, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VTD_PTE_RD, align 4
  %20 = load i32, i32* @VTD_PTE_WR, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %48

25:                                               ; preds = %13
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VTD_PTE_SUPERPAGE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %48

35:                                               ; preds = %25
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VTD_PTE_ADDR_M, align 4
  %42 = and i32 %40, %41
  %43 = call i64 @PHYS_TO_DMAP(i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  call void @vtd_free_ptp(i32* %45, i32 %47)
  br label %48

48:                                               ; preds = %35, %34, %24
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %10

51:                                               ; preds = %10
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32 @bzero(i32* %53, i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @M_VTD, align 4
  %58 = call i32 @free(i32* %56, i32 %57)
  ret void
}

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
