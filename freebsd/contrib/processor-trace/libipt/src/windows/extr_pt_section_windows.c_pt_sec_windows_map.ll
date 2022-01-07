; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_sec_windows_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i64, i64, i32, i32, i32, %struct.pt_sec_windows_mapping* }
%struct.pt_sec_windows_mapping = type { i32, i32*, i32*, i32*, i64 }

@pte_internal = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@pt_sec_windows_unmap = common dso_local global i32 0, align 4
@pt_sec_windows_read = common dso_local global i32 0, align 4
@pt_sec_windows_memsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_windows_map(%struct.pt_section* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_sec_windows_mapping*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %16 = icmp ne %struct.pt_section* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %22 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %25 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 (...) @granularity()
  %29 = srem i64 %27, %28
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %38 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load i32, i32* @pte_internal, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %122

44:                                               ; preds = %20
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @pte_internal, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %122

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @_get_osfhandle(i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* @PAGE_READONLY, align 4
  %57 = call i64 @CreateFileMapping(i64 %55, i32* null, i32 %56, i32 0, i32 0, i32* null)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @pte_bad_image, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %122

63:                                               ; preds = %52
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* @FILE_MAP_READ, align 4
  %66 = load i64, i64* %7, align 8
  %67 = ashr i64 %66, 32
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32* @MapViewOfFile(i64 %64, i32 %65, i64 %67, i64 %68, i64 %69)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* @pte_bad_image, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %14, align 4
  br label %118

76:                                               ; preds = %63
  %77 = call %struct.pt_sec_windows_mapping* @malloc(i32 40)
  store %struct.pt_sec_windows_mapping* %77, %struct.pt_sec_windows_mapping** %6, align 8
  %78 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %79 = icmp ne %struct.pt_sec_windows_mapping* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @pte_nomem, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %115

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %86 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %89 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %92 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %97 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %102 = getelementptr inbounds %struct.pt_sec_windows_mapping, %struct.pt_sec_windows_mapping* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load %struct.pt_sec_windows_mapping*, %struct.pt_sec_windows_mapping** %6, align 8
  %104 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %105 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %104, i32 0, i32 5
  store %struct.pt_sec_windows_mapping* %103, %struct.pt_sec_windows_mapping** %105, align 8
  %106 = load i32, i32* @pt_sec_windows_unmap, align 4
  %107 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %108 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @pt_sec_windows_read, align 4
  %110 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %111 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @pt_sec_windows_memsize, align 4
  %113 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %114 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %122

115:                                              ; preds = %80
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @UnmapViewOfFile(i32* %116)
  br label %118

118:                                              ; preds = %115, %73
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @CloseHandle(i64 %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %83, %60, %49, %41, %17
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @granularity(...) #1

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i64 @CreateFileMapping(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @MapViewOfFile(i64, i32, i64, i64, i64) #1

declare dso_local %struct.pt_sec_windows_mapping* @malloc(i32) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
