; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_pdpe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_pdpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@LMSPML4I = common dso_local global i64 0, align 8
@lm_ents = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"pmap_large_map_pdpe: va %#jx out of range idx %#jx LMSPML4I %#jx lm_ents %d\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_2__* null, align 8
@X86_PG_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"pmap_large_map_pdpe: invalid pml4 for va %#jx idx %#jx LMSPML4I %#jx lm_ents %d\00", align 1
@PG_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @pmap_large_map_pdpe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_large_map_pdpe(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @pmap_pml4e_index(i64 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @LMSPML4I, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ule i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @LMSPML4I, align 8
  %13 = load i64, i64* @lm_ents, align 8
  %14 = add i64 %12, %13
  %15 = icmp ult i64 %11, %14
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ false, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %2, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* @LMSPML4I, align 8
  %24 = load i64, i64* @lm_ents, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %18, i8* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kernel_pmap, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @X86_PG_V, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* @LMSPML4I, align 8
  %42 = load i64, i64* @lm_ents, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %36, i8* %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kernel_pmap, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PG_FRAME, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @PHYS_TO_DMAP(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @pmap_pdpe_index(i64 %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  ret i32* %59
}

declare dso_local i64 @pmap_pml4e_index(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_pdpe_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
