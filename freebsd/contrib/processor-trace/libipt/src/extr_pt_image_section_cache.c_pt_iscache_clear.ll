; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i64, i64, %struct.pt_iscache_lru_entry*, i64, %struct.pt_iscache_entry* }
%struct.pt_iscache_lru_entry = type { i32 }
%struct.pt_iscache_entry = type { %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_clear(%struct.pt_image_section_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_image_section_cache*, align 8
  %4 = alloca %struct.pt_iscache_lru_entry*, align 8
  %5 = alloca %struct.pt_iscache_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pt_section*, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %3, align 8
  %10 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %11 = icmp ne %struct.pt_image_section_cache* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %17 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %15
  %23 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %24 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %23, i32 0, i32 4
  %25 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %24, align 8
  store %struct.pt_iscache_entry* %25, %struct.pt_iscache_entry** %5, align 8
  %26 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %27 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %30 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %29, i32 0, i32 2
  %31 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %30, align 8
  store %struct.pt_iscache_lru_entry* %31, %struct.pt_iscache_lru_entry** %4, align 8
  %32 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %33 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %32, i32 0, i32 4
  store %struct.pt_iscache_entry* null, %struct.pt_iscache_entry** %33, align 8
  %34 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %35 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %37 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %39 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %38, i32 0, i32 2
  store %struct.pt_iscache_lru_entry* null, %struct.pt_iscache_lru_entry** %39, align 8
  %40 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %41 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %43 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %87

48:                                               ; preds = %22
  %49 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %4, align 8
  %50 = call i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %87

55:                                               ; preds = %48
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %61, i64 %62
  %64 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %63, i32 0, i32 0
  %65 = load %struct.pt_section*, %struct.pt_section** %64, align 8
  store %struct.pt_section* %65, %struct.pt_section** %9, align 8
  %66 = load %struct.pt_section*, %struct.pt_section** %9, align 8
  %67 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %68 = call i32 @pt_section_detach(%struct.pt_section* %66, %struct.pt_image_section_cache* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %60
  %74 = load %struct.pt_section*, %struct.pt_section** %9, align 8
  %75 = call i32 @pt_section_put(%struct.pt_section* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %87

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %5, align 8
  %86 = call i32 @free(%struct.pt_iscache_entry* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %78, %71, %53, %46, %20, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_free(%struct.pt_iscache_lru_entry*) #1

declare dso_local i32 @pt_section_detach(%struct.pt_section*, %struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

declare dso_local i32 @free(%struct.pt_iscache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
