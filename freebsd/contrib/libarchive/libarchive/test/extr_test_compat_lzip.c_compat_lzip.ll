; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_lzip.c_compat_lzip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_lzip.c_compat_lzip.c"
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
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"lzip reading not fully supported on this platform\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not read file %d (%s) from %s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_LZIP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"lzip\00", align 1
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @compat_lzip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_lzip(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x i8*], align 16
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = bitcast [7 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 56, i1 false)
  %9 = bitcast i8* %8 to [7 x i8*]*
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %15, align 8
  %16 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %16, %struct.archive** %5, align 8
  %17 = icmp ne %struct.archive* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = call i32 @archive_read_support_filter_all(%struct.archive* %22)
  %24 = call i32 @assertEqualIntA(%struct.archive* %20, i32 %21, i32 %23)
  %25 = load %struct.archive*, %struct.archive** %5, align 8
  %26 = call i32 @archive_read_support_filter_lzip(%struct.archive* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ARCHIVE_WARN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = call i32 @skipping(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = load %struct.archive*, %struct.archive** %5, align 8
  %34 = call i32 @archive_read_free(%struct.archive* %33)
  %35 = call i32 @assertEqualInt(i32 %32, i32 %34)
  br label %101

36:                                               ; preds = %1
  %37 = load %struct.archive*, %struct.archive** %5, align 8
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = call i32 @archive_read_support_format_all(%struct.archive* %39)
  %41 = call i32 @assertEqualIntA(%struct.archive* %37, i32 %38, i32 %40)
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @extract_reference_file(i8* %42)
  %44 = load %struct.archive*, %struct.archive** %5, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %5, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @archive_read_open_filename(%struct.archive* %46, i8* %47, i32 2)
  %49 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %73, %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @failure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %54, i8* %58, i8* %59)
  %61 = load %struct.archive*, %struct.archive** %5, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = load %struct.archive*, %struct.archive** %5, align 8
  %64 = call i32 @archive_read_next_header(%struct.archive* %63, %struct.archive_entry** %4)
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %62, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %71 = call i8* @archive_entry_pathname(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualString(i8* %69, i8* %71)
  br label %73

73:                                               ; preds = %53
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load %struct.archive*, %struct.archive** %5, align 8
  %78 = load i32, i32* @ARCHIVE_EOF, align 4
  %79 = load %struct.archive*, %struct.archive** %5, align 8
  %80 = call i32 @archive_read_next_header(%struct.archive* %79, %struct.archive_entry** %4)
  %81 = call i32 @assertEqualIntA(%struct.archive* %77, i32 %78, i32 %80)
  %82 = load %struct.archive*, %struct.archive** %5, align 8
  %83 = call i32 @archive_filter_code(%struct.archive* %82, i32 0)
  %84 = load i32, i32* @ARCHIVE_FILTER_LZIP, align 4
  %85 = call i32 @assertEqualInt(i32 %83, i32 %84)
  %86 = load %struct.archive*, %struct.archive** %5, align 8
  %87 = call i8* @archive_filter_name(%struct.archive* %86, i32 0)
  %88 = call i32 @assertEqualString(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %89 = load %struct.archive*, %struct.archive** %5, align 8
  %90 = call i32 @archive_format(%struct.archive* %89)
  %91 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %92 = call i32 @assertEqualInt(i32 %90, i32 %91)
  %93 = load i32, i32* @ARCHIVE_OK, align 4
  %94 = load %struct.archive*, %struct.archive** %5, align 8
  %95 = call i32 @archive_read_close(%struct.archive* %94)
  %96 = call i32 @assertEqualInt(i32 %93, i32 %95)
  %97 = load i32, i32* @ARCHIVE_OK, align 4
  %98 = load %struct.archive*, %struct.archive** %5, align 8
  %99 = call i32 @archive_read_free(%struct.archive* %98)
  %100 = call i32 @assertEqualInt(i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %76, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i32 @archive_read_support_filter_lzip(%struct.archive*) #2

declare dso_local i32 @skipping(i8*) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i32 @extract_reference_file(i8*) #2

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #2

declare dso_local i32 @failure(i8*, i32, i8*, i8*) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i8*) #2

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #2

declare dso_local i8* @archive_filter_name(%struct.archive*, i32) #2

declare dso_local i32 @archive_format(%struct.archive*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
