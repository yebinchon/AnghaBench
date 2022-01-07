; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_section_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_section_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i8*, i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@pte_bad_file = common dso_local global i32 0, align 4
@_O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_map(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %9 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %10 = icmp ne %struct.pt_section* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %126

14:                                               ; preds = %1
  %15 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %16 = call i32 @pt_section_lock(%struct.pt_section* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %126

21:                                               ; preds = %14
  %22 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %23 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %28 = call i32 @pt_sec_windows_map_success(%struct.pt_section* %27)
  store i32 %28, i32* %2, align 4
  br label %126

29:                                               ; preds = %21
  %30 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %31 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @pte_internal, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %122

37:                                               ; preds = %29
  %38 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %39 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @pte_internal, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %122

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @GENERIC_READ, align 4
  %49 = load i32, i32* @FILE_SHARE_READ, align 4
  %50 = load i32, i32* @OPEN_EXISTING, align 4
  %51 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %52 = call i64 @CreateFileA(i8* %47, i32 %48, i32 %49, i32* null, i32 %50, i32 %51, i32* null)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %46
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @GENERIC_READ, align 4
  %59 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %60 = load i32, i32* @OPEN_EXISTING, align 4
  %61 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %62 = call i64 @CreateFileA(i8* %57, i32 %58, i32 %59, i32* null, i32 %60, i32 %61, i32* null)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @pte_bad_file, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %122

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* @_O_RDONLY, align 4
  %73 = call i32 @_open_osfhandle(i64 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @pte_bad_file, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %119

79:                                               ; preds = %70
  %80 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @check_file_status(%struct.pt_section* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %115

86:                                               ; preds = %79
  %87 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @pt_sec_windows_map(%struct.pt_section* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %94 = call i32 @pt_sec_windows_map_success(%struct.pt_section* %93)
  store i32 %94, i32* %2, align 4
  br label %126

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  %97 = call i32* @_fdopen(i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @pte_bad_file, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %115

103:                                              ; preds = %95
  %104 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @pt_sec_file_map(%struct.pt_section* %104, i32* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %111 = call i32 @pt_sec_windows_map_success(%struct.pt_section* %110)
  store i32 %111, i32* %2, align 4
  br label %126

112:                                              ; preds = %103
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @fclose(i32* %113)
  br label %122

115:                                              ; preds = %100, %85
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @_close(i32 %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %126

119:                                              ; preds = %76
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @CloseHandle(i64 %120)
  br label %122

122:                                              ; preds = %119, %112, %66, %43, %34
  %123 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %124 = call i32 @pt_section_unlock(%struct.pt_section* %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %115, %109, %92, %26, %19, %11
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local i32 @pt_sec_windows_map_success(%struct.pt_section*) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i32 @check_file_status(%struct.pt_section*, i32) #1

declare dso_local i32 @pt_sec_windows_map(%struct.pt_section*, i32) #1

declare dso_local i32* @_fdopen(i32, i8*) #1

declare dso_local i32 @pt_sec_file_map(%struct.pt_section*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
