; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar_filename.c_test_read_format_tar_filename_KOI8R_CP1251.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar_filename.c_test_read_format_tar_filename_KOI8R_CP1251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Russian_Russia\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ru_RU.CP1251\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"CP1251 locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"hdrcharset=UTF-8\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"This system cannot convert character-set from UTF-8 to CP1251.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"hdrcharset=KOI8-R\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"This system cannot convert character-set from KOI8-R to CP1251.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\CF\D0\C8\C2\C5\D2\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"\EF\F0\E8\E2\E5\F2\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"\F0\F2\E9\F7\E5\F4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_tar_filename_KOI8R_CP1251 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_tar_filename_KOI8R_CP1251(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32* @setlocale(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32* @setlocale(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i32* null, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @skipping(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %209

14:                                               ; preds = %8, %1
  %15 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %15, %struct.archive** %3, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.archive*, %struct.archive** %3, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = call i32 @archive_read_support_format_tar(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = call i32 @archive_read_set_options(%struct.archive* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = call i32 @archive_read_free(%struct.archive* %30)
  %32 = call i32 @assertEqualInt(i32 %29, i32 %31)
  %33 = call i32 @skipping(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %209

34:                                               ; preds = %14
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = call i32 @archive_read_free(%struct.archive* %36)
  %38 = call i32 @assertEqualInt(i32 %35, i32 %37)
  %39 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %39, %struct.archive** %3, align 8
  %40 = icmp ne %struct.archive* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = call i32 @archive_read_support_filter_all(%struct.archive* %45)
  %47 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %46)
  %48 = load %struct.archive*, %struct.archive** %3, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  %50 = load %struct.archive*, %struct.archive** %3, align 8
  %51 = call i32 @archive_read_support_format_all(%struct.archive* %50)
  %52 = call i32 @assertEqualIntA(%struct.archive* %48, i32 %49, i32 %51)
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  %54 = load %struct.archive*, %struct.archive** %3, align 8
  %55 = call i32 @archive_read_set_options(%struct.archive* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = call i32 @skipping(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  br label %123

59:                                               ; preds = %34
  %60 = load %struct.archive*, %struct.archive** %3, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = load %struct.archive*, %struct.archive** %3, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @archive_read_open_filename(%struct.archive* %62, i8* %63, i32 10240)
  %65 = call i32 @assertEqualIntA(%struct.archive* %60, i32 %61, i32 %64)
  %66 = load %struct.archive*, %struct.archive** %3, align 8
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = load %struct.archive*, %struct.archive** %3, align 8
  %69 = call i32 @archive_read_next_header(%struct.archive* %68, %struct.archive_entry** %4)
  %70 = call i32 @assertEqualIntA(%struct.archive* %66, i32 %67, i32 %69)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %72 = call i32 @archive_entry_pathname(%struct.archive_entry* %71)
  %73 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %75 = call i32 @archive_entry_size(%struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 6, i32 %75)
  %77 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %78 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %77)
  %79 = call i32 @assertEqualInt(i32 %78, i32 0)
  %80 = load %struct.archive*, %struct.archive** %3, align 8
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %81)
  %83 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %84 = call i32 @assertEqualIntA(%struct.archive* %80, i32 %82, i32 %83)
  %85 = load %struct.archive*, %struct.archive** %3, align 8
  %86 = load i32, i32* @ARCHIVE_OK, align 4
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = call i32 @archive_read_next_header(%struct.archive* %87, %struct.archive_entry** %4)
  %89 = call i32 @assertEqualIntA(%struct.archive* %85, i32 %86, i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %91 = call i32 @archive_entry_pathname(%struct.archive_entry* %90)
  %92 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %94 = call i32 @archive_entry_size(%struct.archive_entry* %93)
  %95 = call i32 @assertEqualInt(i32 6, i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %97 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %96)
  %98 = call i32 @assertEqualInt(i32 %97, i32 0)
  %99 = load %struct.archive*, %struct.archive** %3, align 8
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %100)
  %102 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %103 = call i32 @assertEqualIntA(%struct.archive* %99, i32 %101, i32 %102)
  %104 = load %struct.archive*, %struct.archive** %3, align 8
  %105 = load i32, i32* @ARCHIVE_EOF, align 4
  %106 = load %struct.archive*, %struct.archive** %3, align 8
  %107 = call i32 @archive_read_next_header(%struct.archive* %106, %struct.archive_entry** %4)
  %108 = call i32 @assertEqualIntA(%struct.archive* %104, i32 %105, i32 %107)
  %109 = load %struct.archive*, %struct.archive** %3, align 8
  %110 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %111 = load %struct.archive*, %struct.archive** %3, align 8
  %112 = call i32 @archive_filter_code(%struct.archive* %111, i32 0)
  %113 = call i32 @assertEqualIntA(%struct.archive* %109, i32 %110, i32 %112)
  %114 = load %struct.archive*, %struct.archive** %3, align 8
  %115 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %116 = load %struct.archive*, %struct.archive** %3, align 8
  %117 = call i32 @archive_format(%struct.archive* %116)
  %118 = call i32 @assertEqualIntA(%struct.archive* %114, i32 %115, i32 %117)
  %119 = load i32, i32* @ARCHIVE_OK, align 4
  %120 = load %struct.archive*, %struct.archive** %3, align 8
  %121 = call i32 @archive_read_close(%struct.archive* %120)
  %122 = call i32 @assertEqualInt(i32 %119, i32 %121)
  br label %123

123:                                              ; preds = %59, %57
  %124 = load i32, i32* @ARCHIVE_OK, align 4
  %125 = load %struct.archive*, %struct.archive** %3, align 8
  %126 = call i32 @archive_read_free(%struct.archive* %125)
  %127 = call i32 @assertEqualInt(i32 %124, i32 %126)
  %128 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %128, %struct.archive** %3, align 8
  %129 = icmp ne %struct.archive* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.archive*, %struct.archive** %3, align 8
  %133 = load i32, i32* @ARCHIVE_OK, align 4
  %134 = load %struct.archive*, %struct.archive** %3, align 8
  %135 = call i32 @archive_read_support_filter_all(%struct.archive* %134)
  %136 = call i32 @assertEqualIntA(%struct.archive* %132, i32 %133, i32 %135)
  %137 = load %struct.archive*, %struct.archive** %3, align 8
  %138 = load i32, i32* @ARCHIVE_OK, align 4
  %139 = load %struct.archive*, %struct.archive** %3, align 8
  %140 = call i32 @archive_read_support_format_all(%struct.archive* %139)
  %141 = call i32 @assertEqualIntA(%struct.archive* %137, i32 %138, i32 %140)
  %142 = load %struct.archive*, %struct.archive** %3, align 8
  %143 = load i32, i32* @ARCHIVE_OK, align 4
  %144 = load %struct.archive*, %struct.archive** %3, align 8
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @archive_read_open_filename(%struct.archive* %144, i8* %145, i32 10240)
  %147 = call i32 @assertEqualIntA(%struct.archive* %142, i32 %143, i32 %146)
  %148 = load %struct.archive*, %struct.archive** %3, align 8
  %149 = load i32, i32* @ARCHIVE_OK, align 4
  %150 = load %struct.archive*, %struct.archive** %3, align 8
  %151 = call i32 @archive_read_next_header(%struct.archive* %150, %struct.archive_entry** %4)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 %149, i32 %151)
  %153 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %154 = call i32 @archive_entry_pathname(%struct.archive_entry* %153)
  %155 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  %156 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %157 = call i32 @archive_entry_size(%struct.archive_entry* %156)
  %158 = call i32 @assertEqualInt(i32 6, i32 %157)
  %159 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %160 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %159)
  %161 = call i32 @assertEqualInt(i32 %160, i32 0)
  %162 = load %struct.archive*, %struct.archive** %3, align 8
  %163 = load %struct.archive*, %struct.archive** %3, align 8
  %164 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %163)
  %165 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %166 = call i32 @assertEqualIntA(%struct.archive* %162, i32 %164, i32 %165)
  %167 = load %struct.archive*, %struct.archive** %3, align 8
  %168 = load i32, i32* @ARCHIVE_OK, align 4
  %169 = load %struct.archive*, %struct.archive** %3, align 8
  %170 = call i32 @archive_read_next_header(%struct.archive* %169, %struct.archive_entry** %4)
  %171 = call i32 @assertEqualIntA(%struct.archive* %167, i32 %168, i32 %170)
  %172 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %173 = call i32 @archive_entry_pathname(%struct.archive_entry* %172)
  %174 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %176 = call i32 @archive_entry_size(%struct.archive_entry* %175)
  %177 = call i32 @assertEqualInt(i32 6, i32 %176)
  %178 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %179 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %178)
  %180 = call i32 @assertEqualInt(i32 %179, i32 0)
  %181 = load %struct.archive*, %struct.archive** %3, align 8
  %182 = load %struct.archive*, %struct.archive** %3, align 8
  %183 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %182)
  %184 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %185 = call i32 @assertEqualIntA(%struct.archive* %181, i32 %183, i32 %184)
  %186 = load %struct.archive*, %struct.archive** %3, align 8
  %187 = load i32, i32* @ARCHIVE_EOF, align 4
  %188 = load %struct.archive*, %struct.archive** %3, align 8
  %189 = call i32 @archive_read_next_header(%struct.archive* %188, %struct.archive_entry** %4)
  %190 = call i32 @assertEqualIntA(%struct.archive* %186, i32 %187, i32 %189)
  %191 = load %struct.archive*, %struct.archive** %3, align 8
  %192 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %193 = load %struct.archive*, %struct.archive** %3, align 8
  %194 = call i32 @archive_filter_code(%struct.archive* %193, i32 0)
  %195 = call i32 @assertEqualIntA(%struct.archive* %191, i32 %192, i32 %194)
  %196 = load %struct.archive*, %struct.archive** %3, align 8
  %197 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %198 = load %struct.archive*, %struct.archive** %3, align 8
  %199 = call i32 @archive_format(%struct.archive* %198)
  %200 = call i32 @assertEqualIntA(%struct.archive* %196, i32 %197, i32 %199)
  %201 = load i32, i32* @ARCHIVE_OK, align 4
  %202 = load %struct.archive*, %struct.archive** %3, align 8
  %203 = call i32 @archive_read_close(%struct.archive* %202)
  %204 = call i32 @assertEqualInt(i32 %201, i32 %203)
  %205 = load i32, i32* @ARCHIVE_OK, align 4
  %206 = load %struct.archive*, %struct.archive** %3, align 8
  %207 = call i32 @archive_read_free(%struct.archive* %206)
  %208 = call i32 @assertEqualInt(i32 %205, i32 %207)
  br label %209

209:                                              ; preds = %123, %28, %12
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
