; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_pt_sec_file_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_pt_sec_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.pt_sec_file_mapping* }
%struct.pt_sec_file_mapping = type { i64, i32* }

@pte_internal = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_file_read(%struct.pt_section* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pt_sec_file_mapping*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %19 = icmp ne %struct.pt_section* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %17
  %24 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %25 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %24, i32 0, i32 0
  %26 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %25, align 8
  store %struct.pt_sec_file_mapping* %26, %struct.pt_sec_file_mapping** %10, align 8
  %27 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %10, align 8
  %28 = icmp ne %struct.pt_sec_file_mapping* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @pte_internal, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %74

32:                                               ; preds = %23
  %33 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %10, align 8
  %34 = getelementptr inbounds %struct.pt_sec_file_mapping, %struct.pt_sec_file_mapping* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %11, align 8
  %36 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %10, align 8
  %37 = getelementptr inbounds %struct.pt_sec_file_mapping, %struct.pt_sec_file_mapping* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %12, align 8
  %41 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %10, align 8
  %42 = call i32 @fmap_lock(%struct.pt_sec_file_mapping* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %32
  %48 = load i32*, i32** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @fseek(i32* %48, i64 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %69

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @fread(i32* %56, i32 1, i32 %57, i32* %58)
  store i64 %59, i64* %13, align 8
  %60 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %10, align 8
  %61 = call i32 @fmap_unlock(%struct.pt_sec_file_mapping* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %5, align 4
  br label %74

66:                                               ; preds = %55
  %67 = load i64, i64* %13, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %54
  %70 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %10, align 8
  %71 = call i32 @fmap_unlock(%struct.pt_sec_file_mapping* %70)
  %72 = load i32, i32* @pte_nomap, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %66, %64, %45, %29, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @fmap_lock(%struct.pt_sec_file_mapping*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @fmap_unlock(%struct.pt_sec_file_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
