; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { i32, i32 }
%struct.pt_mapped_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_validate(%struct.pt_image* %0, %struct.pt_mapped_section* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image*, align 8
  %7 = alloca %struct.pt_mapped_section*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_section_list*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %6, align 8
  store %struct.pt_mapped_section* %1, %struct.pt_mapped_section** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %15 = icmp ne %struct.pt_image* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %18 = icmp ne %struct.pt_mapped_section* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %16
  %23 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %24 = call i64 @pt_msec_begin(%struct.pt_mapped_section* %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %26 = call i64 @pt_msec_end(%struct.pt_mapped_section* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %22
  %35 = load i32, i32* @pte_nomap, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %66

37:                                               ; preds = %30
  %38 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %39 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %38, i32 0, i32 0
  %40 = load %struct.pt_section_list*, %struct.pt_section_list** %39, align 8
  store %struct.pt_section_list* %40, %struct.pt_section_list** %10, align 8
  %41 = load %struct.pt_section_list*, %struct.pt_section_list** %10, align 8
  %42 = icmp ne %struct.pt_section_list* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @pte_nomap, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %66

46:                                               ; preds = %37
  %47 = load %struct.pt_section_list*, %struct.pt_section_list** %10, align 8
  %48 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @pte_nomap, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load %struct.pt_section_list*, %struct.pt_section_list** %10, align 8
  %57 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %56, i32 0, i32 1
  %58 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %59 = call i32 @memcmp(i32* %57, %struct.pt_mapped_section* %58, i32 4)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @pte_nomap, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %62, %52, %43, %34, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @pt_msec_begin(%struct.pt_mapped_section*) #1

declare dso_local i64 @pt_msec_end(%struct.pt_mapped_section*) #1

declare dso_local i32 @memcmp(i32*, %struct.pt_mapped_section*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
