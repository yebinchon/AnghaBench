; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.l2_bucket = type { i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PVF_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pmap_unwire: pv %p isn't wired\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unwire(%struct.TYPE_17__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2_bucket*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call i32 @PMAP_LOCK(%struct.TYPE_17__* %14)
  br label %16

16:                                               ; preds = %96, %34, %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %97

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @L2_NEXT_BUCKET(i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_17__* %29, i64 %30)
  store %struct.l2_bucket* %31, %struct.l2_bucket** %7, align 8
  %32 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %33 = icmp eq %struct.l2_bucket* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %5, align 8
  br label %16

36:                                               ; preds = %28
  %37 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %38 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @l2pte_index(i64 %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %90, %36
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @l2pte_pa(i32 %52)
  %54 = call %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32 %53)
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %12, align 8
  %55 = icmp eq %struct.TYPE_15__* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VPO_UNMANAGED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %51, %47
  br label %90

64:                                               ; preds = %56
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call %struct.TYPE_16__* @pmap_find_pv(%struct.TYPE_15__* %65, %struct.TYPE_17__* %66, i64 %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %10, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PVF_WIRED, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %76)
  br label %78

78:                                               ; preds = %75, %64
  %79 = load i32, i32* @PVF_WIRED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %78, %63
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  br label %43

96:                                               ; preds = %43
  br label %16

97:                                               ; preds = %16
  %98 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = call i32 @PMAP_UNLOCK(%struct.TYPE_17__* %99)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_17__*) #1

declare dso_local i64 @L2_NEXT_BUCKET(i64) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @l2pte_index(i64) #1

declare dso_local %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @l2pte_pa(i32) #1

declare dso_local %struct.TYPE_16__* @pmap_find_pv(%struct.TYPE_15__*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
