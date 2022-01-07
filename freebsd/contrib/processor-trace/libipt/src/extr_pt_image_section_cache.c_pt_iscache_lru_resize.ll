; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lru_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lru_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, i64, %struct.pt_iscache_lru_entry* }
%struct.pt_iscache_lru_entry = type { i64, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*, %struct.pt_section*, i64)* @pt_iscache_lru_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_iscache_lru_resize(%struct.pt_image_section_cache* %0, %struct.pt_section* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_image_section_cache*, align 8
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_iscache_lru_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %5, align 8
  store %struct.pt_section* %1, %struct.pt_section** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %13 = icmp ne %struct.pt_image_section_cache* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %19 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %20 = call i32 @pt_iscache_lru_add(%struct.pt_image_section_cache* %18, %struct.pt_section* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %27 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %26, i32 0, i32 2
  %28 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %27, align 8
  store %struct.pt_iscache_lru_entry* %28, %struct.pt_iscache_lru_entry** %8, align 8
  %29 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %8, align 8
  %30 = icmp ne %struct.pt_iscache_lru_entry* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @pte_internal, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %85

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %85

38:                                               ; preds = %25
  %39 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %8, align 8
  %40 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %39, i32 0, i32 1
  %41 = load %struct.pt_section*, %struct.pt_section** %40, align 8
  %42 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %43 = icmp ne %struct.pt_section* %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %46 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %85

51:                                               ; preds = %44
  %52 = load i32, i32* @pte_internal, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %85

54:                                               ; preds = %38
  %55 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %8, align 8
  %56 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %8, align 8
  %60 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %85

65:                                               ; preds = %54
  %66 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %67 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %77 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %79 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %65, %63, %51, %50, %37, %34, %23, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @pt_iscache_lru_add(%struct.pt_image_section_cache*, %struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
