; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_mmap_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_mmap_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32, i32 }
%struct.vm_memmap = type { i64, i32, i64, i64, i32, i32 }

@VM_MEM_F_WIRED = common dso_local global i32 0, align 4
@VM_MEMMAP_F_WIRED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@VM_MMAP_MEMSEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap_memseg(%struct.vmctx* %0, i64 %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_memmap, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 3
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 5
  store i32 0, i32* %27, align 4
  %28 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %29 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VM_MEM_F_WIRED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* @VM_MEMMAP_F_WIRED, align 4
  %36 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %6
  %40 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %41 = call i32 @vm_mmap_getnext(%struct.vmctx* %40, i64* %9, i32* %10, i64* %11, i64* %12, i32* %13, i32* %16)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %16, align 4
  %66 = getelementptr inbounds %struct.vm_memmap, %struct.vm_memmap* %14, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %59, %54, %49
  %70 = load i32, i32* @EEXIST, align 4
  store i32 %70, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %79

71:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %79

72:                                               ; preds = %44, %39
  %73 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %74 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VM_MMAP_MEMSEG, align 4
  %77 = call i32 @ioctl(i32 %75, i32 %76, %struct.vm_memmap* %14)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %72, %71, %69
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @vm_mmap_getnext(%struct.vmctx*, i64*, i32*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_memmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
