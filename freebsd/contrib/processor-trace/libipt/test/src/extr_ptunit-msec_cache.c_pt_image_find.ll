; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_pt_image_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_pt_image_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section* }
%struct.pt_section = type { i32 }
%struct.pt_mapped_section = type { %struct.pt_section* }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_find(%struct.pt_image* %0, %struct.pt_mapped_section* %1, %struct.pt_asid* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image*, align 8
  %7 = alloca %struct.pt_mapped_section*, align 8
  %8 = alloca %struct.pt_asid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_section*, align 8
  store %struct.pt_image* %0, %struct.pt_image** %6, align 8
  store %struct.pt_mapped_section* %1, %struct.pt_mapped_section** %7, align 8
  store %struct.pt_asid* %2, %struct.pt_asid** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %13 = icmp ne %struct.pt_image* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %16 = icmp ne %struct.pt_mapped_section* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.pt_asid*, %struct.pt_asid** %8, align 8
  %19 = icmp ne %struct.pt_asid* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %4
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %46

23:                                               ; preds = %17
  %24 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %25 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %24, i32 0, i32 0
  %26 = load %struct.pt_section*, %struct.pt_section** %25, align 8
  store %struct.pt_section* %26, %struct.pt_section** %10, align 8
  %27 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %28 = icmp ne %struct.pt_section* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @pte_nomap, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %34 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %33, i32 0, i32 0
  %35 = load %struct.pt_section*, %struct.pt_section** %34, align 8
  %36 = icmp ne %struct.pt_section* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @pte_internal, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %32
  %41 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %42 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %43 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %42, i32 0, i32 0
  store %struct.pt_section* %41, %struct.pt_section** %43, align 8
  %44 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %45 = call i32 @pt_section_get(%struct.pt_section* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %37, %29, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
