; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_consume_optional_marker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_consume_optional_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.zip = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8* }

@ZIP_LENGTH_AT_END = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Truncated ZIP end-of-file record\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@LA_USED_ZIP64 = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Overflow of 64-bit file sizes\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.zip*)* @consume_optional_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_optional_marker(%struct.archive_read* %0, %struct.zip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.zip* %1, %struct.zip** %5, align 8
  %9 = load %struct.zip*, %struct.zip** %5, align 8
  %10 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %139

13:                                               ; preds = %2
  %14 = load %struct.zip*, %struct.zip** %5, align 8
  %15 = getelementptr inbounds %struct.zip, %struct.zip* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %139

22:                                               ; preds = %13
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = call i8* @__archive_read_ahead(%struct.archive_read* %23, i32 24, i32* null)
  store i8* %24, i8** %6, align 8
  %25 = icmp eq i8* null, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 0
  %29 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %30 = call i32 @archive_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %3, align 4
  br label %141

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 80
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 75
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %6, align 8
  %59 = load %struct.zip*, %struct.zip** %5, align 8
  %60 = getelementptr inbounds %struct.zip, %struct.zip* %59, i32 0, i32 0
  store i32 4, i32* %60, align 8
  br label %61

61:                                               ; preds = %56, %50, %44, %38, %32
  %62 = load %struct.zip*, %struct.zip** %5, align 8
  %63 = getelementptr inbounds %struct.zip, %struct.zip* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LA_USED_ZIP64, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %61
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @archive_le32dec(i8* %71)
  %73 = load %struct.zip*, %struct.zip** %5, align 8
  %74 = getelementptr inbounds %struct.zip, %struct.zip* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = call i64 @archive_le64dec(i8* %78)
  store i64 %79, i64* %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  %82 = call i64 @archive_le64dec(i8* %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @INT64_MAX, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %70
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @INT64_MAX, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %70
  %91 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %92 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %91, i32 0, i32 0
  %93 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %94 = call i32 @archive_set_error(i32* %92, i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %95, i32* %3, align 4
  br label %141

96:                                               ; preds = %86
  %97 = load i64, i64* %7, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.zip*, %struct.zip** %5, align 8
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i8* %98, i8** %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.zip*, %struct.zip** %5, align 8
  %106 = getelementptr inbounds %struct.zip, %struct.zip* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i8* %104, i8** %108, align 8
  %109 = load %struct.zip*, %struct.zip** %5, align 8
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 20
  store i32 %112, i32* %110, align 8
  br label %138

113:                                              ; preds = %61
  %114 = load i8*, i8** %6, align 8
  %115 = call i8* @archive_le32dec(i8* %114)
  %116 = load %struct.zip*, %struct.zip** %5, align 8
  %117 = getelementptr inbounds %struct.zip, %struct.zip* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  store i8* %115, i8** %119, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = call i8* @archive_le32dec(i8* %121)
  %123 = load %struct.zip*, %struct.zip** %5, align 8
  %124 = getelementptr inbounds %struct.zip, %struct.zip* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  store i8* %122, i8** %126, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  %129 = call i8* @archive_le32dec(i8* %128)
  %130 = load %struct.zip*, %struct.zip** %5, align 8
  %131 = getelementptr inbounds %struct.zip, %struct.zip* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i8* %129, i8** %133, align 8
  %134 = load %struct.zip*, %struct.zip** %5, align 8
  %135 = getelementptr inbounds %struct.zip, %struct.zip* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 12
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %113, %96
  br label %139

139:                                              ; preds = %138, %13, %2
  %140 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %90, %26
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i8* @archive_le32dec(i8*) #1

declare dso_local i64 @archive_le64dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
