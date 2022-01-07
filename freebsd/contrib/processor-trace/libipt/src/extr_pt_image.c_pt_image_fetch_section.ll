; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_fetch_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_fetch_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { %struct.pt_section_list*, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image*, %struct.pt_asid*, i32)* @pt_image_fetch_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_image_fetch_section(%struct.pt_image* %0, %struct.pt_asid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_image*, align 8
  %6 = alloca %struct.pt_asid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_section_list**, align 8
  %9 = alloca %struct.pt_section_list**, align 8
  %10 = alloca %struct.pt_mapped_section*, align 8
  %11 = alloca %struct.pt_section_list*, align 8
  %12 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %5, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %14 = icmp ne %struct.pt_image* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %20 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %19, i32 0, i32 0
  store %struct.pt_section_list** %20, %struct.pt_section_list*** %8, align 8
  %21 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  store %struct.pt_section_list** %21, %struct.pt_section_list*** %9, align 8
  br label %22

22:                                               ; preds = %44, %18
  %23 = load %struct.pt_section_list**, %struct.pt_section_list*** %9, align 8
  %24 = load %struct.pt_section_list*, %struct.pt_section_list** %23, align 8
  %25 = icmp ne %struct.pt_section_list* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load %struct.pt_section_list**, %struct.pt_section_list*** %9, align 8
  %28 = load %struct.pt_section_list*, %struct.pt_section_list** %27, align 8
  store %struct.pt_section_list* %28, %struct.pt_section_list** %11, align 8
  %29 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %30 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %29, i32 0, i32 1
  store %struct.pt_mapped_section* %30, %struct.pt_mapped_section** %10, align 8
  %31 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %32 = load %struct.pt_asid*, %struct.pt_asid** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pt_image_check_msec(%struct.pt_mapped_section* %31, %struct.pt_asid* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @pte_nomap, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %66

44:                                               ; preds = %37
  %45 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %46 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %45, i32 0, i32 0
  store %struct.pt_section_list** %46, %struct.pt_section_list*** %9, align 8
  br label %22

47:                                               ; preds = %26
  %48 = load %struct.pt_section_list**, %struct.pt_section_list*** %9, align 8
  %49 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  %50 = icmp ne %struct.pt_section_list** %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %53 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %52, i32 0, i32 0
  %54 = load %struct.pt_section_list*, %struct.pt_section_list** %53, align 8
  %55 = load %struct.pt_section_list**, %struct.pt_section_list*** %9, align 8
  store %struct.pt_section_list* %54, %struct.pt_section_list** %55, align 8
  %56 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  %57 = load %struct.pt_section_list*, %struct.pt_section_list** %56, align 8
  %58 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %59 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %58, i32 0, i32 0
  store %struct.pt_section_list* %57, %struct.pt_section_list** %59, align 8
  %60 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %61 = load %struct.pt_section_list**, %struct.pt_section_list*** %8, align 8
  store %struct.pt_section_list* %60, %struct.pt_section_list** %61, align 8
  br label %62

62:                                               ; preds = %51, %47
  store i32 0, i32* %4, align 4
  br label %66

63:                                               ; preds = %22
  %64 = load i32, i32* @pte_nomap, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %62, %42, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @pt_image_check_msec(%struct.pt_mapped_section*, %struct.pt_asid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
