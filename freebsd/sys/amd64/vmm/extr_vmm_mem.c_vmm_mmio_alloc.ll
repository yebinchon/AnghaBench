; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_mem.c_vmm_mmio_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_mem.c_vmm_mmio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i32 }
%struct.sglist = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error %d appending physaddr to sglist\00", align 1
@OBJT_SG = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"vmm_mmio_alloc: vm_object_set_memattr error %d\00", align 1
@VMFS_NO_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vmm_mmio_alloc(%struct.vmspace* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vmspace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sglist*, align 8
  store %struct.vmspace* %0, %struct.vmspace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = call %struct.sglist* @sglist_alloc(i32 1, i32 %12)
  store %struct.sglist* %13, %struct.sglist** %11, align 8
  %14 = load %struct.sglist*, %struct.sglist** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @sglist_append_phys(%struct.sglist* %14, i32 %15, i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load i32, i32* @OBJT_SG, align 4
  %26 = load %struct.sglist*, %struct.sglist** %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @VM_PROT_RW, align 4
  %29 = call i32* @vm_pager_allocate(i32 %25, %struct.sglist* %26, i64 %27, i32 %28, i32 0, i32* null)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @VM_OBJECT_WLOCK(i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %37 = call i32 @vm_object_set_memattr(i32* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @VM_OBJECT_WUNLOCK(i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @KERN_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %32
  %47 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %48 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %47, i32 0, i32 0
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @VMFS_NO_SPACE, align 4
  %52 = load i32, i32* @VM_PROT_RW, align 4
  %53 = load i32, i32* @VM_PROT_RW, align 4
  %54 = call i32 @vm_map_find(i32* %48, i32* %49, i32 0, i32* %6, i64 %50, i32 0, i32 %51, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @KERN_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @vm_object_deallocate(i32* %59)
  store i32* null, i32** %10, align 8
  br label %61

61:                                               ; preds = %58, %46
  br label %62

62:                                               ; preds = %61, %4
  %63 = load %struct.sglist*, %struct.sglist** %11, align 8
  %64 = call i32 @sglist_free(%struct.sglist* %63)
  %65 = load i32*, i32** %10, align 8
  ret i32* %65
}

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i32 @sglist_append_phys(%struct.sglist*, i32, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @vm_pager_allocate(i32, %struct.sglist*, i64, i32, i32, i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_set_memattr(i32*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vm_map_find(i32*, i32*, i32, i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @sglist_free(%struct.sglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
