; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_isache_lru_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_isache_lru_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, i64, %struct.pt_iscache_lru_entry* }
%struct.pt_iscache_lru_entry = type { %struct.pt_iscache_lru_entry*, i64, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@pte_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*, %struct.pt_section*)* @pt_isache_lru_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_isache_lru_new(%struct.pt_image_section_cache* %0, %struct.pt_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca %struct.pt_iscache_lru_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store %struct.pt_section* %1, %struct.pt_section** %5, align 8
  %12 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %13 = icmp ne %struct.pt_image_section_cache* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %19 = call i32 @pt_section_memsize(%struct.pt_section* %18, i64* %7)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %3, align 4
  br label %88

24:                                               ; preds = %17
  %25 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %26 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %88

32:                                               ; preds = %24
  %33 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %34 = call i32 @pt_section_map_share(%struct.pt_section* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %88

39:                                               ; preds = %32
  %40 = call %struct.pt_iscache_lru_entry* @malloc(i32 24)
  store %struct.pt_iscache_lru_entry* %40, %struct.pt_iscache_lru_entry** %6, align 8
  %41 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %42 = icmp ne %struct.pt_iscache_lru_entry* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %45 = call i32 @pt_section_unmap(%struct.pt_section* %44)
  %46 = load i32, i32* @pte_nomem, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %39
  %49 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %50 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %51 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %50, i32 0, i32 2
  store %struct.pt_section* %49, %struct.pt_section** %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %54 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %56 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %55, i32 0, i32 2
  %57 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %56, align 8
  %58 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %59 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %58, i32 0, i32 0
  store %struct.pt_iscache_lru_entry* %57, %struct.pt_iscache_lru_entry** %59, align 8
  %60 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %61 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %62 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %61, i32 0, i32 2
  store %struct.pt_iscache_lru_entry* %60, %struct.pt_iscache_lru_entry** %62, align 8
  %63 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %64 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %48
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %48
  %77 = load i32, i32* @pte_overflow, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %72
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %82 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp slt i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %76, %43, %37, %31, %22, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @pt_section_memsize(%struct.pt_section*, i64*) #1

declare dso_local i32 @pt_section_map_share(%struct.pt_section*) #1

declare dso_local %struct.pt_iscache_lru_entry* @malloc(i32) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
