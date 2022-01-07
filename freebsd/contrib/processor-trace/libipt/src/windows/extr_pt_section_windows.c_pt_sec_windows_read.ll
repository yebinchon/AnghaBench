; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_sec_windows_mapping* }
%struct.pt_sec_windows_mapping = type { i32* }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_windows_read(%struct.pt_section* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_sec_windows_mapping*, align 8
  %11 = alloca i32*, align 8
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %16 = icmp ne %struct.pt_section* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %14
  %21 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %22 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %21, i32 0, i32 0
  %23 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %22, align 8
  store %struct.pt_sec_windows_mapping* %23, %struct.pt_sec_windows_mapping** %10, align 8
  %24 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %10, align 8
  %25 = icmp ne %struct.pt_sec_windows_mapping* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @pte_internal, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %10, align 8
  %31 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @memcpy(i32* %36, i32* %37, i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %29, %26, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
