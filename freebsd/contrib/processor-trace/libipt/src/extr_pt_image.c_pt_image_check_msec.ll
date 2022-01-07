; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_check_msec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_check_msec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_mapped_section = type { i32 }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_mapped_section*, %struct.pt_asid*, i64)* @pt_image_check_msec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_image_check_msec(%struct.pt_mapped_section* %0, %struct.pt_asid* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_mapped_section*, align 8
  %6 = alloca %struct.pt_asid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_asid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pt_mapped_section* %0, %struct.pt_mapped_section** %5, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %5, align 8
  %13 = icmp ne %struct.pt_mapped_section* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %5, align 8
  %19 = call i64 @pt_msec_begin(%struct.pt_mapped_section* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %5, align 8
  %21 = call i64 @pt_msec_end(%struct.pt_mapped_section* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %17
  %30 = load i32, i32* @pte_nomap, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %25
  %33 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %5, align 8
  %34 = call %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section* %33)
  store %struct.pt_asid* %34, %struct.pt_asid** %8, align 8
  %35 = load %struct.pt_asid*, %struct.pt_asid** %8, align 8
  %36 = load %struct.pt_asid*, %struct.pt_asid** %6, align 8
  %37 = call i32 @pt_asid_match(%struct.pt_asid* %35, %struct.pt_asid* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @pte_nomap, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46, %29, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @pt_msec_begin(%struct.pt_mapped_section*) #1

declare dso_local i64 @pt_msec_end(%struct.pt_mapped_section*) #1

declare dso_local %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_asid_match(%struct.pt_asid*, %struct.pt_asid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
