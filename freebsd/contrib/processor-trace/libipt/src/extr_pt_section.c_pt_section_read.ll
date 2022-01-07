; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { {}*, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_read(%struct.pt_section* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %13 = icmp ne %struct.pt_section* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %19 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.pt_section*, i32*, i64, i64)**
  %21 = load i32 (%struct.pt_section*, i32*, i64, i64)*, i32 (%struct.pt_section*, i32*, i64, i64)** %20, align 8
  %22 = icmp ne i32 (%struct.pt_section*, i32*, i64, i64)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @pte_nomap, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %17
  %27 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %28 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @pte_nomap, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %55

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %47 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.pt_section*, i32*, i64, i64)**
  %49 = load i32 (%struct.pt_section*, i32*, i64, i64)*, i32 (%struct.pt_section*, i32*, i64, i64)** %48, align 8
  %50 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 %49(%struct.pt_section* %50, i32* %51, i64 %52, i64 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %33, %23, %14
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
