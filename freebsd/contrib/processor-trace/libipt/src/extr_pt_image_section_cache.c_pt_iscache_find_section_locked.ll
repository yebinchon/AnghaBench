; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_find_section_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_find_section_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, %struct.pt_iscache_entry* }
%struct.pt_iscache_entry = type { i64, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*, i8*, i64, i64, i64)* @pt_iscache_find_section_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_iscache_find_section_locked(%struct.pt_image_section_cache* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_image_section_cache*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_section*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pt_iscache_entry*, align 8
  %17 = alloca %struct.pt_section*, align 8
  %18 = alloca i8*, align 8
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
  br label %97

27:                                               ; preds = %21
  store %struct.pt_section* null, %struct.pt_section** %12, align 8
  %28 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %29 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %92, %27
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %32
  %37 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %38 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %37, i32 0, i32 1
  %39 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %39, i64 %40
  store %struct.pt_iscache_entry* %41, %struct.pt_iscache_entry** %16, align 8
  %42 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %16, align 8
  %43 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %42, i32 0, i32 1
  %44 = load %struct.pt_section*, %struct.pt_section** %43, align 8
  store %struct.pt_section* %44, %struct.pt_section** %17, align 8
  %45 = load %struct.pt_section*, %struct.pt_section** %17, align 8
  %46 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %47 = icmp ne %struct.pt_section* %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %36
  %49 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %50 = icmp ne %struct.pt_section* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %92

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.pt_section*, %struct.pt_section** %17, align 8
  %55 = call i64 @pt_section_offset(%struct.pt_section* %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %92

58:                                               ; preds = %52
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.pt_section*, %struct.pt_section** %17, align 8
  %61 = call i64 @pt_section_size(%struct.pt_section* %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %92

64:                                               ; preds = %58
  %65 = load %struct.pt_section*, %struct.pt_section** %17, align 8
  %66 = call i8* @pt_section_filename(%struct.pt_section* %65)
  store i8* %66, i8** %18, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @pte_internal, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %97

72:                                               ; preds = %64
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = call i64 @strcmp(i8* %73, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %92

78:                                               ; preds = %72
  %79 = load %struct.pt_section*, %struct.pt_section** %17, align 8
  store %struct.pt_section* %79, %struct.pt_section** %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %78, %36
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %16, align 8
  %85 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i64, i64* %13, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %97

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %77, %63, %57, %51
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %13, align 8
  br label %32

95:                                               ; preds = %32
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %88, %69, %24
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @pt_section_offset(%struct.pt_section*) #1

declare dso_local i64 @pt_section_size(%struct.pt_section*) #1

declare dso_local i8* @pt_section_filename(%struct.pt_section*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
