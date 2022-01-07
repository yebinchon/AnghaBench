; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_notify_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_notify_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32 }
%struct.pt_section = type { i32 }
%struct.pt_iscache_lru_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_notify_map(%struct.pt_image_section_cache* %0, %struct.pt_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca %struct.pt_iscache_lru_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store %struct.pt_section* %1, %struct.pt_section** %5, align 8
  store %struct.pt_iscache_lru_entry* null, %struct.pt_iscache_lru_entry** %6, align 8
  %9 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %10 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %17 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %18 = call i32 @pt_iscache_lru_add(%struct.pt_image_section_cache* %16, %struct.pt_section* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %23 = call i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache* %22, %struct.pt_iscache_lru_entry** %6)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %26 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %43 = call i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %39, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_add(%struct.pt_image_section_cache*, %struct.pt_section*) #1

declare dso_local i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache*, %struct.pt_iscache_lru_entry**) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
