; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_remove_by_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_remove_by_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { %struct.pt_section_list*, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_asid = type { i32 }
%struct.pt_section = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_remove_by_filename(%struct.pt_image* %0, i8* %1, %struct.pt_asid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_image*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pt_asid*, align 8
  %8 = alloca %struct.pt_section_list**, align 8
  %9 = alloca %struct.pt_asid, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_mapped_section*, align 8
  %13 = alloca %struct.pt_section*, align 8
  %14 = alloca %struct.pt_asid*, align 8
  %15 = alloca %struct.pt_section_list*, align 8
  %16 = alloca i8*, align 8
  store %struct.pt_image* %0, %struct.pt_image** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pt_asid* %2, %struct.pt_asid** %7, align 8
  %17 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %18 = icmp ne %struct.pt_image* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @pte_invalid, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %19
  %26 = load %struct.pt_asid*, %struct.pt_asid** %7, align 8
  %27 = call i32 @pt_asid_from_user(%struct.pt_asid* %9, %struct.pt_asid* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  %33 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %34 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %33, i32 0, i32 0
  store %struct.pt_section_list** %34, %struct.pt_section_list*** %8, align 8
  br label %35

35:                                               ; preds = %82, %55, %32
  %36 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  %37 = load %struct.pt_section_list*, %struct.pt_section_list** %36, align 8
  %38 = icmp ne %struct.pt_section_list* %37, null
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  %41 = load %struct.pt_section_list*, %struct.pt_section_list** %40, align 8
  store %struct.pt_section_list* %41, %struct.pt_section_list** %15, align 8
  %42 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %43 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %42, i32 0, i32 1
  store %struct.pt_mapped_section* %43, %struct.pt_mapped_section** %12, align 8
  %44 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %12, align 8
  %45 = call %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section* %44)
  store %struct.pt_asid* %45, %struct.pt_asid** %14, align 8
  %46 = load %struct.pt_asid*, %struct.pt_asid** %14, align 8
  %47 = call i32 @pt_asid_match(%struct.pt_asid* %46, %struct.pt_asid* %9)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %85

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %57 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %56, i32 0, i32 0
  store %struct.pt_section_list** %57, %struct.pt_section_list*** %8, align 8
  br label %35

58:                                               ; preds = %52
  %59 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %12, align 8
  %60 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %59)
  store %struct.pt_section* %60, %struct.pt_section** %13, align 8
  %61 = load %struct.pt_section*, %struct.pt_section** %13, align 8
  %62 = call i8* @pt_section_filename(%struct.pt_section* %61)
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load i8*, i8** %16, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %72 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %71, i32 0, i32 0
  %73 = load %struct.pt_section_list*, %struct.pt_section_list** %72, align 8
  %74 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  store %struct.pt_section_list* %73, %struct.pt_section_list** %74, align 8
  %75 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %76 = call i32 @pt_section_list_free(%struct.pt_section_list* %75)
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %82

79:                                               ; preds = %65, %58
  %80 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %81 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %80, i32 0, i32 0
  store %struct.pt_section_list** %81, %struct.pt_section_list*** %8, align 8
  br label %82

82:                                               ; preds = %79, %70
  br label %35

83:                                               ; preds = %35
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %50, %30, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @pt_asid_from_user(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_asid_match(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i8* @pt_section_filename(%struct.pt_section*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pt_section_list_free(%struct.pt_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
