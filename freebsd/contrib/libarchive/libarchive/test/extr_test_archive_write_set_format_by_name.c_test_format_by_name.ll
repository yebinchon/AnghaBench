; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_format_by_name.c_test_format_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_format_by_name.c_test_format_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s format not fully supported on this platform\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s writing not fully supported on this platform\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"./file\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i8*, i64)* @test_format_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format_by_name(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.archive_entry*, align 8
  %14 = alloca %struct.archive*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 1048576, i64* %16, align 8
  %19 = load i64, i64* %16, align 8
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %17, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %17, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %241

27:                                               ; preds = %6
  %28 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %28, %struct.archive** %14, align 8
  %29 = icmp ne %struct.archive* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.archive*, %struct.archive** %14, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @archive_write_set_format_by_name(%struct.archive* %32, i8* %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* @ARCHIVE_WARN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @skipping(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = load %struct.archive*, %struct.archive** %14, align 8
  %43 = call i32 @archive_write_free(%struct.archive* %42)
  %44 = call i32 @assertEqualInt(i32 %41, i32 %43)
  %45 = load i8*, i8** %17, align 8
  %46 = call i32 @free(i8* %45)
  br label %241

47:                                               ; preds = %27
  %48 = load %struct.archive*, %struct.archive** %14, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @assertEqualIntA(%struct.archive* %48, i32 %49, i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  %56 = load %struct.archive*, %struct.archive** %14, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @archive_write_set_format_option(%struct.archive* %56, i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @skipping(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @ARCHIVE_OK, align 4
  %65 = load %struct.archive*, %struct.archive** %14, align 8
  %66 = call i32 @archive_write_free(%struct.archive* %65)
  %67 = call i32 @assertEqualInt(i32 %64, i32 %66)
  %68 = load i8*, i8** %17, align 8
  %69 = call i32 @free(i8* %68)
  br label %241

70:                                               ; preds = %54, %47
  %71 = load %struct.archive*, %struct.archive** %14, align 8
  %72 = load i32, i32* @ARCHIVE_OK, align 4
  %73 = load %struct.archive*, %struct.archive** %14, align 8
  %74 = call i32 @archive_write_add_filter_none(%struct.archive* %73)
  %75 = call i32 @assertEqualIntA(%struct.archive* %71, i32 %72, i32 %74)
  %76 = load %struct.archive*, %struct.archive** %14, align 8
  %77 = load i32, i32* @ARCHIVE_OK, align 4
  %78 = load %struct.archive*, %struct.archive** %14, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i32 @archive_write_open_memory(%struct.archive* %78, i8* %79, i64 %80, i64* %15)
  %82 = call i32 @assertEqualIntA(%struct.archive* %76, i32 %77, i32 %81)
  %83 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %83, %struct.archive_entry** %13, align 8
  %84 = icmp ne %struct.archive_entry* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %88 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %87, i32 1, i32 0)
  %89 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %90 = call i32 @archive_entry_mtime(%struct.archive_entry* %89)
  %91 = call i32 @assertEqualInt(i32 1, i32 %90)
  %92 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %93 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %92, i32 1, i32 0)
  %94 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %95 = call i32 @archive_entry_ctime(%struct.archive_entry* %94)
  %96 = call i32 @assertEqualInt(i32 1, i32 %95)
  %97 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %98 = call i32 @archive_entry_set_atime(%struct.archive_entry* %97, i32 1, i32 0)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %100 = call i32 @archive_entry_atime(%struct.archive_entry* %99)
  %101 = call i32 @assertEqualInt(i32 1, i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %103 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %105 = call i32 @archive_entry_pathname(%struct.archive_entry* %104)
  %106 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %108 = load i32, i32* @AE_IFREG, align 4
  %109 = or i32 %108, 493
  %110 = call i32 @archive_entry_set_mode(%struct.archive_entry* %107, i32 %109)
  %111 = load i32, i32* @AE_IFREG, align 4
  %112 = or i32 %111, 493
  %113 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %114 = call i32 @archive_entry_mode(%struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 %112, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %117 = call i32 @archive_entry_set_size(%struct.archive_entry* %116, i32 8)
  %118 = load %struct.archive*, %struct.archive** %14, align 8
  %119 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %120 = call i32 @archive_write_header(%struct.archive* %118, %struct.archive_entry* %119)
  %121 = call i32 @assertEqualInt(i32 0, i32 %120)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %123 = call i32 @archive_entry_free(%struct.archive_entry* %122)
  %124 = load %struct.archive*, %struct.archive** %14, align 8
  %125 = call i32 @archive_write_data(%struct.archive* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %126 = call i32 @assertEqualInt(i32 8, i32 %125)
  %127 = load %struct.archive*, %struct.archive** %14, align 8
  %128 = load i32, i32* @ARCHIVE_OK, align 4
  %129 = load %struct.archive*, %struct.archive** %14, align 8
  %130 = call i32 @archive_write_close(%struct.archive* %129)
  %131 = call i32 @assertEqualIntA(%struct.archive* %127, i32 %128, i32 %130)
  %132 = load i32, i32* @ARCHIVE_OK, align 4
  %133 = load %struct.archive*, %struct.archive** %14, align 8
  %134 = call i32 @archive_write_free(%struct.archive* %133)
  %135 = call i32 @assertEqualInt(i32 %132, i32 %134)
  %136 = load i8*, i8** %11, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %70
  %139 = load i64, i64* %12, align 8
  %140 = icmp ugt i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i8*, i8** %17, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @assertEqualMem(i8* %142, i8* %143, i64 %144)
  br label %146

146:                                              ; preds = %141, %138, %70
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %238

149:                                              ; preds = %146
  %150 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %150, %struct.archive** %14, align 8
  %151 = icmp ne %struct.archive* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.archive*, %struct.archive** %14, align 8
  %155 = load i32, i32* @ARCHIVE_OK, align 4
  %156 = load %struct.archive*, %struct.archive** %14, align 8
  %157 = call i32 @archive_read_support_format_all(%struct.archive* %156)
  %158 = call i32 @assertEqualIntA(%struct.archive* %154, i32 %155, i32 %157)
  %159 = load %struct.archive*, %struct.archive** %14, align 8
  %160 = load i32, i32* @ARCHIVE_OK, align 4
  %161 = load %struct.archive*, %struct.archive** %14, align 8
  %162 = call i32 @archive_read_support_filter_all(%struct.archive* %161)
  %163 = call i32 @assertEqualIntA(%struct.archive* %159, i32 %160, i32 %162)
  %164 = load %struct.archive*, %struct.archive** %14, align 8
  %165 = load i32, i32* @ARCHIVE_OK, align 4
  %166 = load %struct.archive*, %struct.archive** %14, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i32 @read_open_memory_seek(%struct.archive* %166, i8* %167, i64 %168, i32 7)
  %170 = call i32 @assertEqualIntA(%struct.archive* %164, i32 %165, i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, 1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %149
  %175 = load %struct.archive*, %struct.archive** %14, align 8
  %176 = load i32, i32* @ARCHIVE_OK, align 4
  %177 = load %struct.archive*, %struct.archive** %14, align 8
  %178 = call i32 @archive_read_next_header(%struct.archive* %177, %struct.archive_entry** %13)
  %179 = call i32 @assertEqualIntA(%struct.archive* %175, i32 %176, i32 %178)
  %180 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %181 = call i32 @archive_entry_pathname(%struct.archive_entry* %180)
  %182 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @AE_IFDIR, align 4
  %184 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %185 = call i32 @archive_entry_filetype(%struct.archive_entry* %184)
  %186 = call i32 @assertEqualInt(i32 %183, i32 %185)
  br label %187

187:                                              ; preds = %174, %149
  %188 = load %struct.archive*, %struct.archive** %14, align 8
  %189 = load i32, i32* @ARCHIVE_OK, align 4
  %190 = load %struct.archive*, %struct.archive** %14, align 8
  %191 = call i32 @archive_read_next_header(%struct.archive* %190, %struct.archive_entry** %13)
  %192 = call i32 @assertEqualIntA(%struct.archive* %188, i32 %189, i32 %191)
  %193 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %194 = call i32 @archive_entry_mtime(%struct.archive_entry* %193)
  %195 = call i32 @assertEqualInt(i32 1, i32 %194)
  %196 = load i32, i32* %10, align 4
  %197 = and i32 %196, 2
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %187
  %200 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %201 = call i32 @archive_entry_pathname(%struct.archive_entry* %200)
  %202 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  br label %207

203:                                              ; preds = %187
  %204 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %205 = call i32 @archive_entry_pathname(%struct.archive_entry* %204)
  %206 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %199
  %208 = load i32, i32* @AE_IFREG, align 4
  %209 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %210 = call i32 @archive_entry_filetype(%struct.archive_entry* %209)
  %211 = call i32 @assertEqualInt(i32 %208, i32 %210)
  %212 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %213 = call i32 @archive_entry_size(%struct.archive_entry* %212)
  %214 = call i32 @assertEqualInt(i32 8, i32 %213)
  %215 = load %struct.archive*, %struct.archive** %14, align 8
  %216 = load i32, i32* @ARCHIVE_EOF, align 4
  %217 = load %struct.archive*, %struct.archive** %14, align 8
  %218 = call i32 @archive_read_next_header(%struct.archive* %217, %struct.archive_entry** %13)
  %219 = call i32 @assertEqualIntA(%struct.archive* %215, i32 %216, i32 %218)
  %220 = load %struct.archive*, %struct.archive** %14, align 8
  %221 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %222 = load %struct.archive*, %struct.archive** %14, align 8
  %223 = call i32 @archive_filter_code(%struct.archive* %222, i32 0)
  %224 = call i32 @assertEqualIntA(%struct.archive* %220, i32 %221, i32 %223)
  %225 = load %struct.archive*, %struct.archive** %14, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.archive*, %struct.archive** %14, align 8
  %228 = call i32 @archive_format(%struct.archive* %227)
  %229 = call i32 @assertEqualIntA(%struct.archive* %225, i32 %226, i32 %228)
  %230 = load i32, i32* @ARCHIVE_OK, align 4
  %231 = load %struct.archive*, %struct.archive** %14, align 8
  %232 = call i32 @archive_read_close(%struct.archive* %231)
  %233 = call i32 @assertEqualInt(i32 %230, i32 %232)
  %234 = load i32, i32* @ARCHIVE_OK, align 4
  %235 = load %struct.archive*, %struct.archive** %14, align 8
  %236 = call i32 @archive_read_free(%struct.archive* %235)
  %237 = call i32 @assertEqualInt(i32 %234, i32 %236)
  br label %238

238:                                              ; preds = %207, %146
  %239 = load i8*, i8** %17, align 8
  %240 = call i32 @free(i8* %239)
  br label %241

241:                                              ; preds = %238, %61, %38, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_set_format_by_name(%struct.archive*, i8*) #1

declare dso_local i32 @skipping(i8*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_option(%struct.archive*, i8*, i8*, i8*) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

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

declare dso_local i32 @assertEqualMem(i8*, i8*, i64) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

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
