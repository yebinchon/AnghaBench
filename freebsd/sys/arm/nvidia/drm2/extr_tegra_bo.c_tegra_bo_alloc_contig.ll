; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_alloc_contig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_alloc_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, %struct.TYPE_5__***)* @tegra_bo_alloc_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_alloc_contig(i64 %0, i32 %1, i32 %2, %struct.TYPE_5__*** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__***, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__*** %3, %struct.TYPE_5__**** %9, align 8
  store i64 0, i64* %14, align 8
  store i64 -1, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %18 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %51, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %16, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.TYPE_5__* @vm_page_alloc_contig(i32* null, i32 0, i32 %27, i64 %28, i64 %29, i64 %30, i32 %31, i64 %32, i32 %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = icmp eq %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @vm_page_reclaim_contig(i32 %41, i64 %42, i64 %43, i64 %44, i32 %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = call i32 @vm_wait(i32* null)
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %26

54:                                               ; preds = %37
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %5, align 4
  br label %88

56:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %82, %56
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PG_ZERO, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = call i32 @pmap_zero_page(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %9, align 8
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 %80
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %81, align 8
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 1
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %10, align 8
  br label %57

87:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_5__* @vm_page_alloc_contig(i32*, i32, i32, i64, i64, i64, i32, i64, i32) #1

declare dso_local i32 @vm_page_reclaim_contig(i32, i64, i64, i64, i32, i64) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
