; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_pt_sec_file_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_pt_sec_file_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i64, i64, i32, i32, i32, %struct.pt_sec_file_mapping* }
%struct.pt_sec_file_mapping = type { i64, i64, i32* }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@pt_sec_file_unmap = common dso_local global i32 0, align 4
@pt_sec_file_read = common dso_local global i32 0, align 4
@pt_sec_file_memsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_file_map(%struct.pt_section* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pt_sec_file_mapping*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %14 = icmp ne %struct.pt_section* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %20 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %19, i32 0, i32 5
  %21 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %20, align 8
  store %struct.pt_sec_file_mapping* %21, %struct.pt_sec_file_mapping** %6, align 8
  %22 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %23 = icmp ne %struct.pt_sec_file_mapping* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @pte_internal, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %123

27:                                               ; preds = %18
  %28 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %29 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %32 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @pte_bad_image, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %123

44:                                               ; preds = %27
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @pte_bad_image, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %123

53:                                               ; preds = %44
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @pte_bad_image, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %123

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @SEEK_END, align 4
  %63 = call i32 @fseek(i32* %61, i32 0, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @pte_bad_image, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %123

69:                                               ; preds = %60
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @ftell(i32* %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @pte_bad_image, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %123

77:                                               ; preds = %69
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @pte_bad_image, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %123

84:                                               ; preds = %77
  %85 = call %struct.pt_sec_file_mapping* @malloc(i32 24)
  store %struct.pt_sec_file_mapping* %85, %struct.pt_sec_file_mapping** %6, align 8
  %86 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %87 = icmp ne %struct.pt_sec_file_mapping* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @pte_nomem, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %123

91:                                               ; preds = %84
  %92 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %93 = call i32 @fmap_init(%struct.pt_sec_file_mapping* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %119

97:                                               ; preds = %91
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %100 = getelementptr inbounds %struct.pt_sec_file_mapping, %struct.pt_sec_file_mapping* %99, i32 0, i32 2
  store i32* %98, i32** %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %103 = getelementptr inbounds %struct.pt_sec_file_mapping, %struct.pt_sec_file_mapping* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %106 = getelementptr inbounds %struct.pt_sec_file_mapping, %struct.pt_sec_file_mapping* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %108 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %109 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %108, i32 0, i32 5
  store %struct.pt_sec_file_mapping* %107, %struct.pt_sec_file_mapping** %109, align 8
  %110 = load i32, i32* @pt_sec_file_unmap, align 4
  %111 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %112 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @pt_sec_file_read, align 4
  %114 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %115 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @pt_sec_file_memsize, align 4
  %117 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %118 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %3, align 4
  br label %123

119:                                              ; preds = %96
  %120 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %6, align 8
  %121 = call i32 @free(%struct.pt_sec_file_mapping* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %97, %88, %81, %74, %66, %57, %50, %41, %24, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local %struct.pt_sec_file_mapping* @malloc(i32) #1

declare dso_local i32 @fmap_init(%struct.pt_sec_file_mapping*) #1

declare dso_local i32 @free(%struct.pt_sec_file_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
