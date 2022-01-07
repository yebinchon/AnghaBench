; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_pt_iscache_notify_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_pt_iscache_notify_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_notify_resize(%struct.pt_image_section_cache* %0, %struct.pt_section* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_image_section_cache*, align 8
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %5, align 8
  store %struct.pt_section* %1, %struct.pt_section** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %11 = icmp ne %struct.pt_image_section_cache* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %17 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %22 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %27 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %29 = call i32 @pt_section_memsize(%struct.pt_section* %28, i64* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %25
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @pte_internal, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %43 = call i32 @pt_section_map_share(%struct.pt_section* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %38, %32, %20, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @pt_section_memsize(%struct.pt_section*, i64*) #1

declare dso_local i32 @pt_section_map_share(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
