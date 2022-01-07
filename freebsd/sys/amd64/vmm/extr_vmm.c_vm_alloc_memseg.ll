; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_alloc_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_alloc_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.mem_seg* }
%struct.mem_seg = type { i64, i32, i32* }

@VM_MAX_MEMSEGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_alloc_memseg(%struct.vm* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_seg*, align 8
  %11 = alloca i32*, align 8
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VM_MAX_MEMSEGS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %77

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %23
  %31 = load %struct.vm*, %struct.vm** %6, align 8
  %32 = getelementptr inbounds %struct.vm, %struct.vm* %31, i32 0, i32 0
  %33 = load %struct.mem_seg*, %struct.mem_seg** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %33, i64 %35
  store %struct.mem_seg* %36, %struct.mem_seg** %10, align 8
  %37 = load %struct.mem_seg*, %struct.mem_seg** %10, align 8
  %38 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %30
  %42 = load %struct.mem_seg*, %struct.mem_seg** %10, align 8
  %43 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.mem_seg*, %struct.mem_seg** %10, align 8
  %49 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EEXIST, align 4
  store i32 %54, i32* %5, align 4
  br label %77

55:                                               ; preds = %47, %41
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %5, align 4
  br label %77

57:                                               ; preds = %30
  %58 = load i32, i32* @OBJT_DEFAULT, align 4
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @PAGE_SHIFT, align 8
  %61 = lshr i64 %59, %60
  %62 = call i32* @vm_object_allocate(i32 %58, i64 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %5, align 4
  br label %77

67:                                               ; preds = %57
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.mem_seg*, %struct.mem_seg** %10, align 8
  %70 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.mem_seg*, %struct.mem_seg** %10, align 8
  %73 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.mem_seg*, %struct.mem_seg** %10, align 8
  %76 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %67, %65, %55, %53, %28, %18
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32* @vm_object_allocate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
