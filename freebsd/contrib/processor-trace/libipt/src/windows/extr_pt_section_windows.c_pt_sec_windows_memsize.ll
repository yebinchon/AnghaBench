; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_memsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_sec_windows_mapping* }
%struct.pt_sec_windows_mapping = type { i32*, i32* }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_windows_memsize(%struct.pt_section* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_sec_windows_mapping*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %10 = icmp ne %struct.pt_section* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %11
  %18 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %19 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %18, i32 0, i32 0
  %20 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %19, align 8
  store %struct.pt_sec_windows_mapping* %20, %struct.pt_sec_windows_mapping** %6, align 8
  %21 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %22 = icmp ne %struct.pt_sec_windows_mapping* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @pte_internal, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %17
  %27 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %28 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %31 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ult i32* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %35, %26
  %43 = load i32, i32* @pte_internal, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %38
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %42, %23, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
