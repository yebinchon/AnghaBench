; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_qenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_qenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@kernel_pmap = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@X86_PG_PTE_CACHE = common dso_local global i32 0, align 4
@pg_g = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_qenter(i64 %0, %struct.TYPE_6__** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32* @vtopte(i64 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %61, %3
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i32 1
  store %struct.TYPE_6__** %25, %struct.TYPE_6__*** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load i32, i32* @kernel_pmap, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pmap_cache_bits(i32 %27, i32 %31, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %33)
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PG_FRAME, align 4
  %40 = load i32, i32* @X86_PG_PTE_CACHE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %23
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @pg_g, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @pg_nx, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @X86_PG_RW, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @X86_PG_V, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @pte_store(i32* %50, i32 %59)
  br label %61

61:                                               ; preds = %45, %23
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %10, align 8
  br label %19

64:                                               ; preds = %19
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @X86_PG_V, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @__predict_false(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load i32, i32* @kernel_pmap, align 4
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = call i32 @pmap_invalidate_range(i32 %73, i64 %74, i64 %80)
  br label %82

82:                                               ; preds = %72, %64
  ret void
}

declare dso_local i32* @vtopte(i64) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @pte_store(i32*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
