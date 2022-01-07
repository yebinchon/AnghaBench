; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_get_uncompressed_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_get_uncompressed_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct._7zip = type { i64, i64, i64, i8*, i64 }

@_7Z_COPY = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Truncated 7-Zip file data\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Damaged 7-Zip archive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i8**, i64, i64)* @get_uncompressed_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_uncompressed_data(%struct.archive_read* %0, i8** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._7zip*, align 8
  %11 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct._7zip*
  store %struct._7zip* %17, %struct._7zip** %10, align 8
  %18 = load %struct._7zip*, %struct._7zip** %10, align 8
  %19 = getelementptr inbounds %struct._7zip, %struct._7zip* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @_7Z_COPY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %4
  %24 = load %struct._7zip*, %struct._7zip** %10, align 8
  %25 = getelementptr inbounds %struct._7zip, %struct._7zip* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i8* @__archive_read_ahead(%struct.archive_read* %29, i64 %30, i64* %11)
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 0
  %38 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %39 = call i32 @archive_set_error(i32* %37, i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %40, i64* %5, align 8
  br label %116

41:                                               ; preds = %28
  %42 = load i64, i64* %11, align 8
  %43 = load %struct._7zip*, %struct._7zip** %10, align 8
  %44 = getelementptr inbounds %struct._7zip, %struct._7zip* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct._7zip*, %struct._7zip** %10, align 8
  %49 = getelementptr inbounds %struct._7zip, %struct._7zip* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i64, i64* %11, align 8
  %59 = load %struct._7zip*, %struct._7zip** %10, align 8
  %60 = getelementptr inbounds %struct._7zip, %struct._7zip* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  br label %109

61:                                               ; preds = %23, %4
  %62 = load %struct._7zip*, %struct._7zip** %10, align 8
  %63 = getelementptr inbounds %struct._7zip, %struct._7zip* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 0
  %69 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %70 = call i32 @archive_set_error(i32* %68, i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %71, i64* %5, align 8
  br label %116

72:                                               ; preds = %61
  %73 = load i64, i64* %9, align 8
  %74 = load %struct._7zip*, %struct._7zip** %10, align 8
  %75 = getelementptr inbounds %struct._7zip, %struct._7zip* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @extract_pack_stream(%struct.archive_read* %79, i64 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %84, i64* %5, align 8
  br label %116

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i64, i64* %8, align 8
  %88 = load %struct._7zip*, %struct._7zip** %10, align 8
  %89 = getelementptr inbounds %struct._7zip, %struct._7zip* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct._7zip*, %struct._7zip** %10, align 8
  %94 = getelementptr inbounds %struct._7zip, %struct._7zip* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %11, align 8
  br label %98

96:                                               ; preds = %86
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %96, %92
  %99 = load %struct._7zip*, %struct._7zip** %10, align 8
  %100 = getelementptr inbounds %struct._7zip, %struct._7zip* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %7, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct._7zip*, %struct._7zip** %10, align 8
  %105 = getelementptr inbounds %struct._7zip, %struct._7zip* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr i8, i8* %106, i64 %103
  store i8* %107, i8** %105, align 8
  br label %108

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %57
  %110 = load i64, i64* %11, align 8
  %111 = load %struct._7zip*, %struct._7zip** %10, align 8
  %112 = getelementptr inbounds %struct._7zip, %struct._7zip* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i64, i64* %11, align 8
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %109, %83, %66, %35
  %117 = load i64, i64* %5, align 8
  ret i64 %117
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @extract_pack_stream(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
