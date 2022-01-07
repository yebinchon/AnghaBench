; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_gzip.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_gzip.c_verify.c"
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
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"gzip reading not fully supported on this platform\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not read file %d (%s) from %s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_GZIP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0) #0 {
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
  %21 = call i32 @archive_read_support_filter_gzip(%struct.archive* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ARCHIVE_WARN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = call i32 @skipping(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = load %struct.archive*, %struct.archive** %5, align 8
  %29 = call i32 @archive_read_free(%struct.archive* %28)
  %30 = call i32 @assertEqualInt(i32 %27, i32 %29)
  br label %107

31:                                               ; preds = %1
  %32 = load %struct.archive*, %struct.archive** %5, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %34)
  %36 = load %struct.archive*, %struct.archive** %5, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = load %struct.archive*, %struct.archive** %5, align 8
  %39 = call i32 @archive_read_support_format_all(%struct.archive* %38)
  %40 = call i32 @assertEqualIntA(%struct.archive* %36, i32 %37, i32 %39)
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @extract_reference_file(i8* %41)
  %43 = load %struct.archive*, %struct.archive** %5, align 8
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %5, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @archive_read_open_filename(%struct.archive* %45, i8* %46, i32 200)
  %48 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %79, %31
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @failure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %53, i8* %57, i8* %58)
  %60 = load %struct.archive*, %struct.archive** %5, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = load %struct.archive*, %struct.archive** %5, align 8
  %63 = call i32 @archive_read_next_header(%struct.archive* %62, %struct.archive_entry** %4)
  %64 = call i32 @assertEqualIntA(%struct.archive* %60, i32 %61, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load %struct.archive*, %struct.archive** %5, align 8
  %70 = call i32 @archive_read_free(%struct.archive* %69)
  br label %107

71:                                               ; preds = %52
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %77 = call i8* @archive_entry_pathname(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualString(i8* %75, i8* %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load %struct.archive*, %struct.archive** %5, align 8
  %84 = load i32, i32* @ARCHIVE_EOF, align 4
  %85 = load %struct.archive*, %struct.archive** %5, align 8
  %86 = call i32 @archive_read_next_header(%struct.archive* %85, %struct.archive_entry** %4)
  %87 = call i32 @assertEqualIntA(%struct.archive* %83, i32 %84, i32 %86)
  %88 = load %struct.archive*, %struct.archive** %5, align 8
  %89 = call i32 @archive_filter_code(%struct.archive* %88, i32 0)
  %90 = load i32, i32* @ARCHIVE_FILTER_GZIP, align 4
  %91 = call i32 @assertEqualInt(i32 %89, i32 %90)
  %92 = load %struct.archive*, %struct.archive** %5, align 8
  %93 = call i8* @archive_filter_name(%struct.archive* %92, i32 0)
  %94 = call i32 @assertEqualString(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %95 = load %struct.archive*, %struct.archive** %5, align 8
  %96 = call i32 @archive_format(%struct.archive* %95)
  %97 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %98 = call i32 @assertEqualInt(i32 %96, i32 %97)
  %99 = load i32, i32* @ARCHIVE_OK, align 4
  %100 = load %struct.archive*, %struct.archive** %5, align 8
  %101 = call i32 @archive_read_close(%struct.archive* %100)
  %102 = call i32 @assertEqualInt(i32 %99, i32 %101)
  %103 = load i32, i32* @ARCHIVE_OK, align 4
  %104 = load %struct.archive*, %struct.archive** %5, align 8
  %105 = call i32 @archive_read_free(%struct.archive* %104)
  %106 = call i32 @assertEqualInt(i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %82, %68, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @archive_read_support_filter_gzip(%struct.archive*) #2

declare dso_local i32 @skipping(i8*) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

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
