; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.filter_info = type { i32, i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@FILTER_ARM = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid filter encountered\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Can't allocate memory for a filter descriptor.\00", align 1
@FILTER_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32*)* @parse_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_filter(%struct.archive_read* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rar5*, align 8
  %10 = alloca %struct.filter_info*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = call %struct.rar5* @get_context(%struct.archive_read* %12)
  store %struct.rar5* %13, %struct.rar5** %9, align 8
  %14 = load i64, i64* @ARCHIVE_OK, align 8
  %15 = load %struct.rar5*, %struct.rar5** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @parse_filter_data(%struct.rar5* %15, i32* %16, i32* %6)
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %20, i32* %3, align 4
  br label %119

21:                                               ; preds = %2
  %22 = load i64, i64* @ARCHIVE_OK, align 8
  %23 = load %struct.rar5*, %struct.rar5** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @parse_filter_data(%struct.rar5* %23, i32* %24, i32* %7)
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %28, i32* %3, align 4
  br label %119

29:                                               ; preds = %21
  %30 = load i64, i64* @ARCHIVE_OK, align 8
  %31 = load %struct.rar5*, %struct.rar5** %9, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @read_bits_16(%struct.rar5* %31, i32* %32, i32* %8)
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %119

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 13
  store i32 %39, i32* %8, align 4
  %40 = load %struct.rar5*, %struct.rar5** %9, align 8
  %41 = call i32 @skip_bits(%struct.rar5* %40, i32 3)
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 4194304
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @FILTER_ARM, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.rar5*, %struct.rar5** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @is_valid_filter_block_start(%struct.rar5* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %47, %44, %37
  %57 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %58 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %57, i32 0, i32 0
  %59 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %60 = call i32 @archive_set_error(i32* %58, i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %61, i32* %3, align 4
  br label %119

62:                                               ; preds = %51
  %63 = load %struct.rar5*, %struct.rar5** %9, align 8
  %64 = call %struct.filter_info* @add_new_filter(%struct.rar5* %63)
  store %struct.filter_info* %64, %struct.filter_info** %10, align 8
  %65 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %66 = icmp eq %struct.filter_info* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %69 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %68, i32 0, i32 0
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @archive_set_error(i32* %69, i32 %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %72, i32* %3, align 4
  br label %119

73:                                               ; preds = %62
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %76 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rar5*, %struct.rar5** %9, align 8
  %78 = getelementptr inbounds %struct.rar5, %struct.rar5* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %84 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %87 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %89 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rar5*, %struct.rar5** %9, align 8
  %92 = getelementptr inbounds %struct.rar5, %struct.rar5* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %95 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rar5*, %struct.rar5** %9, align 8
  %98 = getelementptr inbounds %struct.rar5, %struct.rar5* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @FILTER_DELTA, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %73
  %104 = load i64, i64* @ARCHIVE_OK, align 8
  %105 = load %struct.rar5*, %struct.rar5** %9, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i64 @read_consume_bits(%struct.rar5* %105, i32* %106, i32 5, i32* %11)
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %110, i32* %3, align 4
  br label %119

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = load %struct.filter_info*, %struct.filter_info** %10, align 8
  %115 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %73
  %117 = load i64, i64* @ARCHIVE_OK, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %109, %67, %56, %35, %27, %19
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i64 @parse_filter_data(%struct.rar5*, i32*, i32*) #1

declare dso_local i64 @read_bits_16(%struct.rar5*, i32*, i32*) #1

declare dso_local i32 @skip_bits(%struct.rar5*, i32) #1

declare dso_local i32 @is_valid_filter_block_start(%struct.rar5*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local %struct.filter_info* @add_new_filter(%struct.rar5*) #1

declare dso_local i64 @read_consume_bits(%struct.rar5*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
