; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i32, i32, %struct.pt_image_section_cache* }
%struct.pt_image_section_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_detach(%struct.pt_section* %0, %struct.pt_image_section_cache* %1) #0 {
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
  br label %65

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
  br label %65

24:                                               ; preds = %17
  %25 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %26 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %25, i32 0, i32 2
  %27 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %26, align 8
  %28 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %29 = icmp ne %struct.pt_image_section_cache* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %60

31:                                               ; preds = %24
  %32 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %33 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %60

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %42 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %60

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %51 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %56 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %55, i32 0, i32 2
  store %struct.pt_image_section_cache* null, %struct.pt_image_section_cache** %56, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %59 = call i32 @pt_section_unlock_attach(%struct.pt_section* %58)
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %47, %37, %30
  %61 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %62 = call i32 @pt_section_unlock_attach(%struct.pt_section* %61)
  %63 = load i32, i32* @pte_internal, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %57, %22, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @pt_section_lock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock_attach(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
