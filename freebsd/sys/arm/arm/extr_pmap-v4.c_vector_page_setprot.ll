; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_vector_page_setprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_vector_page_setprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32* }

@kernel_pmap = common dso_local global i32 0, align 4
@vector_page = common dso_local global i32 0, align 4
@L1_S_PROT_MASK = common dso_local global i32 0, align 4
@PTE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_page_setprot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2_bucket*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @kernel_pmap, align 4
  %6 = load i32, i32* @vector_page, align 4
  %7 = call %struct.l2_bucket* @pmap_get_l2_bucket(i32 %5, i32 %6)
  store %struct.l2_bucket* %7, %struct.l2_bucket** %3, align 8
  %8 = load %struct.l2_bucket*, %struct.l2_bucket** %3, align 8
  %9 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @vector_page, align 4
  %12 = call i64 @l2pte_index(i32 %11)
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @L1_S_PROT_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @PTE_KERNEL, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @L2_S_PROT(i32 %19, i32 %20)
  %22 = or i32 %18, %21
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PTE_SYNC(i32* %24)
  %26 = load i32, i32* @vector_page, align 4
  %27 = call i32 @cpu_tlb_flushD_SE(i32 %26)
  %28 = call i32 (...) @cpu_cpwait()
  ret void
}

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(i32, i32) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local i32 @L2_S_PROT(i32, i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i32) #1

declare dso_local i32 @cpu_cpwait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
