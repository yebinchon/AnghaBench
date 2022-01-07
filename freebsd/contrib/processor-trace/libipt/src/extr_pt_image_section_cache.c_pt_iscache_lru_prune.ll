; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lru_prune.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lru_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, i64, %struct.pt_iscache_lru_entry* }
%struct.pt_iscache_lru_entry = type { i64, %struct.pt_iscache_lru_entry* }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*, %struct.pt_iscache_lru_entry**)* @pt_iscache_lru_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache* %0, %struct.pt_iscache_lru_entry** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca %struct.pt_iscache_lru_entry**, align 8
  %6 = alloca %struct.pt_iscache_lru_entry*, align 8
  %7 = alloca %struct.pt_iscache_lru_entry**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store %struct.pt_iscache_lru_entry** %1, %struct.pt_iscache_lru_entry*** %5, align 8
  %10 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %11 = icmp ne %struct.pt_image_section_cache* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %5, align 8
  %14 = icmp ne %struct.pt_iscache_lru_entry** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %12
  %19 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %20 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %23 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %22, i32 0, i32 2
  store %struct.pt_iscache_lru_entry** %23, %struct.pt_iscache_lru_entry*** %7, align 8
  %24 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %7, align 8
  %25 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %24, align 8
  store %struct.pt_iscache_lru_entry* %25, %struct.pt_iscache_lru_entry** %6, align 8
  br label %26

26:                                               ; preds = %50, %18
  %27 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %28 = icmp ne %struct.pt_iscache_lru_entry* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %31 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %50

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %42 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  %45 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %46 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %7, align 8
  store %struct.pt_iscache_lru_entry* null, %struct.pt_iscache_lru_entry** %47, align 8
  %48 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %49 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %5, align 8
  store %struct.pt_iscache_lru_entry* %48, %struct.pt_iscache_lru_entry** %49, align 8
  store i32 0, i32* %3, align 4
  br label %58

50:                                               ; preds = %38
  %51 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %52 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %51, i32 0, i32 1
  store %struct.pt_iscache_lru_entry** %52, %struct.pt_iscache_lru_entry*** %7, align 8
  %53 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %7, align 8
  %54 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %53, align 8
  store %struct.pt_iscache_lru_entry* %54, %struct.pt_iscache_lru_entry** %6, align 8
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* @pte_internal, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %39, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
