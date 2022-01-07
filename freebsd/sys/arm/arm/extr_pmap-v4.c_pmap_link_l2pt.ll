; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_link_l2pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_link_l2pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_addr = type { i32, i32 }

@L1_S_SHIFT = common dso_local global i64 0, align 8
@PMAP_DOMAIN_KERNEL = common dso_local global i32 0, align 4
@L1_C_PROTO = common dso_local global i32 0, align 4
@kernel_pt_list = common dso_local global i32 0, align 4
@pv_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_link_l2pt(i64 %0, i64 %1, %struct.pv_addr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pv_addr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pv_addr* %2, %struct.pv_addr** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @L1_S_SHIFT, align 8
  %14 = lshr i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @PMAP_DOMAIN_KERNEL, align 4
  %16 = call i32 @L1_S_DOM(i32 %15)
  %17 = load i32, i32* @L1_C_PROTO, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.pv_addr*, %struct.pv_addr** %6, align 8
  %21 = getelementptr inbounds %struct.pv_addr, %struct.pv_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 0
  %24 = or i32 %19, %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 0
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @PTE_SYNC(i32* %31)
  %33 = load %struct.pv_addr*, %struct.pv_addr** %6, align 8
  %34 = load i32, i32* @pv_list, align 4
  %35 = call i32 @SLIST_INSERT_HEAD(i32* @kernel_pt_list, %struct.pv_addr* %33, i32 %34)
  ret void
}

declare dso_local i32 @L1_S_DOM(i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pv_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
