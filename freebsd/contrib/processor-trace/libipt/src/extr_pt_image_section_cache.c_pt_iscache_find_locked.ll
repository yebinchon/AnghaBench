; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_find_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_find_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, %struct.pt_iscache_entry* }
%struct.pt_iscache_entry = type { i64, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*, i8*, i64, i64, i64)* @pt_iscache_find_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_iscache_find_locked(%struct.pt_image_section_cache* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_image_section_cache*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pt_iscache_entry*, align 8
  %15 = alloca %struct.pt_section*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %20 = icmp ne %struct.pt_image_section_cache* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @pte_internal, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %85

27:                                               ; preds = %21
  %28 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %29 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %81, %27
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %31
  %36 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %37 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %36, i32 0, i32 1
  %38 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %38, i64 %39
  store %struct.pt_iscache_entry* %40, %struct.pt_iscache_entry** %14, align 8
  %41 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %14, align 8
  %42 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %41, i32 0, i32 1
  %43 = load %struct.pt_section*, %struct.pt_section** %42, align 8
  store %struct.pt_section* %43, %struct.pt_section** %15, align 8
  %44 = load %struct.pt_section*, %struct.pt_section** %15, align 8
  %45 = call i8* @pt_section_filename(%struct.pt_section* %44)
  store i8* %45, i8** %16, align 8
  %46 = load %struct.pt_section*, %struct.pt_section** %15, align 8
  %47 = call i64 @pt_section_offset(%struct.pt_section* %46)
  store i64 %47, i64* %17, align 8
  %48 = load %struct.pt_section*, %struct.pt_section** %15, align 8
  %49 = call i64 @pt_section_size(%struct.pt_section* %48)
  store i64 %49, i64* %18, align 8
  %50 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %14, align 8
  %51 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %81

56:                                               ; preds = %35
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %81

61:                                               ; preds = %56
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %81

66:                                               ; preds = %61
  %67 = load i8*, i8** %16, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @pte_internal, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %85

72:                                               ; preds = %66
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @strcmp(i8* %73, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %81

78:                                               ; preds = %72
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @isid_from_index(i64 %79)
  store i32 %80, i32* %6, align 4
  br label %85

81:                                               ; preds = %77, %65, %60, %55
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %31

84:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %78, %69, %24
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i8* @pt_section_filename(%struct.pt_section*) #1

declare dso_local i64 @pt_section_offset(%struct.pt_section*) #1

declare dso_local i64 @pt_section_size(%struct.pt_section*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @isid_from_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
