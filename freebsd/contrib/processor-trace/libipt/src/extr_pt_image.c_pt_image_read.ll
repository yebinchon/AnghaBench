; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { i32, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_asid = type { i32 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_read(%struct.pt_image* %0, i32* %1, i32* %2, i32 %3, %struct.pt_asid* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_image*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_asid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pt_mapped_section*, align 8
  %15 = alloca %struct.pt_section_list*, align 8
  %16 = alloca %struct.pt_section*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.pt_asid* %4, %struct.pt_asid** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %20 = icmp ne %struct.pt_image* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %6
  %25 = load i32, i32* @pte_internal, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %105

27:                                               ; preds = %21
  %28 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %29 = load %struct.pt_asid*, %struct.pt_asid** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @pt_image_fetch_section(%struct.pt_image* %28, %struct.pt_asid* %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @pte_nomap, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %7, align 4
  br label %105

41:                                               ; preds = %34
  %42 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.pt_asid*, %struct.pt_asid** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @pt_image_read_callback(%struct.pt_image* %42, i32* %43, i32* %44, i32 %45, %struct.pt_asid* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %105

49:                                               ; preds = %27
  %50 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %51 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %50, i32 0, i32 0
  %52 = load %struct.pt_section_list*, %struct.pt_section_list** %51, align 8
  store %struct.pt_section_list* %52, %struct.pt_section_list** %15, align 8
  %53 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %54 = icmp ne %struct.pt_section_list* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @pte_internal, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %105

58:                                               ; preds = %49
  %59 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %60 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %64 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %63, i32 0, i32 1
  store %struct.pt_mapped_section* %64, %struct.pt_mapped_section** %14, align 8
  %65 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %14, align 8
  %66 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %65)
  store %struct.pt_section* %66, %struct.pt_section** %16, align 8
  %67 = load %struct.pt_section*, %struct.pt_section** %16, align 8
  %68 = call i32 @pt_section_map(%struct.pt_section* %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %7, align 4
  br label %105

73:                                               ; preds = %58
  %74 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %14, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @pt_msec_read(%struct.pt_mapped_section* %74, i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load %struct.pt_section*, %struct.pt_section** %16, align 8
  %80 = call i32 @pt_section_unmap(%struct.pt_section* %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %7, align 4
  br label %105

85:                                               ; preds = %73
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @pte_nomap, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %7, align 4
  br label %105

95:                                               ; preds = %88
  %96 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.pt_asid*, %struct.pt_asid** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @pt_image_read_callback(%struct.pt_image* %96, i32* %97, i32* %98, i32 %99, %struct.pt_asid* %100, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %105

103:                                              ; preds = %85
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %95, %93, %83, %71, %55, %41, %39, %24
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @pt_image_fetch_section(%struct.pt_image*, %struct.pt_asid*, i32) #1

declare dso_local i32 @pt_image_read_callback(%struct.pt_image*, i32*, i32*, i32, %struct.pt_asid*, i32) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_section_map(%struct.pt_section*) #1

declare dso_local i32 @pt_msec_read(%struct.pt_mapped_section*, i32*, i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
