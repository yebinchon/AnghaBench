; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_get_pde_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_get_pde_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.l2_dtable**, %struct.TYPE_5__* }
%struct.l2_dtable = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_get_pde_pte(%struct.TYPE_7__* %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.l2_dtable*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @L1_IDX(i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %14, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %11, align 8
  %31 = load i32**, i32*** %8, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @l1pte_section_p(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32**, i32*** %9, align 8
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %5, align 4
  br label %76

40:                                               ; preds = %21
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.l2_dtable**, %struct.l2_dtable*** %42, align 8
  %44 = icmp eq %struct.l2_dtable** %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %76

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.l2_dtable**, %struct.l2_dtable*** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @L2_IDX(i64 %51)
  %53 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %50, i64 %52
  %54 = load %struct.l2_dtable*, %struct.l2_dtable** %53, align 8
  store %struct.l2_dtable* %54, %struct.l2_dtable** %10, align 8
  %55 = load %struct.l2_dtable*, %struct.l2_dtable** %10, align 8
  %56 = icmp eq %struct.l2_dtable* %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load %struct.l2_dtable*, %struct.l2_dtable** %10, align 8
  %59 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @L2_BUCKET(i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %13, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %57, %47
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %5, align 4
  br label %76

69:                                               ; preds = %57
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @l2pte_index(i32 %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32**, i32*** %9, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %67, %45, %37, %19
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @L1_IDX(i32) #1

declare dso_local i64 @l1pte_section_p(i32) #1

declare dso_local i64 @L2_IDX(i64) #1

declare dso_local i64 @L2_BUCKET(i64) #1

declare dso_local i64 @l2pte_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
