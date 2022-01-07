; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_qenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_qenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@kernel_pmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_qenter: Invalid page entry, va: 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pmap_qenter: Invalid level %d\00", align 1
@ATTR_DEFAULT = common dso_local global i32 0, align 4
@ATTR_AP_RW = common dso_local global i32 0, align 4
@ATTR_UXN = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@DEVICE_MEMORY = common dso_local global i64 0, align 8
@ATTR_XN = common dso_local global i32 0, align 4
@L3_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_qenter(i32 %0, %struct.TYPE_6__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %81, %3
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load i32, i32* @kernel_pmap, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32* @pmap_pde(i32 %20, i32 %21, i32* %13)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %32, i8* %35)
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %11, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %42)
  %44 = load i32, i32* @ATTR_DEFAULT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ATTR_AP_RW, align 4
  %47 = call i32 @ATTR_AP(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* @ATTR_UXN, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ATTR_IDX(i64 %54)
  %56 = or i32 %50, %55
  %57 = load i32, i32* @L3_PAGE, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DEVICE_MEMORY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %19
  %66 = load i32, i32* @ATTR_XN, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %19
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32* @pmap_l2_to_l3(i32* %70, i32 %71)
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @pmap_load_store(i32* %73, i32 %74)
  %76 = load i64, i64* @L3_SIZE, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %15

84:                                               ; preds = %15
  %85 = load i32, i32* @kernel_pmap, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @pmap_invalidate_range(i32 %85, i32 %86, i32 %87)
  ret void
}

declare dso_local i32* @pmap_pde(i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32 @ATTR_IDX(i64) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_load_store(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
