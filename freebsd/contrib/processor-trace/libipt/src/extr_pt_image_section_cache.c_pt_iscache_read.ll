; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32 }
%struct.pt_section = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_read(%struct.pt_image_section_cache* %0, i32* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_image_section_cache*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_section*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %17 = icmp ne %struct.pt_image_section_cache* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %18, %5
  %25 = load i32, i32* @pte_invalid, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %86

27:                                               ; preds = %21
  %28 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pt_iscache_lookup(%struct.pt_image_section_cache* %28, %struct.pt_section** %12, i64* %13, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %86

35:                                               ; preds = %27
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %41 = call i32 @pt_section_put(%struct.pt_section* %40)
  %42 = load i32, i32* @pte_nomap, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %86

44:                                               ; preds = %35
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %11, align 8
  %48 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %49 = call i32 @pt_section_map(%struct.pt_section* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %54 = call i32 @pt_section_put(%struct.pt_section* %53)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %86

56:                                               ; preds = %44
  %57 = load i64, i64* @UINT16_MAX, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @UINT16_MAX, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @pt_section_read(%struct.pt_section* %63, i32* %64, i32 %66, i64 %67)
  store i32 %68, i32* %15, align 4
  %69 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %70 = call i32 @pt_section_unmap(%struct.pt_section* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %75 = call i32 @pt_section_put(%struct.pt_section* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %86

77:                                               ; preds = %62
  %78 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %79 = call i32 @pt_section_put(%struct.pt_section* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %6, align 4
  br label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %82, %73, %52, %39, %33, %24
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @pt_iscache_lookup(%struct.pt_image_section_cache*, %struct.pt_section**, i64*, i32) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

declare dso_local i32 @pt_section_map(%struct.pt_section*) #1

declare dso_local i32 @pt_section_read(%struct.pt_section*, i32*, i32, i64) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
