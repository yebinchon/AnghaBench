; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_alloc_bcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_alloc_bcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_image_section_cache*, %struct.pt_block_cache*, i32 }
%struct.pt_image_section_cache = type { i32 }
%struct.pt_block_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_not_supported = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_alloc_bcache(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca %struct.pt_block_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %10 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %11 = icmp ne %struct.pt_section* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %17 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %104

23:                                               ; preds = %15
  %24 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %25 = call i64 @pt_section_size(%struct.pt_section* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @pte_not_supported, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %104

33:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  %34 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %35 = call i32 @pt_section_lock_attach(%struct.pt_section* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %104

40:                                               ; preds = %33
  %41 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %42 = call i32 @pt_section_lock(%struct.pt_section* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %100

46:                                               ; preds = %40
  %47 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %48 = call %struct.pt_block_cache* @pt_section_bcache(%struct.pt_section* %47)
  store %struct.pt_block_cache* %48, %struct.pt_block_cache** %5, align 8
  %49 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %50 = icmp ne %struct.pt_block_cache* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %97

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = call %struct.pt_block_cache* @pt_bcache_alloc(i64 %53)
  store %struct.pt_block_cache* %54, %struct.pt_block_cache** %5, align 8
  %55 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %56 = icmp ne %struct.pt_block_cache* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @pte_nomem, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %97

60:                                               ; preds = %52
  %61 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %62 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %63 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %62, i32 0, i32 1
  store %struct.pt_block_cache* %61, %struct.pt_block_cache** %63, align 8
  %64 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %65 = call i32 @pt_section_memsize_locked(%struct.pt_section* %64, i64* %7)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %97

69:                                               ; preds = %60
  %70 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %71 = call i32 @pt_section_unlock(%struct.pt_section* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %100

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %80 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %79, i32 0, i32 0
  %81 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %80, align 8
  store %struct.pt_image_section_cache* %81, %struct.pt_image_section_cache** %4, align 8
  %82 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %83 = icmp ne %struct.pt_image_section_cache* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %86 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @pt_iscache_notify_resize(%struct.pt_image_section_cache* %85, %struct.pt_section* %86, i64 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %100

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %96 = call i32 @pt_section_unlock_attach(%struct.pt_section* %95)
  store i32 %96, i32* %2, align 4
  br label %104

97:                                               ; preds = %68, %57, %51
  %98 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %99 = call i32 @pt_section_unlock(%struct.pt_section* %98)
  br label %100

100:                                              ; preds = %97, %91, %74, %45
  %101 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %102 = call i32 @pt_section_unlock_attach(%struct.pt_section* %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %94, %38, %30, %20, %12
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @pt_section_size(%struct.pt_section*) #1

declare dso_local i32 @pt_section_lock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local %struct.pt_block_cache* @pt_section_bcache(%struct.pt_section*) #1

declare dso_local %struct.pt_block_cache* @pt_bcache_alloc(i64) #1

declare dso_local i32 @pt_section_memsize_locked(%struct.pt_section*, i64*) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_notify_resize(%struct.pt_image_section_cache*, %struct.pt_section*, i64) #1

declare dso_local i32 @pt_section_unlock_attach(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
