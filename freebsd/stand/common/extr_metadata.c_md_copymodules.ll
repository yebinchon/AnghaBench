; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_metadata.c_md_copymodules.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_metadata.c_md_copymodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.file_metadata*, i32, i32, i64, i32, i32, %struct.preloaded_file* }
%struct.file_metadata = type { i32, %struct.file_metadata* }

@MODINFOMD_NOCOPY = common dso_local global i32 0, align 4
@relocation_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @md_copymodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @md_copymodules(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.preloaded_file*, align 8
  %6 = alloca %struct.file_metadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = call %struct.preloaded_file* @file_findfile(i32* null, i32* null)
  store %struct.preloaded_file* %13, %struct.preloaded_file** %5, align 8
  br label %14

14:                                               ; preds = %98, %2
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %16 = icmp ne %struct.preloaded_file* %15, null
  br i1 %16, label %17, label %102

17:                                               ; preds = %14
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %20 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @MOD_NAME(i64 %18, i32 %21, i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %26 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @MOD_TYPE(i64 %24, i32 %27, i32 %28)
  %30 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %31 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %37 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @MOD_ARGS(i64 %35, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %17
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %46 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MOD_ADDR(i64 %48, i32 %49, i32 %50)
  %52 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %53 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MOD_SIZE(i64 %55, i32 %56, i32 %57)
  br label %73

59:                                               ; preds = %41
  %60 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %61 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i64, i64* %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @MOD_ADDR(i64 %63, i32 %64, i32 %65)
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %69 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @MOD_SIZE(i64 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %59, %44
  %74 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %75 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %74, i32 0, i32 0
  %76 = load %struct.file_metadata*, %struct.file_metadata** %75, align 8
  store %struct.file_metadata* %76, %struct.file_metadata** %6, align 8
  br label %77

77:                                               ; preds = %93, %73
  %78 = load %struct.file_metadata*, %struct.file_metadata** %6, align 8
  %79 = icmp ne %struct.file_metadata* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.file_metadata*, %struct.file_metadata** %6, align 8
  %82 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MODINFOMD_NOCOPY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %3, align 8
  %89 = load %struct.file_metadata*, %struct.file_metadata** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @MOD_METADATA(i64 %88, %struct.file_metadata* %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %80
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.file_metadata*, %struct.file_metadata** %6, align 8
  %95 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %94, i32 0, i32 1
  %96 = load %struct.file_metadata*, %struct.file_metadata** %95, align 8
  store %struct.file_metadata* %96, %struct.file_metadata** %6, align 8
  br label %77

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %100 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %99, i32 0, i32 6
  %101 = load %struct.preloaded_file*, %struct.preloaded_file** %100, align 8
  store %struct.preloaded_file* %101, %struct.preloaded_file** %5, align 8
  br label %14

102:                                              ; preds = %14
  %103 = load i64, i64* %3, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @MOD_END(i64 %103, i32 %104)
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i32*) #1

declare dso_local i32 @MOD_NAME(i64, i32, i32) #1

declare dso_local i32 @MOD_TYPE(i64, i32, i32) #1

declare dso_local i32 @MOD_ARGS(i64, i64, i32) #1

declare dso_local i32 @MOD_ADDR(i64, i32, i32) #1

declare dso_local i32 @MOD_SIZE(i64, i32, i32) #1

declare dso_local i32 @MOD_METADATA(i64, %struct.file_metadata*, i32) #1

declare dso_local i32 @MOD_END(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
