; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_zap_vma_ptes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_zap_vma_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@OBJ_UNMANAGED = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_vma_ptes(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OBJ_UNMANAGED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %3
  %23 = load i32, i32* @ENOTSUP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_11__* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @OFF_TO_IDX(i64 %29)
  %31 = call %struct.TYPE_10__* @vm_page_find_least(%struct.TYPE_11__* %28, i64 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %9, align 8
  br label %32

32:                                               ; preds = %49, %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = call i64 @OFF_TO_IDX(i64 %41)
  %43 = icmp slt i64 %38, %42
  br label %44

44:                                               ; preds = %35, %32
  %45 = phi i1 [ false, %32 ], [ %43, %35 ]
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = call i32 @pmap_remove_all(%struct.TYPE_10__* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = load i32, i32* @listq, align 4
  %52 = call %struct.TYPE_10__* @TAILQ_NEXT(%struct.TYPE_10__* %50, i32 %51)
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %9, align 8
  br label %32

53:                                               ; preds = %44
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_11__* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @vm_page_find_least(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @OFF_TO_IDX(i64) #1

declare dso_local i32 @pmap_remove_all(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @TAILQ_NEXT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
