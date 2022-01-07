; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_lz4.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_lz4.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"lz4 reading not fully supported on this platform\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not read file %d (%s) from %s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_LZ4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %9, %struct.archive** %6, align 8
  %10 = icmp ne %struct.archive* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.archive*, %struct.archive** %6, align 8
  %14 = call i32 @archive_read_support_filter_lz4(%struct.archive* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ARCHIVE_WARN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = call i32 @skipping(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %6, align 8
  %22 = call i32 @archive_read_free(%struct.archive* %21)
  %23 = call i32 @assertEqualInt(i32 %20, i32 %22)
  br label %111

24:                                               ; preds = %2
  %25 = load %struct.archive*, %struct.archive** %6, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @assertEqualIntA(%struct.archive* %25, i32 %26, i32 %27)
  %29 = load %struct.archive*, %struct.archive** %6, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %6, align 8
  %32 = call i32 @archive_read_support_filter_all(%struct.archive* %31)
  %33 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %6, align 8
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  %36 = load %struct.archive*, %struct.archive** %6, align 8
  %37 = call i32 @archive_read_support_format_all(%struct.archive* %36)
  %38 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @copy_reference_file(i8* %39)
  %41 = load %struct.archive*, %struct.archive** %6, align 8
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  %43 = load %struct.archive*, %struct.archive** %6, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @archive_read_open_filename(%struct.archive* %43, i8* %44, i32 200)
  %46 = call i32 @assertEqualIntA(%struct.archive* %41, i32 %42, i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %83, %24
  %48 = load i8**, i8*** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %86

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @failure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %60, i8* %61)
  %63 = load %struct.archive*, %struct.archive** %6, align 8
  %64 = load i32, i32* @ARCHIVE_OK, align 4
  %65 = load %struct.archive*, %struct.archive** %6, align 8
  %66 = call i32 @archive_read_next_header(%struct.archive* %65, %struct.archive_entry** %5)
  %67 = call i32 @assertEqualIntA(%struct.archive* %63, i32 %64, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load %struct.archive*, %struct.archive** %6, align 8
  %73 = call i32 @archive_read_free(%struct.archive* %72)
  br label %111

74:                                               ; preds = %54
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %81 = call i8* @archive_entry_pathname(%struct.archive_entry* %80)
  %82 = call i32 @assertEqualString(i8* %79, i8* %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load %struct.archive*, %struct.archive** %6, align 8
  %88 = load i32, i32* @ARCHIVE_EOF, align 4
  %89 = load %struct.archive*, %struct.archive** %6, align 8
  %90 = call i32 @archive_read_next_header(%struct.archive* %89, %struct.archive_entry** %5)
  %91 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %90)
  %92 = load %struct.archive*, %struct.archive** %6, align 8
  %93 = call i32 @archive_filter_code(%struct.archive* %92, i32 0)
  %94 = load i32, i32* @ARCHIVE_FILTER_LZ4, align 4
  %95 = call i32 @assertEqualInt(i32 %93, i32 %94)
  %96 = load %struct.archive*, %struct.archive** %6, align 8
  %97 = call i8* @archive_filter_name(%struct.archive* %96, i32 0)
  %98 = call i32 @assertEqualString(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.archive*, %struct.archive** %6, align 8
  %100 = call i32 @archive_format(%struct.archive* %99)
  %101 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %102 = call i32 @assertEqualInt(i32 %100, i32 %101)
  %103 = load i32, i32* @ARCHIVE_OK, align 4
  %104 = load %struct.archive*, %struct.archive** %6, align 8
  %105 = call i32 @archive_read_close(%struct.archive* %104)
  %106 = call i32 @assertEqualInt(i32 %103, i32 %105)
  %107 = load i32, i32* @ARCHIVE_OK, align 4
  %108 = load %struct.archive*, %struct.archive** %6, align 8
  %109 = call i32 @archive_read_free(%struct.archive* %108)
  %110 = call i32 @assertEqualInt(i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %86, %71, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_filter_lz4(%struct.archive*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @copy_reference_file(i8*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @failure(i8*, i32, i8*, i8*) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i8* @archive_filter_name(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
