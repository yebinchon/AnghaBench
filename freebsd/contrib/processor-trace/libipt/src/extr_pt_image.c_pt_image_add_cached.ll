; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_add_cached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_add_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { i32 }
%struct.pt_image_section_cache = type { i32 }
%struct.pt_asid = type { i32 }
%struct.pt_section = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_add_cached(%struct.pt_image* %0, %struct.pt_image_section_cache* %1, i32 %2, %struct.pt_asid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image*, align 8
  %7 = alloca %struct.pt_image_section_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pt_asid*, align 8
  %10 = alloca %struct.pt_section*, align 8
  %11 = alloca %struct.pt_asid, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %6, align 8
  store %struct.pt_image_section_cache* %1, %struct.pt_image_section_cache** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pt_asid* %3, %struct.pt_asid** %9, align 8
  %15 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %16 = icmp ne %struct.pt_image* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %19 = icmp ne %struct.pt_image_section_cache* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @pte_invalid, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %17
  %24 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pt_iscache_lookup(%struct.pt_image_section_cache* %24, %struct.pt_section** %10, i32* %12, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %23
  %32 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %33 = call i32 @pt_asid_from_user(%struct.pt_asid* %11, %struct.pt_asid* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %52

38:                                               ; preds = %31
  %39 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %40 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @pt_image_add(%struct.pt_image* %39, %struct.pt_section* %40, %struct.pt_asid* %11, i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %45 = call i32 @pt_section_put(%struct.pt_section* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48, %36, %29, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @pt_iscache_lookup(%struct.pt_image_section_cache*, %struct.pt_section**, i32*, i32) #1

declare dso_local i32 @pt_asid_from_user(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local i32 @pt_image_add(%struct.pt_image*, %struct.pt_section*, %struct.pt_asid*, i32, i32) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
