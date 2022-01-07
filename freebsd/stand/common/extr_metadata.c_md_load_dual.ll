; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_metadata.c_md_load_dual.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_metadata.c_md_load_dual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i64, i64, %struct.preloaded_file* }
%struct.file_metadata = type { i64* }

@align = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rootdev\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"currdev\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"elf32 kernel\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"can't find kernel file\00", align 1
@MODINFOMD_HOWTO = common dso_local global i32 0, align 4
@MODINFOMD_ENVP = common dso_local global i32 0, align 4
@MODINFOMD_KERNEND = common dso_local global i32 0, align 4
@MODINFOMD_DTBP = common dso_local global i32 0, align 4
@MODINFOMD_DTLB = common dso_local global i32 0, align 4
@MODINFOMD_DTLB_SLOTS = common dso_local global i32 0, align 4
@MODINFOMD_ESYM = common dso_local global i32 0, align 4
@MODINFOMD_ITLB = common dso_local global i32 0, align 4
@MODINFOMD_ITLB_SLOTS = common dso_local global i32 0, align 4
@MODINFOMD_SSYM = common dso_local global i32 0, align 4
@dtlb_slot = common dso_local global i32 0, align 4
@dtlb_store = common dso_local global i32* null, align 8
@itlb_slot = common dso_local global i32 0, align 4
@itlb_store = common dso_local global i32* null, align 8
@relocation_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32)* @md_load_dual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_load_dual(i8* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.preloaded_file*, align 8
  %10 = alloca %struct.preloaded_file*, align 8
  %11 = alloca %struct.file_metadata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 8, i32 4
  store i32 %22, i32* @align, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @md_getboothowto(i8* %23)
  store i32 %24, i32* %18, align 4
  %25 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %17, align 8
  %26 = load i8*, i8** %17, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %17, align 8
  br label %30

30:                                               ; preds = %28, %4
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @getrootmount(i8* %31)
  store i64 0, i64* %13, align 8
  %33 = call %struct.preloaded_file* @file_findfile(i32* null, i8* null)
  store %struct.preloaded_file* %33, %struct.preloaded_file** %10, align 8
  br label %34

34:                                               ; preds = %56, %30
  %35 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %36 = icmp ne %struct.preloaded_file* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %40 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %43 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = icmp slt i64 %38, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %49 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %52 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %47, %37
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.preloaded_file*, %struct.preloaded_file** %10, align 8
  %58 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %57, i32 0, i32 2
  %59 = load %struct.preloaded_file*, %struct.preloaded_file** %58, align 8
  store %struct.preloaded_file* %59, %struct.preloaded_file** %10, align 8
  br label %34

60:                                               ; preds = %34
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i64 @roundup(i64 %61, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @md_copyenv(i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i64 @roundup(i64 %67, i32 %68)
  store i64 %69, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %74 = call %struct.preloaded_file* @file_findfile(i32* null, i8* %73)
  store %struct.preloaded_file* %74, %struct.preloaded_file** %9, align 8
  %75 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %76 = icmp eq %struct.preloaded_file* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store %struct.preloaded_file* %78, %struct.preloaded_file** %9, align 8
  br label %79

79:                                               ; preds = %77, %60
  %80 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %81 = icmp eq %struct.preloaded_file* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %86 = load i32, i32* @MODINFOMD_HOWTO, align 4
  %87 = call i32 (%struct.preloaded_file*, i32, i32, ...) @file_addmetadata(%struct.preloaded_file* %85, i32 %86, i32 4, i32* %18)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %16, align 8
  %92 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %93 = load i32, i32* @MODINFOMD_ENVP, align 4
  %94 = call i32 (%struct.preloaded_file*, i32, i32, ...) @file_addmetadata(%struct.preloaded_file* %92, i32 %93, i32 8, i64* %16)
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %16, align 8
  %96 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %97 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %98 = call i32 (%struct.preloaded_file*, i32, i32, ...) @file_addmetadata(%struct.preloaded_file* %96, i32 %97, i32 8, i64* %16)
  br label %106

99:                                               ; preds = %84
  %100 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %101 = load i32, i32* @MODINFOMD_ENVP, align 4
  %102 = call i32 (%struct.preloaded_file*, i32, i32, ...) @file_addmetadata(%struct.preloaded_file* %100, i32 %101, i32 8, i64* %14)
  %103 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %104 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %105 = call i32 (%struct.preloaded_file*, i32, i32, ...) @file_addmetadata(%struct.preloaded_file* %103, i32 %104, i32 8, i64* %12)
  br label %106

106:                                              ; preds = %99, %90
  %107 = load i64, i64* %13, align 8
  %108 = load i64*, i64** %6, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @md_copymodules(i64 0, i32 %109)
  store i64 %110, i64* %15, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %15, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = call i64 @roundup(i64 %113, i32 %114)
  store i64 %115, i64* %12, align 8
  %116 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %117 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %118 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %116, i32 %117)
  store %struct.file_metadata* %118, %struct.file_metadata** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %106
  %122 = load i64, i64* %12, align 8
  store i64 %122, i64* %16, align 8
  %123 = load %struct.file_metadata*, %struct.file_metadata** %11, align 8
  %124 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @bcopy(i64* %16, i64* %125, i32 8)
  br label %132

127:                                              ; preds = %106
  %128 = load %struct.file_metadata*, %struct.file_metadata** %11, align 8
  %129 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = call i32 @bcopy(i64* %12, i64* %130, i32 8)
  br label %132

132:                                              ; preds = %127, %121
  %133 = load i64, i64* %13, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i64 @md_copymodules(i64 %133, i32 %134)
  ret i32 0
}

declare dso_local i32 @md_getboothowto(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getrootmount(i8*) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @md_copyenv(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @file_addmetadata(%struct.preloaded_file*, i32, i32, ...) #1

declare dso_local i64 @md_copymodules(i64, i32) #1

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bcopy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
