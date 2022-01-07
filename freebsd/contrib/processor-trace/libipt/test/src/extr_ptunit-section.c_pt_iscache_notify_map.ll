; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_pt_iscache_notify_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_pt_iscache_notify_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_notify_map(%struct.pt_image_section_cache* %0, %struct.pt_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca %struct.pt_section*, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store %struct.pt_section* %1, %struct.pt_section** %5, align 8
  %6 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %7 = icmp ne %struct.pt_image_section_cache* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %13 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %18 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %23 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %25 = call i32 @pt_section_map_share(%struct.pt_section* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %16, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @pt_section_map_share(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
