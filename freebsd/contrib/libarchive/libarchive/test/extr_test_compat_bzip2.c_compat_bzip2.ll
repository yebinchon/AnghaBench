; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_bzip2.c_compat_bzip2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_bzip2.c_compat_bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"f3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"d1/f1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"d1/f2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"d1/f3\00", align 1
@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Unsupported bzip2\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not read file %d (%s) from %s\00", align 1
@ARCHIVE_EOF = common dso_local global i64 0, align 8
@ARCHIVE_FILTER_BZIP2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @compat_bzip2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_bzip2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x i8*], align 16
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast [7 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 56, i1 false)
  %8 = bitcast i8* %7 to [7 x i8*]*
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i32 0, i32 5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %14, align 8
  %15 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %15, %struct.archive** %5, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @ARCHIVE_OK, align 8
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = call i64 @archive_read_support_filter_bzip2(%struct.archive* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @skipping(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.archive*, %struct.archive** %5, align 8
  %27 = load i64, i64* @ARCHIVE_OK, align 8
  %28 = load %struct.archive*, %struct.archive** %5, align 8
  %29 = call i32 @archive_read_support_format_all(%struct.archive* %28)
  %30 = call i32 @assertEqualIntA(%struct.archive* %26, i64 %27, i32 %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @extract_reference_file(i8* %31)
  %33 = load %struct.archive*, %struct.archive** %5, align 8
  %34 = load i64, i64* @ARCHIVE_OK, align 8
  %35 = load %struct.archive*, %struct.archive** %5, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @archive_read_open_filename(%struct.archive* %35, i8* %36, i32 2)
  %38 = call i32 @assertEqualIntA(%struct.archive* %33, i64 %34, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %62, %25
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @failure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %43, i8* %47, i8* %48)
  %50 = load %struct.archive*, %struct.archive** %5, align 8
  %51 = load i64, i64* @ARCHIVE_OK, align 8
  %52 = load %struct.archive*, %struct.archive** %5, align 8
  %53 = call i32 @archive_read_next_header(%struct.archive* %52, %struct.archive_entry** %4)
  %54 = call i32 @assertEqualIntA(%struct.archive* %50, i64 %51, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %60 = call i8* @archive_entry_pathname(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualString(i8* %58, i8* %60)
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.archive*, %struct.archive** %5, align 8
  %67 = load i64, i64* @ARCHIVE_EOF, align 8
  %68 = load %struct.archive*, %struct.archive** %5, align 8
  %69 = call i32 @archive_read_next_header(%struct.archive* %68, %struct.archive_entry** %4)
  %70 = call i32 @assertEqualIntA(%struct.archive* %66, i64 %67, i32 %69)
  %71 = load %struct.archive*, %struct.archive** %5, align 8
  %72 = call i64 @archive_filter_code(%struct.archive* %71, i32 0)
  %73 = load i32, i32* @ARCHIVE_FILTER_BZIP2, align 4
  %74 = call i32 @assertEqualInt(i64 %72, i32 %73)
  %75 = load %struct.archive*, %struct.archive** %5, align 8
  %76 = call i8* @archive_filter_name(%struct.archive* %75, i32 0)
  %77 = call i32 @assertEqualString(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %78 = load %struct.archive*, %struct.archive** %5, align 8
  %79 = call i64 @archive_format(%struct.archive* %78)
  %80 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %81 = call i32 @assertEqualInt(i64 %79, i32 %80)
  %82 = load %struct.archive*, %struct.archive** %5, align 8
  %83 = load i64, i64* @ARCHIVE_OK, align 8
  %84 = load %struct.archive*, %struct.archive** %5, align 8
  %85 = call i32 @archive_read_close(%struct.archive* %84)
  %86 = call i32 @assertEqualIntA(%struct.archive* %82, i64 %83, i32 %85)
  %87 = load %struct.archive*, %struct.archive** %5, align 8
  %88 = call i64 @archive_filter_code(%struct.archive* %87, i32 0)
  %89 = load i32, i32* @ARCHIVE_FILTER_BZIP2, align 4
  %90 = call i32 @assertEqualInt(i64 %88, i32 %89)
  %91 = load %struct.archive*, %struct.archive** %5, align 8
  %92 = call i8* @archive_filter_name(%struct.archive* %91, i32 0)
  %93 = call i32 @assertEqualString(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %94 = load %struct.archive*, %struct.archive** %5, align 8
  %95 = call i64 @archive_format(%struct.archive* %94)
  %96 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %97 = call i32 @assertEqualInt(i64 %95, i32 %96)
  %98 = load i64, i64* @ARCHIVE_OK, align 8
  %99 = load %struct.archive*, %struct.archive** %5, align 8
  %100 = call i32 @archive_read_free(%struct.archive* %99)
  %101 = call i32 @assertEqualInt(i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %65, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i64 @archive_read_support_filter_bzip2(%struct.archive*) #2

declare dso_local i32 @skipping(i8*) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i64, i32) #2

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i32 @extract_reference_file(i8*) #2

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #2

declare dso_local i32 @failure(i8*, i32, i8*, i8*) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i8*) #2

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i64, i32) #2

declare dso_local i64 @archive_filter_code(%struct.archive*, i32) #2

declare dso_local i8* @archive_filter_name(%struct.archive*, i32) #2

declare dso_local i64 @archive_format(%struct.archive*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
