; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_destruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bo = type { i64, i32, i32*, %struct.TYPE_7__**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PG_FICTITIOUS = common dso_local global i32 0, align 4
@kmem_arena = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_bo*)* @tegra_bo_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bo_destruct(%struct.tegra_bo* %0) #0 {
  %2 = alloca %struct.tegra_bo*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_bo* %0, %struct.tegra_bo** %2, align 8
  %6 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %86

11:                                               ; preds = %1
  %12 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @round_page(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pmap_qremove(i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %11
  %30 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %31 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @VM_OBJECT_WLOCK(i32* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %63, %29
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %42 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %3, align 8
  %48 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %49 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = call i32 @cdev_pager_free_page(i32* %50, %struct.TYPE_7__* %51)
  %53 = load i32, i32* @PG_FICTITIOUS, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = call i32 @vm_page_unwire_noq(%struct.TYPE_7__* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = call i32 @vm_page_free(%struct.TYPE_7__* %61)
  br label %63

63:                                               ; preds = %40
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %68 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @VM_OBJECT_WUNLOCK(i32* %69)
  %71 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %72 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @vm_object_deallocate(i32* %73)
  %75 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %76 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i32, i32* @kmem_arena, align 4
  %81 = load %struct.tegra_bo*, %struct.tegra_bo** %2, align 8
  %82 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @vmem_free(i32 %80, i64 %83, i64 %84)
  br label %86

86:                                               ; preds = %10, %79, %66
  ret void
}

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @cdev_pager_free_page(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @vm_page_unwire_noq(%struct.TYPE_7__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @vmem_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
