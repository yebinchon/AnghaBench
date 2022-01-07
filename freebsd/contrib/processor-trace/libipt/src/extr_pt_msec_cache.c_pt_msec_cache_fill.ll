; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_msec_cache.c_pt_msec_cache_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_msec_cache.c_pt_msec_cache_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_msec_cache = type { i32, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32* }
%struct.pt_image = type { i32 }
%struct.pt_asid = type { i32 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_msec_cache_fill(%struct.pt_msec_cache* %0, %struct.pt_mapped_section** %1, %struct.pt_image* %2, %struct.pt_asid* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_msec_cache*, align 8
  %8 = alloca %struct.pt_mapped_section**, align 8
  %9 = alloca %struct.pt_image*, align 8
  %10 = alloca %struct.pt_asid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_mapped_section*, align 8
  %13 = alloca %struct.pt_section*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pt_msec_cache* %0, %struct.pt_msec_cache** %7, align 8
  store %struct.pt_mapped_section** %1, %struct.pt_mapped_section*** %8, align 8
  store %struct.pt_image* %2, %struct.pt_image** %9, align 8
  store %struct.pt_asid* %3, %struct.pt_asid** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %7, align 8
  %17 = icmp ne %struct.pt_msec_cache* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %8, align 8
  %20 = icmp ne %struct.pt_mapped_section** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %5
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %63

24:                                               ; preds = %18
  %25 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %7, align 8
  %26 = call i32 @pt_msec_cache_invalidate(%struct.pt_msec_cache* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %7, align 8
  %33 = getelementptr inbounds %struct.pt_msec_cache, %struct.pt_msec_cache* %32, i32 0, i32 1
  store %struct.pt_mapped_section* %33, %struct.pt_mapped_section** %12, align 8
  %34 = load %struct.pt_image*, %struct.pt_image** %9, align 8
  %35 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %12, align 8
  %36 = load %struct.pt_asid*, %struct.pt_asid** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @pt_image_find(%struct.pt_image* %34, %struct.pt_mapped_section* %35, %struct.pt_asid* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %63

43:                                               ; preds = %31
  %44 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %12, align 8
  %45 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %44)
  store %struct.pt_section* %45, %struct.pt_section** %13, align 8
  %46 = load %struct.pt_section*, %struct.pt_section** %13, align 8
  %47 = call i32 @pt_section_map(%struct.pt_section* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.pt_section*, %struct.pt_section** %13, align 8
  %52 = call i32 @pt_section_put(%struct.pt_section* %51)
  %53 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %12, align 8
  %54 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %63

56:                                               ; preds = %43
  %57 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %12, align 8
  %58 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %8, align 8
  store %struct.pt_mapped_section* %57, %struct.pt_mapped_section** %58, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %7, align 8
  %61 = getelementptr inbounds %struct.pt_msec_cache, %struct.pt_msec_cache* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %50, %41, %29, %21
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @pt_msec_cache_invalidate(%struct.pt_msec_cache*) #1

declare dso_local i32 @pt_image_find(%struct.pt_image*, %struct.pt_mapped_section*, %struct.pt_asid*, i32) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_section_map(%struct.pt_section*) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
