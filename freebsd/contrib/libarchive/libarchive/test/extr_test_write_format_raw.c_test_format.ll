; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_raw.c_test_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_raw.c_test_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type opaque
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Raw format only supports one entry per archive\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Raw format only supports filetype AE_IFREG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.archive*)*)* @test_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format(i32 (%struct.archive*)* %0) #0 {
  %2 = alloca i32 (%struct.archive*)*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 (%struct.archive*)* %0, i32 (%struct.archive*)** %2, align 8
  store i64 1000000, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i8* @malloc(i64 %10)
  store i8* %11, i8** %8, align 8
  %12 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %12, %struct.archive** %5, align 8
  %13 = icmp ne %struct.archive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.archive*, %struct.archive** %5, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %2, align 8
  %19 = load %struct.archive*, %struct.archive** %5, align 8
  %20 = call i32 %18(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %16, i32 %17, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %5, align 8
  %25 = call i32 @archive_write_add_filter_none(%struct.archive* %24)
  %26 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @archive_write_open_memory(%struct.archive* %29, i8* %30, i64 %31, i64* %6)
  %33 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %32)
  %34 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %34, %struct.archive_entry** %4, align 8
  %35 = icmp ne %struct.archive_entry* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %39 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %41 = load i32, i32* @AE_IFREG, align 4
  %42 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %40, i32 %41)
  %43 = load %struct.archive*, %struct.archive** %5, align 8
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %5, align 8
  %46 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %47 = call i32 @archive_write_header(%struct.archive* %45, %struct.archive_entry* %46)
  %48 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %50 = call i32 @archive_entry_free(%struct.archive_entry* %49)
  %51 = load %struct.archive*, %struct.archive** %5, align 8
  %52 = load %struct.archive*, %struct.archive** %5, align 8
  %53 = call i32 @archive_write_data(%struct.archive* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %54 = call i32 @assertEqualIntA(%struct.archive* %51, i32 9, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %5, align 8
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  %57 = load %struct.archive*, %struct.archive** %5, align 8
  %58 = call i32 @archive_write_close(%struct.archive* %57)
  %59 = call i32 @assertEqualIntA(%struct.archive* %55, i32 %56, i32 %58)
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = load %struct.archive*, %struct.archive** %5, align 8
  %62 = call i32 @archive_write_free(%struct.archive* %61)
  %63 = call i32 @assertEqualInt(i32 %60, i32 %62)
  %64 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %64, %struct.archive** %5, align 8
  %65 = icmp ne %struct.archive* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.archive*, %struct.archive** %5, align 8
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  %70 = load %struct.archive*, %struct.archive** %5, align 8
  %71 = call i32 @archive_read_support_format_raw(%struct.archive* %70)
  %72 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %69, i32 %71)
  %73 = load %struct.archive*, %struct.archive** %5, align 8
  %74 = load i32, i32* @ARCHIVE_OK, align 4
  %75 = load %struct.archive*, %struct.archive** %5, align 8
  %76 = call i32 @archive_read_support_filter_none(%struct.archive* %75)
  %77 = call i32 @assertEqualIntA(%struct.archive* %73, i32 %74, i32 %76)
  %78 = load %struct.archive*, %struct.archive** %5, align 8
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  %80 = load %struct.archive*, %struct.archive** %5, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @archive_read_open_memory(%struct.archive* %80, i8* %81, i64 %82)
  %84 = call i32 @assertEqualIntA(%struct.archive* %78, i32 %79, i32 %83)
  %85 = load %struct.archive*, %struct.archive** %5, align 8
  %86 = load i32, i32* @ARCHIVE_OK, align 4
  %87 = load %struct.archive*, %struct.archive** %5, align 8
  %88 = call i32 @archive_read_next_header(%struct.archive* %87, %struct.archive_entry** %4)
  %89 = call i32 @assertEqualIntA(%struct.archive* %85, i32 %86, i32 %88)
  %90 = load %struct.archive*, %struct.archive** %5, align 8
  %91 = load %struct.archive*, %struct.archive** %5, align 8
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %93 = call i32 @archive_read_data(%struct.archive* %91, i8* %92, i32 10)
  %94 = call i32 @assertEqualIntA(%struct.archive* %90, i32 9, i32 %93)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %96 = call i32 @assertEqualMem(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %97 = load %struct.archive*, %struct.archive** %5, align 8
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = load %struct.archive*, %struct.archive** %5, align 8
  %100 = call i32 @archive_read_close(%struct.archive* %99)
  %101 = call i32 @assertEqualIntA(%struct.archive* %97, i32 %98, i32 %100)
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = load %struct.archive*, %struct.archive** %5, align 8
  %104 = call i32 @archive_read_free(%struct.archive* %103)
  %105 = call i32 @assertEqualInt(i32 %102, i32 %104)
  %106 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %106, %struct.archive** %5, align 8
  %107 = icmp ne %struct.archive* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.archive*, %struct.archive** %5, align 8
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  %112 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %2, align 8
  %113 = load %struct.archive*, %struct.archive** %5, align 8
  %114 = call i32 %112(%struct.archive* %113)
  %115 = call i32 @assertEqualIntA(%struct.archive* %110, i32 %111, i32 %114)
  %116 = load %struct.archive*, %struct.archive** %5, align 8
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  %118 = load %struct.archive*, %struct.archive** %5, align 8
  %119 = call i32 @archive_write_add_filter_none(%struct.archive* %118)
  %120 = call i32 @assertEqualIntA(%struct.archive* %116, i32 %117, i32 %119)
  %121 = load %struct.archive*, %struct.archive** %5, align 8
  %122 = load i32, i32* @ARCHIVE_OK, align 4
  %123 = load %struct.archive*, %struct.archive** %5, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @archive_write_open_memory(%struct.archive* %123, i8* %124, i64 %125, i64* %6)
  %127 = call i32 @assertEqualIntA(%struct.archive* %121, i32 %122, i32 %126)
  %128 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %128, %struct.archive_entry** %4, align 8
  %129 = icmp ne %struct.archive_entry* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %133 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %135 = load i32, i32* @AE_IFREG, align 4
  %136 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %134, i32 %135)
  %137 = load %struct.archive*, %struct.archive** %5, align 8
  %138 = load i32, i32* @ARCHIVE_OK, align 4
  %139 = load %struct.archive*, %struct.archive** %5, align 8
  %140 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %141 = call i32 @archive_write_header(%struct.archive* %139, %struct.archive_entry* %140)
  %142 = call i32 @assertEqualIntA(%struct.archive* %137, i32 %138, i32 %141)
  %143 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %144 = call i32 @archive_entry_free(%struct.archive_entry* %143)
  %145 = load %struct.archive*, %struct.archive** %5, align 8
  %146 = load %struct.archive*, %struct.archive** %5, align 8
  %147 = call i32 @archive_write_data(%struct.archive* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %148 = call i32 @assertEqualIntA(%struct.archive* %145, i32 9, i32 %147)
  %149 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %149, %struct.archive_entry** %4, align 8
  %150 = icmp ne %struct.archive_entry* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %154 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %156 = load i32, i32* @AE_IFREG, align 4
  %157 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %155, i32 %156)
  %158 = load %struct.archive*, %struct.archive** %5, align 8
  %159 = load i32, i32* @ARCHIVE_FATAL, align 4
  %160 = load %struct.archive*, %struct.archive** %5, align 8
  %161 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %162 = call i32 @archive_write_header(%struct.archive* %160, %struct.archive_entry* %161)
  %163 = call i32 @assertEqualIntA(%struct.archive* %158, i32 %159, i32 %162)
  %164 = load %struct.archive*, %struct.archive** %5, align 8
  %165 = call i8* @archive_error_string(%struct.archive* %164)
  store i8* %165, i8** %9, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @assertEqualMem(i8* %166, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 47)
  %168 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %169 = call i32 @archive_entry_free(%struct.archive_entry* %168)
  %170 = load %struct.archive*, %struct.archive** %5, align 8
  %171 = load i32, i32* @ARCHIVE_OK, align 4
  %172 = load %struct.archive*, %struct.archive** %5, align 8
  %173 = call i32 @archive_write_close(%struct.archive* %172)
  %174 = call i32 @assertEqualIntA(%struct.archive* %170, i32 %171, i32 %173)
  %175 = load i32, i32* @ARCHIVE_OK, align 4
  %176 = load %struct.archive*, %struct.archive** %5, align 8
  %177 = call i32 @archive_write_free(%struct.archive* %176)
  %178 = call i32 @assertEqualInt(i32 %175, i32 %177)
  %179 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %179, %struct.archive** %5, align 8
  %180 = icmp ne %struct.archive* %179, null
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load %struct.archive*, %struct.archive** %5, align 8
  %184 = load i32, i32* @ARCHIVE_OK, align 4
  %185 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %2, align 8
  %186 = load %struct.archive*, %struct.archive** %5, align 8
  %187 = call i32 %185(%struct.archive* %186)
  %188 = call i32 @assertEqualIntA(%struct.archive* %183, i32 %184, i32 %187)
  %189 = load %struct.archive*, %struct.archive** %5, align 8
  %190 = load i32, i32* @ARCHIVE_OK, align 4
  %191 = load %struct.archive*, %struct.archive** %5, align 8
  %192 = call i32 @archive_write_add_filter_none(%struct.archive* %191)
  %193 = call i32 @assertEqualIntA(%struct.archive* %189, i32 %190, i32 %192)
  %194 = load %struct.archive*, %struct.archive** %5, align 8
  %195 = load i32, i32* @ARCHIVE_OK, align 4
  %196 = load %struct.archive*, %struct.archive** %5, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @archive_write_open_memory(%struct.archive* %196, i8* %197, i64 %198, i64* %6)
  %200 = call i32 @assertEqualIntA(%struct.archive* %194, i32 %195, i32 %199)
  %201 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %201, %struct.archive_entry** %4, align 8
  %202 = icmp ne %struct.archive_entry* %201, null
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %206 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %207 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %208 = load i32, i32* @AE_IFDIR, align 4
  %209 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %207, i32 %208)
  %210 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %211 = call i32 @archive_entry_set_size(%struct.archive_entry* %210, i32 512)
  %212 = load %struct.archive*, %struct.archive** %5, align 8
  %213 = load i32, i32* @ARCHIVE_FATAL, align 4
  %214 = load %struct.archive*, %struct.archive** %5, align 8
  %215 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %216 = call i32 @archive_write_header(%struct.archive* %214, %struct.archive_entry* %215)
  %217 = call i32 @assertEqualIntA(%struct.archive* %212, i32 %213, i32 %216)
  %218 = load %struct.archive*, %struct.archive** %5, align 8
  %219 = call i8* @archive_error_string(%struct.archive* %218)
  store i8* %219, i8** %9, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = call i32 @assertEqualMem(i8* %220, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 43)
  %222 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %223 = call i32 @archive_entry_free(%struct.archive_entry* %222)
  %224 = load %struct.archive*, %struct.archive** %5, align 8
  %225 = load i32, i32* @ARCHIVE_OK, align 4
  %226 = load %struct.archive*, %struct.archive** %5, align 8
  %227 = call i32 @archive_write_close(%struct.archive* %226)
  %228 = call i32 @assertEqualIntA(%struct.archive* %224, i32 %225, i32 %227)
  %229 = load i32, i32* @ARCHIVE_OK, align 4
  %230 = load %struct.archive*, %struct.archive** %5, align 8
  %231 = call i32 @archive_write_free(%struct.archive* %230)
  %232 = call i32 @assertEqualInt(i32 %229, i32 %231)
  %233 = load i8*, i8** %8, align 8
  %234 = call i32 @free(i8* %233)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_raw(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
