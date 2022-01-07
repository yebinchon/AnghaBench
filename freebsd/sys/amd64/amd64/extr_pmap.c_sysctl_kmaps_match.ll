; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_sysctl_kmaps_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_sysctl_kmaps_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap_kernel_map_range = type { i32 }

@X86_PG_G = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_U = common dso_local global i32 0, align 4
@X86_PG_PDE_CACHE = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@X86_PG_PDE_PAT = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmap_kernel_map_range*, i32)* @sysctl_kmaps_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_kmaps_match(%struct.pmap_kernel_map_range* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmap_kernel_map_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pmap_kernel_map_range* %0, %struct.pmap_kernel_map_range** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @X86_PG_G, align 4
  %9 = load i32, i32* @X86_PG_RW, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @X86_PG_U, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @X86_PG_PDE_CACHE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @pg_nx, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %4, align 8
  %18 = getelementptr inbounds %struct.pmap_kernel_map_range, %struct.pmap_kernel_map_range* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @X86_PG_PDE_PAT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @kernel_pmap, align 4
  %35 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %4, align 8
  %36 = getelementptr inbounds %struct.pmap_kernel_map_range, %struct.pmap_kernel_map_range* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @pmap_pat_index(i32 %34, i32 %37, i32 1)
  %39 = load i32, i32* @kernel_pmap, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @pmap_pat_index(i32 %39, i32 %40, i32 1)
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @pmap_pat_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
