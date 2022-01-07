; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_kenter_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_kenter_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@pg_g = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pmap_kenter_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_kenter_attr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32* @vtopte(i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @kernel_pmap, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pmap_cache_bits(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @X86_PG_RW, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @X86_PG_V, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @pg_g, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @pg_nx, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @pte_store(i32* %14, i32 %25)
  ret void
}

declare dso_local i32* @vtopte(i32) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i32 @pte_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
