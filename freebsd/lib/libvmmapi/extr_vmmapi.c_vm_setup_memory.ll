; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_setup_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_setup_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i64, i64, i64, i8* }

@VM_MMAP_ALL = common dso_local global i32 0, align 4
@GB = common dso_local global i32 0, align 4
@VM_SYSMEM = common dso_local global i32 0, align 4
@VM_MMAP_GUARD_SIZE = common dso_local global i64 0, align 8
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_GUARD = common dso_local global i32 0, align 4
@MAP_ALIGNED_SUPER = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_setup_memory(%struct.vmctx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @VM_MMAP_ALL, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %21 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %26 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %29 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %32 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %36 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @GB, align 4
  %38 = mul nsw i32 4, %37
  %39 = sext i32 %38 to i64
  %40 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %41 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  store i64 %43, i64* %8, align 8
  br label %53

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %47 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %49 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %51 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %44, %24
  %54 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %55 = load i32, i32* @VM_SYSMEM, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @vm_alloc_memseg(%struct.vmctx* %54, i32 %55, i64 %56, i32* null)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %125

62:                                               ; preds = %53
  %63 = load i64, i64* @VM_MMAP_GUARD_SIZE, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %63, %64
  %66 = load i64, i64* @VM_MMAP_GUARD_SIZE, align 8
  %67 = add i64 %65, %66
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* @PROT_NONE, align 4
  %70 = load i32, i32* @MAP_GUARD, align 4
  %71 = load i32, i32* @MAP_ALIGNED_SUPER, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @mmap(i32* null, i64 %68, i32 %69, i32 %72, i32 -1, i32 0)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** @MAP_FAILED, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %125

78:                                               ; preds = %62
  %79 = load i8*, i8** %12, align 8
  %80 = load i64, i64* @VM_MMAP_GUARD_SIZE, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %11, align 8
  %82 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %83 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %78
  %87 = load i32, i32* @GB, align 4
  %88 = mul nsw i32 4, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %90 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @setup_memory_segment(%struct.vmctx* %92, i32 %93, i64 %94, i8* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %125

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %78
  %103 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %104 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  %108 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %109 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %9, align 8
  %111 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i64, i64* %9, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @setup_memory_segment(%struct.vmctx* %111, i32 %112, i64 %113, i8* %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %125

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %102
  %122 = load i8*, i8** %11, align 8
  %123 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %124 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %118, %99, %77, %60
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_alloc_memseg(%struct.vmctx*, i32, i64, i32*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @setup_memory_segment(%struct.vmctx*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
