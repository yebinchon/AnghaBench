; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_mmap_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_mmap_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.mem_map* }
%struct.mem_map = type { i64, i64, i32, i32, i32, i32 }

@VM_MAX_MEMMAPS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap_getnext(%struct.vm* %0, i64* %1, i32* %2, i32* %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mem_map*, align 8
  %17 = alloca %struct.mem_map*, align 8
  %18 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.mem_map* null, %struct.mem_map** %17, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %56, %7
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* @VM_MAX_MEMMAPS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load %struct.vm*, %struct.vm** %9, align 8
  %25 = getelementptr inbounds %struct.vm, %struct.vm* %24, i32 0, i32 0
  %26 = load %struct.mem_map*, %struct.mem_map** %25, align 8
  %27 = load i32, i32* %18, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %26, i64 %28
  store %struct.mem_map* %29, %struct.mem_map** %16, align 8
  %30 = load %struct.mem_map*, %struct.mem_map** %16, align 8
  %31 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct.mem_map*, %struct.mem_map** %16, align 8
  %36 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %23
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %44 = icmp eq %struct.mem_map* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load %struct.mem_map*, %struct.mem_map** %16, align 8
  %47 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %50 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45, %42
  %54 = load %struct.mem_map*, %struct.mem_map** %16, align 8
  store %struct.mem_map* %54, %struct.mem_map** %17, align 8
  br label %55

55:                                               ; preds = %53, %45
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %18, align 4
  br label %19

59:                                               ; preds = %19
  %60 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %61 = icmp ne %struct.mem_map* %60, null
  br i1 %61, label %62, label %107

62:                                               ; preds = %59
  %63 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %64 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %71 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %79 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i64*, i64** %13, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %87 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %13, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %95 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %14, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32*, i32** %15, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %103 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  store i32 0, i32* %8, align 4
  br label %109

107:                                              ; preds = %59
  %108 = load i32, i32* @ENOENT, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
