; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_on_map_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_on_map_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_image_section_cache* }
%struct.pt_image_section_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_on_map_lock(%struct.pt_section* %0) #0 {
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
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %14 = call i32 @pt_section_lock_attach(%struct.pt_section* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %12
  %20 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %21 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %20, i32 0, i32 0
  %22 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %21, align 8
  store %struct.pt_image_section_cache* %22, %struct.pt_image_section_cache** %4, align 8
  %23 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %24 = icmp ne %struct.pt_image_section_cache* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %27 = call i32 @pt_section_unlock_attach(%struct.pt_section* %26)
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %19
  %29 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %30 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %31 = call i32 @pt_iscache_notify_map(%struct.pt_image_section_cache* %29, %struct.pt_section* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %33 = call i32 @pt_section_unlock_attach(%struct.pt_section* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %25, %17, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @pt_section_lock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_notify_map(%struct.pt_image_section_cache*, %struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
