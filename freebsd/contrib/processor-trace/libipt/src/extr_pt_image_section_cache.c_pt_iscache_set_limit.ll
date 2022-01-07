; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_set_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_set_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, i64 }
%struct.pt_iscache_lru_entry = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_set_limit(%struct.pt_image_section_cache* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_iscache_lru_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %10 = icmp ne %struct.pt_image_section_cache* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @pte_invalid, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store %struct.pt_iscache_lru_entry* null, %struct.pt_iscache_lru_entry** %6, align 8
  %15 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %16 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %24 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %27 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %32 = call i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache* %31, %struct.pt_iscache_lru_entry** %6)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %35 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %52 = call i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %48, %19, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache*, %struct.pt_iscache_lru_entry**) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
