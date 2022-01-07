; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_init_pager.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_init_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bo = type { i32, %struct.TYPE_7__**, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@kmem_arena = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bo*)* @tegra_bo_init_pager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_init_pager(%struct.tegra_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bo*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_bo* %0, %struct.tegra_bo** %3, align 8
  %7 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @round_page(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %14, i64 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %16)
  %18 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @kmem_arena, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_BESTFIT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %25, i32 0, i32 2
  %27 = call i64 @vmem_alloc(i32 %20, i64 %21, i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %89

31:                                               ; preds = %1
  %32 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VM_OBJECT_WLOCK(i32 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %71, %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %4, align 8
  %50 = load i32, i32* @VPO_UNMANAGED, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @PG_FICTITIOUS, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @vm_page_insert(%struct.TYPE_7__* %61, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %42
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %2, align 4
  br label %89

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %76 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @VM_OBJECT_WUNLOCK(i32 %77)
  %79 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %83 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %83, align 8
  %85 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pmap_qenter(i32 %81, %struct.TYPE_7__** %84, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %74, %68, %29
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__*) #1

declare dso_local i64 @vmem_alloc(i32, i64, i32, i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i64 @vm_page_insert(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @pmap_qenter(i32, %struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
