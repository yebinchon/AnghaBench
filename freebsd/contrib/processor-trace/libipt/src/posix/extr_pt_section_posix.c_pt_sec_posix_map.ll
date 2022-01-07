; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/posix/extr_pt_section_posix.c_pt_sec_posix_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/posix/extr_pt_section_posix.c_pt_sec_posix_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i64, i64, i32, i32, i32, %struct.pt_sec_posix_mapping* }
%struct.pt_sec_posix_mapping = type { i32*, i32*, i64, i32* }

@pte_internal = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@pte_bad_config = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@pte_nomem = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@pt_sec_posix_unmap = common dso_local global i32 0, align 4
@pt_sec_posix_read = common dso_local global i32 0, align 4
@pt_sec_posix_memsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_posix_map(%struct.pt_section* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_sec_posix_mapping*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %14 = icmp ne %struct.pt_section* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %119

18:                                               ; preds = %2
  %19 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %20 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %23 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @_SC_PAGESIZE, align 4
  %26 = call i64 @sysconf(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @pte_bad_config, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %119

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = srem i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %44 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @pte_internal, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %119

50:                                               ; preds = %32
  %51 = load i64, i64* @SIZE_MAX, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @pte_nomem, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %119

57:                                               ; preds = %50
  %58 = load i64, i64* @INT_MAX, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @pte_nomem, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %119

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @PROT_READ, align 4
  %67 = load i32, i32* @MAP_SHARED, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32* @mmap(i32* null, i64 %65, i32 %66, i32 %67, i32 %68, i32 %70)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** @MAP_FAILED, align 8
  %74 = icmp eq i32* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @pte_nomem, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %119

78:                                               ; preds = %64
  %79 = call %struct.pt_sec_posix_mapping* @malloc(i32 32)
  store %struct.pt_sec_posix_mapping* %79, %struct.pt_sec_posix_mapping** %6, align 8
  %80 = load %struct.pt_sec_posix_mapping*, %struct.pt_sec_posix_mapping** %6, align 8
  %81 = icmp ne %struct.pt_sec_posix_mapping* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @pte_nomem, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %12, align 4
  br label %114

85:                                               ; preds = %78
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.pt_sec_posix_mapping*, %struct.pt_sec_posix_mapping** %6, align 8
  %88 = getelementptr inbounds %struct.pt_sec_posix_mapping, %struct.pt_sec_posix_mapping* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.pt_sec_posix_mapping*, %struct.pt_sec_posix_mapping** %6, align 8
  %91 = getelementptr inbounds %struct.pt_sec_posix_mapping, %struct.pt_sec_posix_mapping* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load %struct.pt_sec_posix_mapping*, %struct.pt_sec_posix_mapping** %6, align 8
  %96 = getelementptr inbounds %struct.pt_sec_posix_mapping, %struct.pt_sec_posix_mapping* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load %struct.pt_sec_posix_mapping*, %struct.pt_sec_posix_mapping** %6, align 8
  %101 = getelementptr inbounds %struct.pt_sec_posix_mapping, %struct.pt_sec_posix_mapping* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.pt_sec_posix_mapping*, %struct.pt_sec_posix_mapping** %6, align 8
  %103 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %104 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %103, i32 0, i32 5
  store %struct.pt_sec_posix_mapping* %102, %struct.pt_sec_posix_mapping** %104, align 8
  %105 = load i32, i32* @pt_sec_posix_unmap, align 4
  %106 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %107 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @pt_sec_posix_read, align 4
  %109 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %110 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @pt_sec_posix_memsize, align 4
  %112 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %113 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %3, align 4
  br label %119

114:                                              ; preds = %82
  %115 = load i32*, i32** %10, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @munmap(i32* %115, i64 %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %85, %75, %61, %54, %47, %29, %15
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.pt_sec_posix_mapping* @malloc(i32) #1

declare dso_local i32 @munmap(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
