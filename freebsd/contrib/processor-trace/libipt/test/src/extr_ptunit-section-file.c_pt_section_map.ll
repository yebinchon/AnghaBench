; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section-file.c_pt_section_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section-file.c_pt_section_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i8*, %struct.pt_file_status*, i64, i64 }
%struct.pt_file_status = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_map(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca %struct.pt_file_status*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %10 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %11 = icmp ne %struct.pt_section* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %17 = call i32 @pt_section_lock(%struct.pt_section* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %2, align 4
  br label %100

22:                                               ; preds = %15
  %23 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %24 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %30 = call i32 @pt_section_map_success(%struct.pt_section* %29)
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %22
  %32 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %33 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %96

37:                                               ; preds = %31
  %38 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %39 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %96

44:                                               ; preds = %37
  %45 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %46 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %45, i32 0, i32 1
  %47 = load %struct.pt_file_status*, %struct.pt_file_status** %46, align 8
  store %struct.pt_file_status* %47, %struct.pt_file_status** %4, align 8
  %48 = load %struct.pt_file_status*, %struct.pt_file_status** %4, align 8
  %49 = icmp ne %struct.pt_file_status* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %96

51:                                               ; preds = %44
  %52 = load i32, i32* @pte_bad_image, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %96

59:                                               ; preds = %51
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @SEEK_END, align 4
  %62 = call i32 @fseek(i32* %60, i32 0, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @pte_bad_image, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %93

68:                                               ; preds = %59
  %69 = load i32, i32* @pte_bad_image, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @ftell(i32* %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %93

76:                                               ; preds = %68
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.pt_file_status*, %struct.pt_file_status** %4, align 8
  %79 = getelementptr inbounds %struct.pt_file_status, %struct.pt_file_status* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %93

83:                                               ; preds = %76
  %84 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @pt_sec_file_map(%struct.pt_section* %84, i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %91 = call i32 @pt_section_map_success(%struct.pt_section* %90)
  store i32 %91, i32* %2, align 4
  br label %100

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %82, %75, %65
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fclose(i32* %94)
  br label %96

96:                                               ; preds = %93, %58, %50, %43, %36
  %97 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %98 = call i32 @pt_section_unlock(%struct.pt_section* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %89, %28, %20, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local i32 @pt_section_map_success(%struct.pt_section*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @pt_sec_file_map(%struct.pt_section*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
