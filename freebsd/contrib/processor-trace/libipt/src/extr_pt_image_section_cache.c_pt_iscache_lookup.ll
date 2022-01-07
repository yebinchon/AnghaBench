; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, %struct.pt_iscache_entry* }
%struct.pt_iscache_entry = type { i32, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_lookup(%struct.pt_image_section_cache* %0, %struct.pt_section** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image_section_cache*, align 8
  %7 = alloca %struct.pt_section**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pt_iscache_entry*, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %6, align 8
  store %struct.pt_section** %1, %struct.pt_section*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %15 = icmp ne %struct.pt_image_section_cache* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  %18 = icmp ne %struct.pt_section** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %16, %4
  %23 = load i32, i32* @pte_internal, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %84

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @pte_bad_image, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %84

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @UINT16_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @pte_internal, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %84

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %10, align 8
  %43 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %44 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %84

49:                                               ; preds = %40
  %50 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %51 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ule i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @pte_bad_image, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %75

58:                                               ; preds = %49
  %59 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %60 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %59, i32 0, i32 1
  %61 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %61, i64 %62
  store %struct.pt_iscache_entry* %63, %struct.pt_iscache_entry** %13, align 8
  %64 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %13, align 8
  %65 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %64, i32 0, i32 1
  %66 = load %struct.pt_section*, %struct.pt_section** %65, align 8
  %67 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  store %struct.pt_section* %66, %struct.pt_section** %67, align 8
  %68 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %13, align 8
  %69 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  %73 = load %struct.pt_section*, %struct.pt_section** %72, align 8
  %74 = call i32 @pt_section_get(%struct.pt_section* %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %58, %55
  %76 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %77 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %80, %47, %37, %28, %22
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
