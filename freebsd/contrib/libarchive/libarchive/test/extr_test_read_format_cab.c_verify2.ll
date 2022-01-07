; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_cab.c_verify2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_cab.c_verify2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@MSZIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Skipping CAB format(MSZIP) check for %s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@STORE = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"dir2/file2\00", align 1
@file2_size = common dso_local global i32 0, align 4
@file2 = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_CAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @verify2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MSZIP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = call i32* (...) @archive_zlib_version()
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @skipping(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %155

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 128)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @extract_reference_file(i8* %21)
  %23 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %23, %struct.archive** %6, align 8
  %24 = icmp ne %struct.archive* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.archive*, %struct.archive** %6, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %6, align 8
  %30 = call i32 @archive_read_support_filter_all(%struct.archive* %29)
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %6, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %6, align 8
  %35 = call i32 @archive_read_support_format_all(%struct.archive* %34)
  %36 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %35)
  %37 = load %struct.archive*, %struct.archive** %6, align 8
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = load %struct.archive*, %struct.archive** %6, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @archive_read_open_filename(%struct.archive* %39, i8* %40, i32 10240)
  %42 = call i32 @assertEqualIntA(%struct.archive* %37, i32 %38, i32 %41)
  %43 = load %struct.archive*, %struct.archive** %6, align 8
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %6, align 8
  %46 = call i32 @archive_read_next_header(%struct.archive* %45, %struct.archive_entry** %5)
  %47 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %49 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %48)
  %50 = call i32 @assertEqualInt(i32 %49, i32 0)
  %51 = load %struct.archive*, %struct.archive** %6, align 8
  %52 = load %struct.archive*, %struct.archive** %6, align 8
  %53 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %52)
  %54 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %55 = call i32 @assertEqualIntA(%struct.archive* %51, i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @STORE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %18
  %60 = load %struct.archive*, %struct.archive** %6, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = load %struct.archive*, %struct.archive** %6, align 8
  %63 = call i32 @archive_read_next_header(%struct.archive* %62, %struct.archive_entry** %5)
  %64 = call i32 @assertEqualIntA(%struct.archive* %60, i32 %61, i32 %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %66 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 %66, i32 0)
  %68 = load %struct.archive*, %struct.archive** %6, align 8
  %69 = load %struct.archive*, %struct.archive** %6, align 8
  %70 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %69)
  %71 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %72 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %59, %18
  %74 = load %struct.archive*, %struct.archive** %6, align 8
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  %76 = load %struct.archive*, %struct.archive** %6, align 8
  %77 = call i32 @archive_read_next_header(%struct.archive* %76, %struct.archive_entry** %5)
  %78 = call i32 @assertEqualIntA(%struct.archive* %74, i32 %75, i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %80 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 %80, i32 0)
  %82 = load %struct.archive*, %struct.archive** %6, align 8
  %83 = load %struct.archive*, %struct.archive** %6, align 8
  %84 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %83)
  %85 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %86 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %84, i32 %85)
  %87 = load %struct.archive*, %struct.archive** %6, align 8
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %6, align 8
  %90 = call i32 @archive_read_next_header(%struct.archive* %89, %struct.archive_entry** %5)
  %91 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %90)
  %92 = load i32, i32* @AE_IFREG, align 4
  %93 = or i32 %92, 438
  %94 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %95 = call i32 @archive_entry_mode(%struct.archive_entry* %94)
  %96 = call i32 @assertEqualInt(i32 %93, i32 %95)
  %97 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %98 = call i32 @archive_entry_pathname(%struct.archive_entry* %97)
  %99 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %101 = call i32 @archive_entry_uid(%struct.archive_entry* %100)
  %102 = call i32 @assertEqualInt(i32 0, i32 %101)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %104 = call i32 @archive_entry_gid(%struct.archive_entry* %103)
  %105 = call i32 @assertEqualInt(i32 0, i32 %104)
  %106 = load i32, i32* @file2_size, align 4
  %107 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %108 = call i32 @archive_entry_size(%struct.archive_entry* %107)
  %109 = call i32 @assertEqualInt(i32 %106, i32 %108)
  %110 = load i32, i32* @file2_size, align 4
  %111 = load %struct.archive*, %struct.archive** %6, align 8
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %113 = load i32, i32* @file2_size, align 4
  %114 = call i32 @archive_read_data(%struct.archive* %111, i8* %112, i32 %113)
  %115 = call i32 @assertEqualInt(i32 %110, i32 %114)
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %117 = load i32, i32* @file2, align 4
  %118 = load i32, i32* @file2_size, align 4
  %119 = call i32 @assertEqualMem(i8* %116, i32 %117, i32 %118)
  %120 = load %struct.archive*, %struct.archive** %6, align 8
  %121 = load i32, i32* @ARCHIVE_EOF, align 4
  %122 = load %struct.archive*, %struct.archive** %6, align 8
  %123 = call i32 @archive_read_next_header(%struct.archive* %122, %struct.archive_entry** %5)
  %124 = call i32 @assertEqualIntA(%struct.archive* %120, i32 %121, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @STORE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %73
  %129 = load %struct.archive*, %struct.archive** %6, align 8
  %130 = call i32 @archive_file_count(%struct.archive* %129)
  %131 = call i32 @assertEqualInt(i32 4, i32 %130)
  br label %136

132:                                              ; preds = %73
  %133 = load %struct.archive*, %struct.archive** %6, align 8
  %134 = call i32 @archive_file_count(%struct.archive* %133)
  %135 = call i32 @assertEqualInt(i32 3, i32 %134)
  br label %136

136:                                              ; preds = %132, %128
  %137 = load %struct.archive*, %struct.archive** %6, align 8
  %138 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %139 = load %struct.archive*, %struct.archive** %6, align 8
  %140 = call i32 @archive_filter_code(%struct.archive* %139, i32 0)
  %141 = call i32 @assertEqualIntA(%struct.archive* %137, i32 %138, i32 %140)
  %142 = load %struct.archive*, %struct.archive** %6, align 8
  %143 = load i32, i32* @ARCHIVE_FORMAT_CAB, align 4
  %144 = load %struct.archive*, %struct.archive** %6, align 8
  %145 = call i32 @archive_format(%struct.archive* %144)
  %146 = call i32 @assertEqualIntA(%struct.archive* %142, i32 %143, i32 %145)
  %147 = load i32, i32* @ARCHIVE_OK, align 4
  %148 = load %struct.archive*, %struct.archive** %6, align 8
  %149 = call i32 @archive_read_close(%struct.archive* %148)
  %150 = call i32 @assertEqualInt(i32 %147, i32 %149)
  %151 = load i32, i32* @ARCHIVE_OK, align 4
  %152 = load %struct.archive*, %struct.archive** %6, align 8
  %153 = call i32 @archive_read_free(%struct.archive* %152)
  %154 = call i32 @assertEqualInt(i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %136, %15
  ret void
}

declare dso_local i32* @archive_zlib_version(...) #1

declare dso_local i32 @skipping(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i32, i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
