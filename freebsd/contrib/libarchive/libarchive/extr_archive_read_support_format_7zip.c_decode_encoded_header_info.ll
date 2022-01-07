; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_decode_encoded_header_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_decode_encoded_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct._7z_stream_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64* }
%struct.TYPE_5__ = type { i64 }
%struct._7zip = type { i64 }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Couldn't allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Malformed 7-Zip archive\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Malformed Header offset\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_stream_info*)* @decode_encoded_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_encoded_header_info(%struct.archive_read* %0, %struct._7z_stream_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct._7z_stream_info*, align 8
  %6 = alloca %struct._7zip*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct._7z_stream_info* %1, %struct._7z_stream_info** %5, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct._7zip*
  store %struct._7zip* %12, %struct._7zip** %6, align 8
  store i64 0, i64* @errno, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %14 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %15 = call i64 @read_StreamsInfo(%struct.archive_read* %13, %struct._7z_stream_info* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %23 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %22, i32 0, i32 0
  %24 = call i32 @archive_set_error(i32* %23, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 0
  %28 = call i32 @archive_set_error(i32* %27, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %30, i32* %3, align 4
  br label %98

31:                                               ; preds = %2
  %32 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %33 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %39 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37, %31
  %44 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %45 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %44, i32 0, i32 0
  %46 = call i32 @archive_set_error(i32* %45, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %37
  %49 = load %struct._7zip*, %struct._7zip** %6, align 8
  %50 = getelementptr inbounds %struct._7zip, %struct._7zip* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %53 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %57 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %55, %61
  %63 = icmp slt i64 %51, %62
  br i1 %63, label %91, label %64

64:                                               ; preds = %48
  %65 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %66 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %70 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %68, %74
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %64
  %78 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %79 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %87 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85, %77, %64, %48
  %92 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %93 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %92, i32 0, i32 0
  %94 = call i32 @archive_set_error(i32* %93, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %85
  %97 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %91, %43, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @read_StreamsInfo(%struct.archive_read*, %struct._7z_stream_info*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
