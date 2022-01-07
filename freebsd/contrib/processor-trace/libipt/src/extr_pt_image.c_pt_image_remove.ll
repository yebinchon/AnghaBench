; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { %struct.pt_section_list*, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_section = type opaque
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_remove(%struct.pt_image* %0, %struct.pt_section* %1, %struct.pt_asid* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image*, align 8
  %7 = alloca %struct.pt_section*, align 8
  %8 = alloca %struct.pt_asid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pt_section_list**, align 8
  %11 = alloca %struct.pt_mapped_section*, align 8
  %12 = alloca %struct.pt_section*, align 8
  %13 = alloca %struct.pt_asid*, align 8
  %14 = alloca %struct.pt_section_list*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %6, align 8
  store %struct.pt_section* %1, %struct.pt_section** %7, align 8
  store %struct.pt_asid* %2, %struct.pt_asid** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %18 = icmp ne %struct.pt_image* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.pt_section*, %struct.pt_section** %7, align 8
  %21 = icmp ne %struct.pt_section* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @pte_internal, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %77

25:                                               ; preds = %19
  %26 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %27 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %26, i32 0, i32 0
  store %struct.pt_section_list** %27, %struct.pt_section_list*** %10, align 8
  br label %28

28:                                               ; preds = %70, %25
  %29 = load %struct.pt_section_list**, %struct.pt_section_list*** %10, align 8
  %30 = load %struct.pt_section_list*, %struct.pt_section_list** %29, align 8
  %31 = icmp ne %struct.pt_section_list* %30, null
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load %struct.pt_section_list**, %struct.pt_section_list*** %10, align 8
  %34 = load %struct.pt_section_list*, %struct.pt_section_list** %33, align 8
  store %struct.pt_section_list* %34, %struct.pt_section_list** %14, align 8
  %35 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %36 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %35, i32 0, i32 1
  store %struct.pt_mapped_section* %36, %struct.pt_mapped_section** %11, align 8
  %37 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %11, align 8
  %38 = call %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section* %37)
  store %struct.pt_asid* %38, %struct.pt_asid** %13, align 8
  %39 = load %struct.pt_asid*, %struct.pt_asid** %13, align 8
  %40 = load %struct.pt_asid*, %struct.pt_asid** %8, align 8
  %41 = call i32 @pt_asid_match(%struct.pt_asid* %39, %struct.pt_asid* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %5, align 4
  br label %77

46:                                               ; preds = %32
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %70

50:                                               ; preds = %46
  %51 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %11, align 8
  %52 = call i64 @pt_msec_begin(%struct.pt_mapped_section* %51)
  store i64 %52, i64* %15, align 8
  %53 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %11, align 8
  %54 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %53)
  store %struct.pt_section* %54, %struct.pt_section** %12, align 8
  %55 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %56 = load %struct.pt_section*, %struct.pt_section** %7, align 8
  %57 = icmp eq %struct.pt_section* %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %64 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %63, i32 0, i32 0
  %65 = load %struct.pt_section_list*, %struct.pt_section_list** %64, align 8
  %66 = load %struct.pt_section_list**, %struct.pt_section_list*** %10, align 8
  store %struct.pt_section_list* %65, %struct.pt_section_list** %66, align 8
  %67 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %68 = call i32 @pt_section_list_free(%struct.pt_section_list* %67)
  store i32 0, i32* %5, align 4
  br label %77

69:                                               ; preds = %58, %50
  br label %70

70:                                               ; preds = %69, %49
  %71 = load %struct.pt_section_list**, %struct.pt_section_list*** %10, align 8
  %72 = load %struct.pt_section_list*, %struct.pt_section_list** %71, align 8
  %73 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %72, i32 0, i32 0
  store %struct.pt_section_list** %73, %struct.pt_section_list*** %10, align 8
  br label %28

74:                                               ; preds = %28
  %75 = load i32, i32* @pte_bad_image, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %62, %44, %22
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_asid_match(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local i64 @pt_msec_begin(%struct.pt_mapped_section*) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_section_list_free(%struct.pt_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
