; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_pt_iscache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_pt_iscache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32, i32*, %struct.pt_section** }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_lookup(%struct.pt_image_section_cache* %0, %struct.pt_section** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image_section_cache*, align 8
  %7 = alloca %struct.pt_section**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %6, align 8
  store %struct.pt_section** %1, %struct.pt_section*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %11 = icmp ne %struct.pt_image_section_cache* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  %14 = icmp ne %struct.pt_section** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %4
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %26 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @pte_bad_image, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %55

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %37 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %36, i32 0, i32 2
  %38 = load %struct.pt_section**, %struct.pt_section*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %38, i64 %40
  %42 = load %struct.pt_section*, %struct.pt_section** %41, align 8
  %43 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  store %struct.pt_section* %42, %struct.pt_section** %43, align 8
  %44 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %6, align 8
  %45 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  %53 = load %struct.pt_section*, %struct.pt_section** %52, align 8
  %54 = call i32 @pt_section_get(%struct.pt_section* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %33, %30, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
