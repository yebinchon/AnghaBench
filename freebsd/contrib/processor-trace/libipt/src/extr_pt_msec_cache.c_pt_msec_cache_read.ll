; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_msec_cache.c_pt_msec_cache_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_msec_cache.c_pt_msec_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_msec_cache = type { i32, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_image = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_msec_cache_read(%struct.pt_msec_cache* %0, %struct.pt_mapped_section** %1, %struct.pt_image* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_msec_cache*, align 8
  %7 = alloca %struct.pt_mapped_section**, align 8
  %8 = alloca %struct.pt_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_mapped_section*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_msec_cache* %0, %struct.pt_msec_cache** %6, align 8
  store %struct.pt_mapped_section** %1, %struct.pt_mapped_section*** %7, align 8
  store %struct.pt_image* %2, %struct.pt_image** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %6, align 8
  %14 = icmp ne %struct.pt_msec_cache* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %7, align 8
  %17 = icmp ne %struct.pt_mapped_section** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %40

21:                                               ; preds = %15
  %22 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %6, align 8
  %23 = getelementptr inbounds %struct.pt_msec_cache, %struct.pt_msec_cache* %22, i32 0, i32 1
  store %struct.pt_mapped_section* %23, %struct.pt_mapped_section** %10, align 8
  %24 = load %struct.pt_msec_cache*, %struct.pt_msec_cache** %6, align 8
  %25 = getelementptr inbounds %struct.pt_msec_cache, %struct.pt_msec_cache* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %28 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @pt_image_validate(%struct.pt_image* %27, %struct.pt_mapped_section* %28, i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %21
  %37 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %38 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %7, align 8
  store %struct.pt_mapped_section* %37, %struct.pt_mapped_section** %38, align 8
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %34, %18
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @pt_image_validate(%struct.pt_image*, %struct.pt_mapped_section*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
