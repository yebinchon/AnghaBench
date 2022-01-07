; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"not largemap range %#lx\00", align 1
@X86_PG_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid pdp va %#lx pdpe %#lx pdp %#lx\00", align 1
@X86_PG_PS = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@AMDID_PAGE1GB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"no 1G pages, va %#lx pdpe %#lx pdp %#lx\00", align 1
@PG_PS_PDP_FRAME = common dso_local global i32 0, align 4
@PDPMASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid pd va %#lx pde %#lx pd %#lx\00", align 1
@PG_PS_FRAME = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"invalid pte va %#lx pte %#lx pt %#lx\00", align 1
@PG_FRAME = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmap_large_map_kextract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_large_map_kextract(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PMAP_ADDRESS_IN_LARGEMAP(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %11, i8* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @pmap_large_map_pdpe(i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @X86_PG_V, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %24, i8* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @X86_PG_PS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %1
  %37 = load i32, i32* @amd_feature, align 4
  %38 = load i32, i32* @AMDID_PAGE1GB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %41, i8* %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PG_PS_PDP_FRAME, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PDPMASK, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %51, %54
  store i32 %55, i32* %2, align 4
  br label %111

56:                                               ; preds = %1
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32* @pmap_pdpe_to_pde(i32* %57, i32 %58)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @X86_PG_V, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %3, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = ptrtoint i32* %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @KASSERT(i32 %66, i8* %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @X86_PG_PS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %56
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @PG_PS_FRAME, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @PDRMASK, align 4
  %84 = and i32 %82, %83
  %85 = or i32 %81, %84
  store i32 %85, i32* %2, align 4
  br label %111

86:                                               ; preds = %56
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32* @pmap_pde_to_pte(i32* %87, i32 %88)
  store i32* %89, i32** %8, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @X86_PG_V, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %3, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @KASSERT(i32 %96, i8* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @PG_FRAME, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @PAGE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = or i32 %106, %109
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %86, %78, %36
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_ADDRESS_IN_LARGEMAP(i32) #1

declare dso_local i32* @pmap_large_map_pdpe(i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
