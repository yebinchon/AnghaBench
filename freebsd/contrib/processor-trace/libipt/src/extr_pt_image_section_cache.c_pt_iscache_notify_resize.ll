; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_notify_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_notify_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32 }
%struct.pt_section = type { i32 }
%struct.pt_iscache_lru_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_notify_resize(%struct.pt_image_section_cache* %0, %struct.pt_section* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_image_section_cache*, align 8
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_iscache_lru_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %5, align 8
  store %struct.pt_section* %1, %struct.pt_section** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pt_iscache_lru_entry* null, %struct.pt_iscache_lru_entry** %8, align 8
  %11 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %12 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %19 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pt_iscache_lru_resize(%struct.pt_image_section_cache* %18, %struct.pt_section* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %26 = call i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache* %25, %struct.pt_iscache_lru_entry** %8)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %29 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %32
  %45 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %8, align 8
  %46 = call i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %42, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_resize(%struct.pt_image_section_cache*, %struct.pt_section*, i32) #1

declare dso_local i32 @pt_iscache_lru_prune(%struct.pt_image_section_cache*, %struct.pt_iscache_lru_entry**) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
