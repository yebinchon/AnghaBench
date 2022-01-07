; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c__pmap_unwire_ptp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c__pmap_unwire_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i64 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NUPDE = common dso_local global i64 0, align 8
@NUPDPE = common dso_local global i64 0, align 8
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PG_FRAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, %struct.TYPE_14__*, %struct.spglist*)* @_pmap_unwire_ptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pmap_unwire_ptp(%struct.TYPE_15__* %0, i64 %1, %struct.TYPE_14__* %2, %struct.spglist* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.spglist*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.spglist* %3, %struct.spglist** %8, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_15__* %14, i32 %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NUPDE, align 8
  %21 = load i64, i64* @NUPDPE, align 8
  %22 = add nsw i64 %20, %21
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32* @pmap_pml4e(%struct.TYPE_15__* %25, i64 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @pmap_pml4e_index(i64 %41)
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %33, %24
  br label %63

46:                                               ; preds = %4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NUPDE, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32* @pmap_pdpe(%struct.TYPE_15__* %53, i64 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  store i32 0, i32* %56, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64* @pmap_pde(%struct.TYPE_15__* %58, i64 %59)
  store i64* %60, i64** %11, align 8
  %61 = load i64*, i64** %11, align 8
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = call i32 @pmap_resident_count_dec(%struct.TYPE_15__* %64, i32 1)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NUPDE, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32* @pmap_pdpe(%struct.TYPE_15__* %72, i64 %73)
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PG_FRAME, align 4
  %77 = and i32 %75, %76
  %78 = call %struct.TYPE_14__* @PHYS_TO_VM_PAGE(i32 %77)
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %12, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = load %struct.spglist*, %struct.spglist** %8, align 8
  %83 = call i32 @pmap_unwire_ptp(%struct.TYPE_15__* %79, i64 %80, %struct.TYPE_14__* %81, %struct.spglist* %82)
  br label %84

84:                                               ; preds = %71, %63
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NUPDE, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NUPDE, align 8
  %95 = load i64, i64* @NUPDPE, align 8
  %96 = add nsw i64 %94, %95
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32* @pmap_pml4e(%struct.TYPE_15__* %99, i64 %100)
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PG_FRAME, align 4
  %104 = and i32 %102, %103
  %105 = call %struct.TYPE_14__* @PHYS_TO_VM_PAGE(i32 %104)
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %13, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %109 = load %struct.spglist*, %struct.spglist** %8, align 8
  %110 = call i32 @pmap_unwire_ptp(%struct.TYPE_15__* %106, i64 %107, %struct.TYPE_14__* %108, %struct.spglist* %109)
  br label %111

111:                                              ; preds = %98, %90, %84
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = load %struct.spglist*, %struct.spglist** %8, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_14__* %112, %struct.spglist* %113, i32 %114)
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @pmap_pml4e(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @pmap_pml4e_index(i64) #1

declare dso_local i32* @pmap_pdpe(%struct.TYPE_15__*, i64) #1

declare dso_local i64* @pmap_pde(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_unwire_ptp(%struct.TYPE_15__*, i64, %struct.TYPE_14__*, %struct.spglist*) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_14__*, %struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
