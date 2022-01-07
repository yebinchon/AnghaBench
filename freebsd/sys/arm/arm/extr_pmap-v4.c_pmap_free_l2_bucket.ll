; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_free_l2_bucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_free_l2_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.l2_dtable**, i32, %struct.TYPE_6__* }
%struct.l2_dtable = type { i64 }
%struct.TYPE_6__ = type { i32* }
%struct.l2_bucket = type { i64, i64, i32* }

@kernel_pmap = common dso_local global %struct.TYPE_7__* null, align 8
@L1_TYPE_MASK = common dso_local global i32 0, align 4
@L1_C_DOM_MASK = common dso_local global i32 0, align 4
@L1_TYPE_C = common dso_local global i32 0, align 4
@l2table_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.l2_bucket*, i64)* @pmap_free_l2_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_free_l2_bucket(%struct.TYPE_7__* %0, %struct.l2_bucket* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.l2_bucket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2_dtable*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.l2_bucket* %1, %struct.l2_bucket** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %14 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %18 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kernel_pmap, align 8
  %24 = icmp eq %struct.TYPE_7__* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  br label %87

26:                                               ; preds = %21
  %27 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %28 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %31 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %34 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @L1_TYPE_MASK, align 4
  %45 = load i32, i32* @L1_C_DOM_MASK, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @L1_C_DOM(i32 %51)
  %53 = load i32, i32* @L1_TYPE_C, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %26
  %57 = load i32*, i32** %8, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @PTE_SYNC(i32* %58)
  br label %60

60:                                               ; preds = %56, %26
  %61 = load i32*, i32** %10, align 8
  %62 = ptrtoint i32* %61 to i32
  %63 = call i32 (i32, ...) @pmap_free_l2_ptp(i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.l2_dtable**, %struct.l2_dtable*** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @L2_IDX(i64 %67)
  %69 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %66, i64 %68
  %70 = load %struct.l2_dtable*, %struct.l2_dtable** %69, align 8
  store %struct.l2_dtable* %70, %struct.l2_dtable** %7, align 8
  %71 = load %struct.l2_dtable*, %struct.l2_dtable** %7, align 8
  %72 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %87

77:                                               ; preds = %60
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.l2_dtable**, %struct.l2_dtable*** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @L2_IDX(i64 %81)
  %83 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %80, i64 %82
  store %struct.l2_dtable* null, %struct.l2_dtable** %83, align 8
  %84 = load i32, i32* @l2table_zone, align 4
  %85 = load %struct.l2_dtable*, %struct.l2_dtable** %7, align 8
  %86 = call i32 @uma_zfree(i32 %84, %struct.l2_dtable* %85)
  br label %87

87:                                               ; preds = %77, %76, %25
  ret void
}

declare dso_local i32 @L1_C_DOM(i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @pmap_free_l2_ptp(i32, ...) #1

declare dso_local i64 @L2_IDX(i64) #1

declare dso_local i32 @uma_zfree(i32, %struct.l2_dtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
