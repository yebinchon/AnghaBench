; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_image_section_cache* }
%struct.pt_image_section_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_map(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %7 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %8 = icmp ne %struct.pt_section* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %14 = call i32 @pt_section_map_share(%struct.pt_section* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %12
  %20 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %21 = call i32 @pt_section_lock_attach(%struct.pt_section* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %27 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %28 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %27, i32 0, i32 0
  %29 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %28, align 8
  store %struct.pt_image_section_cache* %29, %struct.pt_image_section_cache** %4, align 8
  %30 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %31 = icmp ne %struct.pt_image_section_cache* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %34 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %35 = call i32 @pt_iscache_notify_map(%struct.pt_image_section_cache* %33, %struct.pt_section* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %38 = call i32 @pt_section_unlock_attach(%struct.pt_section* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %24, %17, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pt_section_map_share(%struct.pt_section*) #1

declare dso_local i32 @pt_section_lock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_notify_map(%struct.pt_image_section_cache*, %struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock_attach(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
