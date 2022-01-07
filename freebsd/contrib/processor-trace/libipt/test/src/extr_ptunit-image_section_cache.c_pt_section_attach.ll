; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i32, i32, %struct.pt_image_section_cache* }
%struct.pt_image_section_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_overflow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_attach(%struct.pt_section* %0, %struct.pt_image_section_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca %struct.pt_image_section_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store %struct.pt_image_section_cache* %1, %struct.pt_image_section_cache** %5, align 8
  %9 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %10 = icmp ne %struct.pt_section* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %13 = icmp ne %struct.pt_image_section_cache* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %11
  %18 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %19 = call i32 @pt_section_lock_attach(%struct.pt_section* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %17
  %25 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %26 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %29 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %24
  %34 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %35 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %34, i32 0, i32 2
  %36 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %35, align 8
  %37 = icmp ne %struct.pt_image_section_cache* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %33
  br label %78

42:                                               ; preds = %38
  %43 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %44 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %45 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %44, i32 0, i32 2
  store %struct.pt_image_section_cache* %43, %struct.pt_image_section_cache** %45, align 8
  %46 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %47 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %49 = call i32 @pt_section_unlock_attach(%struct.pt_section* %48)
  store i32 %49, i32* %3, align 4
  br label %83

50:                                               ; preds = %24
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %57 = call i32 @pt_section_unlock_attach(%struct.pt_section* %56)
  %58 = load i32, i32* @pte_overflow, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %83

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %78

65:                                               ; preds = %60
  %66 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %67 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %66, i32 0, i32 2
  %68 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %67, align 8
  %69 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %70 = icmp ne %struct.pt_image_section_cache* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %78

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %75 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %77 = call i32 @pt_section_unlock_attach(%struct.pt_section* %76)
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %71, %64, %41
  %79 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %80 = call i32 @pt_section_unlock_attach(%struct.pt_section* %79)
  %81 = load i32, i32* @pte_internal, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %72, %55, %42, %22, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pt_section_lock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock_attach(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
