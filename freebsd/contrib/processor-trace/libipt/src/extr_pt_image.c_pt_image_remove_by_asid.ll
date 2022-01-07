; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_remove_by_asid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_remove_by_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { %struct.pt_section_list*, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_asid = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_remove_by_asid(%struct.pt_image* %0, %struct.pt_asid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image*, align 8
  %5 = alloca %struct.pt_asid*, align 8
  %6 = alloca %struct.pt_section_list**, align 8
  %7 = alloca %struct.pt_asid, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_mapped_section*, align 8
  %11 = alloca %struct.pt_asid*, align 8
  %12 = alloca %struct.pt_section_list*, align 8
  store %struct.pt_image* %0, %struct.pt_image** %4, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %5, align 8
  %13 = load %struct.pt_image*, %struct.pt_image** %4, align 8
  %14 = icmp ne %struct.pt_image* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %20 = call i32 @pt_asid_from_user(%struct.pt_asid* %7, %struct.pt_asid* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %26 = load %struct.pt_image*, %struct.pt_image** %4, align 8
  %27 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %26, i32 0, i32 0
  store %struct.pt_section_list** %27, %struct.pt_section_list*** %6, align 8
  br label %28

28:                                               ; preds = %51, %48, %25
  %29 = load %struct.pt_section_list**, %struct.pt_section_list*** %6, align 8
  %30 = load %struct.pt_section_list*, %struct.pt_section_list** %29, align 8
  %31 = icmp ne %struct.pt_section_list* %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load %struct.pt_section_list**, %struct.pt_section_list*** %6, align 8
  %34 = load %struct.pt_section_list*, %struct.pt_section_list** %33, align 8
  store %struct.pt_section_list* %34, %struct.pt_section_list** %12, align 8
  %35 = load %struct.pt_section_list*, %struct.pt_section_list** %12, align 8
  %36 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %35, i32 0, i32 1
  store %struct.pt_mapped_section* %36, %struct.pt_mapped_section** %10, align 8
  %37 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %38 = call %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section* %37)
  store %struct.pt_asid* %38, %struct.pt_asid** %11, align 8
  %39 = load %struct.pt_asid*, %struct.pt_asid** %11, align 8
  %40 = call i32 @pt_asid_match(%struct.pt_asid* %39, %struct.pt_asid* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.pt_section_list*, %struct.pt_section_list** %12, align 8
  %50 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %49, i32 0, i32 0
  store %struct.pt_section_list** %50, %struct.pt_section_list*** %6, align 8
  br label %28

51:                                               ; preds = %45
  %52 = load %struct.pt_section_list*, %struct.pt_section_list** %12, align 8
  %53 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %52, i32 0, i32 0
  %54 = load %struct.pt_section_list*, %struct.pt_section_list** %53, align 8
  %55 = load %struct.pt_section_list**, %struct.pt_section_list*** %6, align 8
  store %struct.pt_section_list* %54, %struct.pt_section_list** %55, align 8
  %56 = load %struct.pt_section_list*, %struct.pt_section_list** %12, align 8
  %57 = call i32 @pt_section_list_free(%struct.pt_section_list* %56)
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %43, %23, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @pt_asid_from_user(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_asid_match(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local i32 @pt_section_list_free(%struct.pt_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
