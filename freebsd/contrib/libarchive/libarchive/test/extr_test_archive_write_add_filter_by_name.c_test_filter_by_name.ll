; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_add_filter_by_name.c_test_filter_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_add_filter_by_name.c_test_filter_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s filter not supported on this platform\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"lzma compression not supported on this platform\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"xz compression not supported on this platform\00", align 1
@ARCHIVE_FILTER_LRZIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"lrzip:compression=none\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32 ()*)* @test_filter_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filter_by_name(i8* %0, i32 %1, i32 ()* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 ()*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.archive*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 ()* %2, i32 ()** %6, align 8
  store i64 131072, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = call i8* @calloc(i32 1, i64 %13)
  store i8* %14, i8** %11, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %11, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %229

21:                                               ; preds = %3
  %22 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %22, %struct.archive** %8, align 8
  %23 = icmp ne %struct.archive* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.archive*, %struct.archive** %8, align 8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = load %struct.archive*, %struct.archive** %8, align 8
  %29 = call i32 @archive_write_set_format_ustar(%struct.archive* %28)
  %30 = call i32 @assertEqualIntA(%struct.archive* %26, i32 %27, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %8, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @archive_write_add_filter_by_name(%struct.archive* %31, i8* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @ARCHIVE_WARN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %21
  %38 = load i32 ()*, i32 ()** %6, align 8
  %39 = call i32 %38()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @skipping(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %8, align 8
  %46 = call i32 @archive_write_free(%struct.archive* %45)
  %47 = call i32 @assertEqualInt(i32 %44, i32 %46)
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @free(i8* %48)
  br label %229

50:                                               ; preds = %37
  br label %89

51:                                               ; preds = %21
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ARCHIVE_FATAL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.archive*, %struct.archive** %8, align 8
  %57 = call i32 @archive_error_string(%struct.archive* %56)
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.archive*, %struct.archive** %8, align 8
  %62 = call i32 @archive_error_string(%struct.archive* %61)
  %63 = call i64 @strcmp(i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60, %55
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @skipping(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @ARCHIVE_OK, align 4
  %69 = load %struct.archive*, %struct.archive** %8, align 8
  %70 = call i32 @archive_write_free(%struct.archive* %69)
  %71 = call i32 @assertEqualInt(i32 %68, i32 %70)
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @free(i8* %72)
  br label %229

74:                                               ; preds = %60, %51
  %75 = load %struct.archive*, %struct.archive** %8, align 8
  %76 = load i32, i32* @ARCHIVE_OK, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @assertEqualIntA(%struct.archive* %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ARCHIVE_OK, align 4
  %82 = load %struct.archive*, %struct.archive** %8, align 8
  %83 = call i32 @archive_write_free(%struct.archive* %82)
  %84 = call i32 @assertEqualInt(i32 %81, i32 %83)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free(i8* %85)
  br label %229

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @ARCHIVE_FILTER_LRZIP, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.archive*, %struct.archive** %8, align 8
  %95 = load i32, i32* @ARCHIVE_OK, align 4
  %96 = load %struct.archive*, %struct.archive** %8, align 8
  %97 = call i32 @archive_write_set_options(%struct.archive* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %98 = call i32 @assertEqualIntA(%struct.archive* %94, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %93, %89
  %100 = load %struct.archive*, %struct.archive** %8, align 8
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  %102 = load %struct.archive*, %struct.archive** %8, align 8
  %103 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %102, i32 10)
  %104 = call i32 @assertEqualIntA(%struct.archive* %100, i32 %101, i32 %103)
  %105 = load %struct.archive*, %struct.archive** %8, align 8
  %106 = load i32, i32* @ARCHIVE_OK, align 4
  %107 = load %struct.archive*, %struct.archive** %8, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @archive_write_open_memory(%struct.archive* %107, i8* %108, i64 %109, i64* %9)
  %111 = call i32 @assertEqualIntA(%struct.archive* %105, i32 %106, i32 %110)
  %112 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %112, %struct.archive_entry** %7, align 8
  %113 = icmp ne %struct.archive_entry* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %117 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %116, i32 1, i32 0)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %119 = call i32 @archive_entry_mtime(%struct.archive_entry* %118)
  %120 = call i32 @assertEqualInt(i32 1, i32 %119)
  %121 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %122 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %121, i32 1, i32 0)
  %123 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %124 = call i32 @archive_entry_ctime(%struct.archive_entry* %123)
  %125 = call i32 @assertEqualInt(i32 1, i32 %124)
  %126 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %127 = call i32 @archive_entry_set_atime(%struct.archive_entry* %126, i32 1, i32 0)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %129 = call i32 @archive_entry_atime(%struct.archive_entry* %128)
  %130 = call i32 @assertEqualInt(i32 1, i32 %129)
  %131 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %132 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %134 = call i32 @archive_entry_pathname(%struct.archive_entry* %133)
  %135 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %137 = load i32, i32* @AE_IFREG, align 4
  %138 = or i32 %137, 493
  %139 = call i32 @archive_entry_set_mode(%struct.archive_entry* %136, i32 %138)
  %140 = load i32, i32* @AE_IFREG, align 4
  %141 = or i32 %140, 493
  %142 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %143 = call i32 @archive_entry_mode(%struct.archive_entry* %142)
  %144 = call i32 @assertEqualInt(i32 %141, i32 %143)
  %145 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %146 = call i32 @archive_entry_set_size(%struct.archive_entry* %145, i32 8)
  %147 = load %struct.archive*, %struct.archive** %8, align 8
  %148 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %149 = call i32 @archive_write_header(%struct.archive* %147, %struct.archive_entry* %148)
  %150 = call i32 @assertEqualInt(i32 0, i32 %149)
  %151 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %152 = call i32 @archive_entry_free(%struct.archive_entry* %151)
  %153 = load %struct.archive*, %struct.archive** %8, align 8
  %154 = call i32 @archive_write_data(%struct.archive* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %155 = call i32 @assertEqualInt(i32 8, i32 %154)
  %156 = load %struct.archive*, %struct.archive** %8, align 8
  %157 = load i32, i32* @ARCHIVE_OK, align 4
  %158 = load %struct.archive*, %struct.archive** %8, align 8
  %159 = call i32 @archive_write_close(%struct.archive* %158)
  %160 = call i32 @assertEqualIntA(%struct.archive* %156, i32 %157, i32 %159)
  %161 = load i32, i32* @ARCHIVE_OK, align 4
  %162 = load %struct.archive*, %struct.archive** %8, align 8
  %163 = call i32 @archive_write_free(%struct.archive* %162)
  %164 = call i32 @assertEqualInt(i32 %161, i32 %163)
  %165 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %165, %struct.archive** %8, align 8
  %166 = icmp ne %struct.archive* %165, null
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.archive*, %struct.archive** %8, align 8
  %170 = load i32, i32* @ARCHIVE_OK, align 4
  %171 = load %struct.archive*, %struct.archive** %8, align 8
  %172 = call i32 @archive_read_support_format_all(%struct.archive* %171)
  %173 = call i32 @assertEqualIntA(%struct.archive* %169, i32 %170, i32 %172)
  %174 = load %struct.archive*, %struct.archive** %8, align 8
  %175 = load i32, i32* @ARCHIVE_OK, align 4
  %176 = load %struct.archive*, %struct.archive** %8, align 8
  %177 = call i32 @archive_read_support_filter_all(%struct.archive* %176)
  %178 = call i32 @assertEqualIntA(%struct.archive* %174, i32 %175, i32 %177)
  %179 = load %struct.archive*, %struct.archive** %8, align 8
  %180 = load i32, i32* @ARCHIVE_OK, align 4
  %181 = load %struct.archive*, %struct.archive** %8, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = load i64, i64* %9, align 8
  %184 = call i32 @archive_read_open_memory(%struct.archive* %181, i8* %182, i64 %183)
  %185 = call i32 @assertEqualIntA(%struct.archive* %179, i32 %180, i32 %184)
  %186 = load %struct.archive*, %struct.archive** %8, align 8
  %187 = load i32, i32* @ARCHIVE_OK, align 4
  %188 = load %struct.archive*, %struct.archive** %8, align 8
  %189 = call i32 @archive_read_next_header(%struct.archive* %188, %struct.archive_entry** %7)
  %190 = call i32 @assertEqualIntA(%struct.archive* %186, i32 %187, i32 %189)
  %191 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %192 = call i32 @archive_entry_mtime(%struct.archive_entry* %191)
  %193 = call i32 @assertEqualInt(i32 1, i32 %192)
  %194 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %195 = call i32 @archive_entry_pathname(%struct.archive_entry* %194)
  %196 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @AE_IFREG, align 4
  %198 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %199 = call i32 @archive_entry_filetype(%struct.archive_entry* %198)
  %200 = call i32 @assertEqualInt(i32 %197, i32 %199)
  %201 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %202 = call i32 @archive_entry_size(%struct.archive_entry* %201)
  %203 = call i32 @assertEqualInt(i32 8, i32 %202)
  %204 = load %struct.archive*, %struct.archive** %8, align 8
  %205 = load i32, i32* @ARCHIVE_EOF, align 4
  %206 = load %struct.archive*, %struct.archive** %8, align 8
  %207 = call i32 @archive_read_next_header(%struct.archive* %206, %struct.archive_entry** %7)
  %208 = call i32 @assertEqualIntA(%struct.archive* %204, i32 %205, i32 %207)
  %209 = load %struct.archive*, %struct.archive** %8, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.archive*, %struct.archive** %8, align 8
  %212 = call i32 @archive_filter_code(%struct.archive* %211, i32 0)
  %213 = call i32 @assertEqualIntA(%struct.archive* %209, i32 %210, i32 %212)
  %214 = load %struct.archive*, %struct.archive** %8, align 8
  %215 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %216 = load %struct.archive*, %struct.archive** %8, align 8
  %217 = call i32 @archive_format(%struct.archive* %216)
  %218 = call i32 @assertEqualIntA(%struct.archive* %214, i32 %215, i32 %217)
  %219 = load i32, i32* @ARCHIVE_OK, align 4
  %220 = load %struct.archive*, %struct.archive** %8, align 8
  %221 = call i32 @archive_read_close(%struct.archive* %220)
  %222 = call i32 @assertEqualInt(i32 %219, i32 %221)
  %223 = load i32, i32* @ARCHIVE_OK, align 4
  %224 = load %struct.archive*, %struct.archive** %8, align 8
  %225 = call i32 @archive_read_free(%struct.archive* %224)
  %226 = call i32 @assertEqualInt(i32 %223, i32 %225)
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 @free(i8* %227)
  br label %229

229:                                              ; preds = %99, %80, %65, %41, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_ustar(%struct.archive*) #1

declare dso_local i32 @archive_write_add_filter_by_name(%struct.archive*, i8*) #1

declare dso_local i32 @skipping(i8*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_write_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

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
