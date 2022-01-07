; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c__pmap_unwire_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c__pmap_unwire_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NUL2E = common dso_local global i64 0, align 8
@NUL1E = common dso_local global i64 0, align 8
@ATTR_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_6__*, %struct.spglist*)* @_pmap_unwire_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pmap_unwire_l3(i32 %0, i32 %1, %struct.TYPE_6__* %2, %struct.spglist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.spglist*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.spglist* %3, %struct.spglist** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @PMAP_LOCK_ASSERT(i32 %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NUL2E, align 8
  %25 = load i64, i64* @NUL1E, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32* @pmap_l0(i32 %29, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @pmap_clear(i32* %32)
  br label %53

34:                                               ; preds = %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NUL2E, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32* @pmap_l1(i32 %41, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @pmap_clear(i32* %44)
  br label %52

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32* @pmap_l2(i32 %47, i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @pmap_clear(i32* %50)
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pmap_resident_count_dec(i32 %54, i32 1)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NUL2E, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32* @pmap_l1(i32 %62, i32 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @pmap_load(i32* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @ATTR_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32 %70)
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %14, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = load %struct.spglist*, %struct.spglist** %8, align 8
  %76 = call i32 @pmap_unwire_l3(i32 %72, i32 %73, %struct.TYPE_6__* %74, %struct.spglist* %75)
  br label %102

77:                                               ; preds = %53
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NUL2E, align 8
  %82 = load i64, i64* @NUL1E, align 8
  %83 = add nsw i64 %81, %82
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32* @pmap_l0(i32 %86, i32 %87)
  store i32* %88, i32** %15, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @pmap_load(i32* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @ATTR_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32 %94)
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %17, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = load %struct.spglist*, %struct.spglist** %8, align 8
  %100 = call i32 @pmap_unwire_l3(i32 %96, i32 %97, %struct.TYPE_6__* %98, %struct.spglist* %99)
  br label %101

101:                                              ; preds = %85, %77
  br label %102

102:                                              ; preds = %101, %61
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @pmap_invalidate_page(i32 %103, i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = load %struct.spglist*, %struct.spglist** %8, align 8
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_6__* %106, %struct.spglist* %107, i32 %108)
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32* @pmap_l0(i32, i32) #1

declare dso_local i32 @pmap_clear(i32*) #1

declare dso_local i32* @pmap_l1(i32, i32) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i32 @pmap_resident_count_dec(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_unwire_l3(i32, i32, %struct.TYPE_6__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_6__*, %struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
