; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_winzip_aes.c_test_winzip_aes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_winzip_aes.c_test_winzip_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"zip:encryption=aes256\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"This system does not have cryptographic liberary\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_ZIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"invalid_pass\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid_phrase\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Unsupported ZIP compression method (deflation)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @test_winzip_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_winzip_aes(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %8, %struct.archive** %6, align 8
  %9 = icmp ne %struct.archive* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %6, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  %14 = load %struct.archive*, %struct.archive** %6, align 8
  %15 = call i32 @archive_write_set_format_zip(%struct.archive* %14)
  %16 = call i32 @assertEqualIntA(%struct.archive* %12, i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %6, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %6, align 8
  %20 = call i32 @archive_write_add_filter_none(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %6, align 8
  %24 = call i32 @archive_write_set_options(%struct.archive* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = call i32 @skipping(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.archive*, %struct.archive** %6, align 8
  %29 = call i32 @archive_write_free(%struct.archive* %28)
  br label %234

30:                                               ; preds = %2
  %31 = load %struct.archive*, %struct.archive** %6, align 8
  %32 = call i32 @archive_write_free(%struct.archive* %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @extract_reference_file(i8* %33)
  %35 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %35, %struct.archive** %6, align 8
  %36 = icmp ne %struct.archive* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.archive*, %struct.archive** %6, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %6, align 8
  %42 = call i32 @archive_read_support_filter_all(%struct.archive* %41)
  %43 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %42)
  %44 = load %struct.archive*, %struct.archive** %6, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %6, align 8
  %47 = call i32 @archive_read_support_format_all(%struct.archive* %46)
  %48 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %47)
  %49 = load %struct.archive*, %struct.archive** %6, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %6, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @archive_read_open_filename(%struct.archive* %51, i8* %52, i32 10240)
  %54 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %6, align 8
  %56 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 4
  %57 = load %struct.archive*, %struct.archive** %6, align 8
  %58 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %57)
  %59 = call i32 @assertEqualIntA(%struct.archive* %55, i32 %56, i32 %58)
  %60 = load %struct.archive*, %struct.archive** %6, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = load %struct.archive*, %struct.archive** %6, align 8
  %63 = call i32 @archive_read_next_header(%struct.archive* %62, %struct.archive_entry** %5)
  %64 = call i32 @assertEqualIntA(%struct.archive* %60, i32 %61, i32 %63)
  %65 = load i32, i32* @AE_IFREG, align 4
  %66 = or i32 %65, 420
  %67 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %68 = call i32 @archive_entry_mode(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 %66, i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %71 = call i8* @archive_entry_pathname(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %74 = call i32 @archive_entry_size(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i32 6818, i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %77 = call i32 @archive_entry_is_data_encrypted(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualInt(i32 1, i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %80 = call i32 @archive_entry_is_metadata_encrypted(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 0, i32 %80)
  %82 = load %struct.archive*, %struct.archive** %6, align 8
  %83 = load %struct.archive*, %struct.archive** %6, align 8
  %84 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %83)
  %85 = call i32 @assertEqualIntA(%struct.archive* %82, i32 1, i32 %84)
  %86 = load i32, i32* @ARCHIVE_FAILED, align 4
  %87 = load %struct.archive*, %struct.archive** %6, align 8
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %89 = call i32 @archive_read_data(%struct.archive* %87, i8* %88, i32 512)
  %90 = call i32 @assertEqualInt(i32 %86, i32 %89)
  %91 = load %struct.archive*, %struct.archive** %6, align 8
  %92 = call i32 @archive_file_count(%struct.archive* %91)
  %93 = call i32 @assertEqualInt(i32 1, i32 %92)
  %94 = load %struct.archive*, %struct.archive** %6, align 8
  %95 = load i32, i32* @ARCHIVE_EOF, align 4
  %96 = load %struct.archive*, %struct.archive** %6, align 8
  %97 = call i32 @archive_read_next_header(%struct.archive* %96, %struct.archive_entry** %5)
  %98 = call i32 @assertEqualIntA(%struct.archive* %94, i32 %95, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %6, align 8
  %100 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %101 = load %struct.archive*, %struct.archive** %6, align 8
  %102 = call i32 @archive_filter_code(%struct.archive* %101, i32 0)
  %103 = call i32 @assertEqualIntA(%struct.archive* %99, i32 %100, i32 %102)
  %104 = load %struct.archive*, %struct.archive** %6, align 8
  %105 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %106 = load %struct.archive*, %struct.archive** %6, align 8
  %107 = call i32 @archive_format(%struct.archive* %106)
  %108 = call i32 @assertEqualIntA(%struct.archive* %104, i32 %105, i32 %107)
  %109 = load i32, i32* @ARCHIVE_OK, align 4
  %110 = load %struct.archive*, %struct.archive** %6, align 8
  %111 = call i32 @archive_read_close(%struct.archive* %110)
  %112 = call i32 @assertEqualInt(i32 %109, i32 %111)
  %113 = load i32, i32* @ARCHIVE_OK, align 4
  %114 = load %struct.archive*, %struct.archive** %6, align 8
  %115 = call i32 @archive_read_free(%struct.archive* %114)
  %116 = call i32 @assertEqualInt(i32 %113, i32 %115)
  %117 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %117, %struct.archive** %6, align 8
  %118 = icmp ne %struct.archive* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.archive*, %struct.archive** %6, align 8
  %122 = load i32, i32* @ARCHIVE_OK, align 4
  %123 = load %struct.archive*, %struct.archive** %6, align 8
  %124 = call i32 @archive_read_support_filter_all(%struct.archive* %123)
  %125 = call i32 @assertEqualIntA(%struct.archive* %121, i32 %122, i32 %124)
  %126 = load %struct.archive*, %struct.archive** %6, align 8
  %127 = load i32, i32* @ARCHIVE_OK, align 4
  %128 = load %struct.archive*, %struct.archive** %6, align 8
  %129 = call i32 @archive_read_support_format_all(%struct.archive* %128)
  %130 = call i32 @assertEqualIntA(%struct.archive* %126, i32 %127, i32 %129)
  %131 = load %struct.archive*, %struct.archive** %6, align 8
  %132 = load i32, i32* @ARCHIVE_OK, align 4
  %133 = load %struct.archive*, %struct.archive** %6, align 8
  %134 = call i32 @archive_read_add_passphrase(%struct.archive* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %135 = call i32 @assertEqualIntA(%struct.archive* %131, i32 %132, i32 %134)
  %136 = load %struct.archive*, %struct.archive** %6, align 8
  %137 = load i32, i32* @ARCHIVE_OK, align 4
  %138 = load %struct.archive*, %struct.archive** %6, align 8
  %139 = call i32 @archive_read_add_passphrase(%struct.archive* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %140 = call i32 @assertEqualIntA(%struct.archive* %136, i32 %137, i32 %139)
  %141 = load %struct.archive*, %struct.archive** %6, align 8
  %142 = load i32, i32* @ARCHIVE_OK, align 4
  %143 = load %struct.archive*, %struct.archive** %6, align 8
  %144 = call i32 @archive_read_add_passphrase(%struct.archive* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %145 = call i32 @assertEqualIntA(%struct.archive* %141, i32 %142, i32 %144)
  %146 = load %struct.archive*, %struct.archive** %6, align 8
  %147 = load i32, i32* @ARCHIVE_OK, align 4
  %148 = load %struct.archive*, %struct.archive** %6, align 8
  %149 = load i8*, i8** %3, align 8
  %150 = call i32 @archive_read_open_filename(%struct.archive* %148, i8* %149, i32 10240)
  %151 = call i32 @assertEqualIntA(%struct.archive* %146, i32 %147, i32 %150)
  %152 = load %struct.archive*, %struct.archive** %6, align 8
  %153 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 4
  %154 = load %struct.archive*, %struct.archive** %6, align 8
  %155 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %154)
  %156 = call i32 @assertEqualIntA(%struct.archive* %152, i32 %153, i32 %155)
  %157 = load %struct.archive*, %struct.archive** %6, align 8
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = load %struct.archive*, %struct.archive** %6, align 8
  %160 = call i32 @archive_read_next_header(%struct.archive* %159, %struct.archive_entry** %5)
  %161 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %158, i32 %160)
  %162 = load i32, i32* @AE_IFREG, align 4
  %163 = or i32 %162, 420
  %164 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %165 = call i32 @archive_entry_mode(%struct.archive_entry* %164)
  %166 = call i32 @assertEqualInt(i32 %163, i32 %165)
  %167 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %168 = call i8* @archive_entry_pathname(%struct.archive_entry* %167)
  %169 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %168)
  %170 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %171 = call i32 @archive_entry_size(%struct.archive_entry* %170)
  %172 = call i32 @assertEqualInt(i32 6818, i32 %171)
  %173 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %174 = call i32 @archive_entry_is_data_encrypted(%struct.archive_entry* %173)
  %175 = call i32 @assertEqualInt(i32 1, i32 %174)
  %176 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %177 = call i32 @archive_entry_is_metadata_encrypted(%struct.archive_entry* %176)
  %178 = call i32 @assertEqualInt(i32 0, i32 %177)
  %179 = load %struct.archive*, %struct.archive** %6, align 8
  %180 = load %struct.archive*, %struct.archive** %6, align 8
  %181 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %180)
  %182 = call i32 @assertEqualIntA(%struct.archive* %179, i32 1, i32 %181)
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %30
  %186 = call i32* (...) @archive_zlib_version()
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %185, %30
  %189 = load %struct.archive*, %struct.archive** %6, align 8
  %190 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %191 = call i32 @archive_read_data(%struct.archive* %189, i8* %190, i32 512)
  %192 = call i32 @assertEqualInt(i32 512, i32 %191)
  br label %207

193:                                              ; preds = %185
  %194 = load i32, i32* @ARCHIVE_FAILED, align 4
  %195 = load %struct.archive*, %struct.archive** %6, align 8
  %196 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %197 = call i32 @archive_read_data(%struct.archive* %195, i8* %196, i32 19)
  %198 = call i32 @assertEqualInt(i32 %194, i32 %197)
  %199 = load %struct.archive*, %struct.archive** %6, align 8
  %200 = call i8* @archive_error_string(%struct.archive* %199)
  %201 = call i32 @assertEqualString(i8* %200, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %202 = load %struct.archive*, %struct.archive** %6, align 8
  %203 = call i64 @archive_errno(%struct.archive* %202)
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  br label %207

207:                                              ; preds = %193, %188
  %208 = load %struct.archive*, %struct.archive** %6, align 8
  %209 = call i32 @archive_file_count(%struct.archive* %208)
  %210 = call i32 @assertEqualInt(i32 1, i32 %209)
  %211 = load %struct.archive*, %struct.archive** %6, align 8
  %212 = load i32, i32* @ARCHIVE_EOF, align 4
  %213 = load %struct.archive*, %struct.archive** %6, align 8
  %214 = call i32 @archive_read_next_header(%struct.archive* %213, %struct.archive_entry** %5)
  %215 = call i32 @assertEqualIntA(%struct.archive* %211, i32 %212, i32 %214)
  %216 = load %struct.archive*, %struct.archive** %6, align 8
  %217 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %218 = load %struct.archive*, %struct.archive** %6, align 8
  %219 = call i32 @archive_filter_code(%struct.archive* %218, i32 0)
  %220 = call i32 @assertEqualIntA(%struct.archive* %216, i32 %217, i32 %219)
  %221 = load %struct.archive*, %struct.archive** %6, align 8
  %222 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %223 = load %struct.archive*, %struct.archive** %6, align 8
  %224 = call i32 @archive_format(%struct.archive* %223)
  %225 = call i32 @assertEqualIntA(%struct.archive* %221, i32 %222, i32 %224)
  %226 = load i32, i32* @ARCHIVE_OK, align 4
  %227 = load %struct.archive*, %struct.archive** %6, align 8
  %228 = call i32 @archive_read_close(%struct.archive* %227)
  %229 = call i32 @assertEqualInt(i32 %226, i32 %228)
  %230 = load i32, i32* @ARCHIVE_OK, align 4
  %231 = load %struct.archive*, %struct.archive** %6, align 8
  %232 = call i32 @archive_read_free(%struct.archive* %231)
  %233 = call i32 @assertEqualInt(i32 %230, i32 %232)
  br label %234

234:                                              ; preds = %207, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_zip(%struct.archive*) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_data_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_metadata_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_read_add_passphrase(%struct.archive*, i8*) #1

declare dso_local i32* @archive_zlib_version(...) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_errno(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
