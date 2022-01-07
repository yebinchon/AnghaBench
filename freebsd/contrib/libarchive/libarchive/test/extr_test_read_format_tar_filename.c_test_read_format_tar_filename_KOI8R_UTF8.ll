; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar_filename.c_test_read_format_tar_filename_KOI8R_UTF8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar_filename.c_test_read_format_tar_filename_KOI8R_UTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"en_US.UTF-8 locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"hdrcharset=KOI8-R\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"This system cannot convert character-set from KOI8-R to UTF-8.\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\D0\9F\D0\A0\D0\98\D0\92\D0\95\D0\A2\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"\D0\BF\D1\80\D0\B8\D0\B2\D0\B5\D1\82\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"\F0\F2\E9\F7\E5\F4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_tar_filename_KOI8R_UTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_tar_filename_KOI8R_UTF8(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32* @setlocale(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @skipping(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %192

10:                                               ; preds = %1
  %11 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %11, %struct.archive** %3, align 8
  %12 = icmp ne %struct.archive* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_read_support_filter_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = call i32 @archive_read_support_format_all(%struct.archive* %22)
  %24 = call i32 @assertEqualIntA(%struct.archive* %20, i32 %21, i32 %23)
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_read_set_options(%struct.archive* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %10
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = call i32 @archive_read_free(%struct.archive* %31)
  %33 = call i32 @assertEqualInt(i32 %30, i32 %32)
  %34 = call i32 @skipping(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  br label %192

35:                                               ; preds = %10
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @archive_read_open_filename(%struct.archive* %38, i8* %39, i32 10240)
  %41 = call i32 @assertEqualIntA(%struct.archive* %36, i32 %37, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %3, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = load %struct.archive*, %struct.archive** %3, align 8
  %45 = call i32 @archive_read_next_header(%struct.archive* %44, %struct.archive_entry** %4)
  %46 = call i32 @assertEqualIntA(%struct.archive* %42, i32 %43, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = call i32 @archive_entry_pathname(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %51 = call i32 @archive_entry_size(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 6, i32 %51)
  %53 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %54 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %53)
  %55 = call i32 @assertEqualInt(i32 %54, i32 0)
  %56 = load %struct.archive*, %struct.archive** %3, align 8
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %57)
  %59 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %60 = call i32 @assertEqualIntA(%struct.archive* %56, i32 %58, i32 %59)
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = call i32 @archive_read_next_header(%struct.archive* %63, %struct.archive_entry** %4)
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %62, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %67 = call i32 @archive_entry_pathname(%struct.archive_entry* %66)
  %68 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %70 = call i32 @archive_entry_size(%struct.archive_entry* %69)
  %71 = call i32 @assertEqualInt(i32 6, i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %73 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %72)
  %74 = call i32 @assertEqualInt(i32 %73, i32 0)
  %75 = load %struct.archive*, %struct.archive** %3, align 8
  %76 = load %struct.archive*, %struct.archive** %3, align 8
  %77 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %76)
  %78 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %79 = call i32 @assertEqualIntA(%struct.archive* %75, i32 %77, i32 %78)
  %80 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %81 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %80)
  %82 = call i32 @assertEqualInt(i32 %81, i32 0)
  %83 = load %struct.archive*, %struct.archive** %3, align 8
  %84 = load %struct.archive*, %struct.archive** %3, align 8
  %85 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %84)
  %86 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %87 = call i32 @assertEqualIntA(%struct.archive* %83, i32 %85, i32 %86)
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = load i32, i32* @ARCHIVE_EOF, align 4
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = call i32 @archive_read_next_header(%struct.archive* %90, %struct.archive_entry** %4)
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %89, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %3, align 8
  %94 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %95 = load %struct.archive*, %struct.archive** %3, align 8
  %96 = call i32 @archive_filter_code(%struct.archive* %95, i32 0)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load %struct.archive*, %struct.archive** %3, align 8
  %99 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = call i32 @archive_format(%struct.archive* %100)
  %102 = call i32 @assertEqualIntA(%struct.archive* %98, i32 %99, i32 %101)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %104 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %103)
  %105 = call i32 @assertEqualInt(i32 %104, i32 0)
  %106 = load %struct.archive*, %struct.archive** %3, align 8
  %107 = load %struct.archive*, %struct.archive** %3, align 8
  %108 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %107)
  %109 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %110 = call i32 @assertEqualIntA(%struct.archive* %106, i32 %108, i32 %109)
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  %112 = load %struct.archive*, %struct.archive** %3, align 8
  %113 = call i32 @archive_read_close(%struct.archive* %112)
  %114 = call i32 @assertEqualInt(i32 %111, i32 %113)
  %115 = load i32, i32* @ARCHIVE_OK, align 4
  %116 = load %struct.archive*, %struct.archive** %3, align 8
  %117 = call i32 @archive_read_free(%struct.archive* %116)
  %118 = call i32 @assertEqualInt(i32 %115, i32 %117)
  %119 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %119, %struct.archive** %3, align 8
  %120 = icmp ne %struct.archive* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.archive*, %struct.archive** %3, align 8
  %124 = load i32, i32* @ARCHIVE_OK, align 4
  %125 = load %struct.archive*, %struct.archive** %3, align 8
  %126 = call i32 @archive_read_support_filter_all(%struct.archive* %125)
  %127 = call i32 @assertEqualIntA(%struct.archive* %123, i32 %124, i32 %126)
  %128 = load %struct.archive*, %struct.archive** %3, align 8
  %129 = load i32, i32* @ARCHIVE_OK, align 4
  %130 = load %struct.archive*, %struct.archive** %3, align 8
  %131 = call i32 @archive_read_support_format_all(%struct.archive* %130)
  %132 = call i32 @assertEqualIntA(%struct.archive* %128, i32 %129, i32 %131)
  %133 = load %struct.archive*, %struct.archive** %3, align 8
  %134 = load i32, i32* @ARCHIVE_OK, align 4
  %135 = load %struct.archive*, %struct.archive** %3, align 8
  %136 = load i8*, i8** %2, align 8
  %137 = call i32 @archive_read_open_filename(%struct.archive* %135, i8* %136, i32 10240)
  %138 = call i32 @assertEqualIntA(%struct.archive* %133, i32 %134, i32 %137)
  %139 = load %struct.archive*, %struct.archive** %3, align 8
  %140 = load i32, i32* @ARCHIVE_OK, align 4
  %141 = load %struct.archive*, %struct.archive** %3, align 8
  %142 = call i32 @archive_read_next_header(%struct.archive* %141, %struct.archive_entry** %4)
  %143 = call i32 @assertEqualIntA(%struct.archive* %139, i32 %140, i32 %142)
  %144 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %145 = call i32 @archive_entry_pathname(%struct.archive_entry* %144)
  %146 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %148 = call i32 @archive_entry_size(%struct.archive_entry* %147)
  %149 = call i32 @assertEqualInt(i32 6, i32 %148)
  %150 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %151 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %150)
  %152 = call i32 @assertEqualInt(i32 %151, i32 0)
  %153 = load %struct.archive*, %struct.archive** %3, align 8
  %154 = load %struct.archive*, %struct.archive** %3, align 8
  %155 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %154)
  %156 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %157 = call i32 @assertEqualIntA(%struct.archive* %153, i32 %155, i32 %156)
  %158 = load %struct.archive*, %struct.archive** %3, align 8
  %159 = load i32, i32* @ARCHIVE_OK, align 4
  %160 = load %struct.archive*, %struct.archive** %3, align 8
  %161 = call i32 @archive_read_next_header(%struct.archive* %160, %struct.archive_entry** %4)
  %162 = call i32 @assertEqualIntA(%struct.archive* %158, i32 %159, i32 %161)
  %163 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %164 = call i32 @archive_entry_pathname(%struct.archive_entry* %163)
  %165 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %167 = call i32 @archive_entry_size(%struct.archive_entry* %166)
  %168 = call i32 @assertEqualInt(i32 6, i32 %167)
  %169 = load %struct.archive*, %struct.archive** %3, align 8
  %170 = load i32, i32* @ARCHIVE_EOF, align 4
  %171 = load %struct.archive*, %struct.archive** %3, align 8
  %172 = call i32 @archive_read_next_header(%struct.archive* %171, %struct.archive_entry** %4)
  %173 = call i32 @assertEqualIntA(%struct.archive* %169, i32 %170, i32 %172)
  %174 = load %struct.archive*, %struct.archive** %3, align 8
  %175 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %176 = load %struct.archive*, %struct.archive** %3, align 8
  %177 = call i32 @archive_filter_code(%struct.archive* %176, i32 0)
  %178 = call i32 @assertEqualIntA(%struct.archive* %174, i32 %175, i32 %177)
  %179 = load %struct.archive*, %struct.archive** %3, align 8
  %180 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %181 = load %struct.archive*, %struct.archive** %3, align 8
  %182 = call i32 @archive_format(%struct.archive* %181)
  %183 = call i32 @assertEqualIntA(%struct.archive* %179, i32 %180, i32 %182)
  %184 = load i32, i32* @ARCHIVE_OK, align 4
  %185 = load %struct.archive*, %struct.archive** %3, align 8
  %186 = call i32 @archive_read_close(%struct.archive* %185)
  %187 = call i32 @assertEqualInt(i32 %184, i32 %186)
  %188 = load i32, i32* @ARCHIVE_OK, align 4
  %189 = load %struct.archive*, %struct.archive** %3, align 8
  %190 = call i32 @archive_read_free(%struct.archive* %189)
  %191 = call i32 @assertEqualInt(i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %35, %29, %8
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

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
