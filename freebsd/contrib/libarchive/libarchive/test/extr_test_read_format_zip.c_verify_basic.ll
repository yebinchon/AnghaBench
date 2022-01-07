; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_verify_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_verify_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ZIP 1.0 (uncompressed)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ZIP 2.0 (deflation)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"archive_read_data() returns number of bytes read\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"hello\0Ahello\0Ahello\0A\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Unsupported ZIP compression method (8: deflation)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"file2 has a bad CRC, so read should fail and not change buff\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"aaaaaaaaaaaaaaaaaaa\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"the archive file has three files\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_basic(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca [128 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  %12 = load %struct.archive*, %struct.archive** %3, align 8
  %13 = call i32 @archive_read_next_header(%struct.archive* %12, %struct.archive_entry** %5)
  %14 = call i32 @assertEqualIntA(%struct.archive* %10, i32 %11, i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = call i8* @archive_format_name(%struct.archive* %15)
  %17 = call i32 @assertEqualString(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %19 = call i8* @archive_entry_pathname(%struct.archive_entry* %18)
  %20 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %22 = call i32 @archive_entry_mtime(%struct.archive_entry* %21)
  %23 = call i32 @assertEqualInt(i32 1179604249, i32 %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %25 = call i32 @archive_entry_size(%struct.archive_entry* %24)
  %26 = call i32 @assertEqualInt(i32 0, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @AE_IFDIR, align 4
  %31 = or i32 %30, 493
  %32 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %33 = call i32 @archive_entry_mode(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %37 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %36)
  %38 = call i32 @assertEqualInt(i32 %37, i32 0)
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load %struct.archive*, %struct.archive** %3, align 8
  %41 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %40)
  %42 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %41, i32 0)
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = load i32, i32* @ARCHIVE_EOF, align 4
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = call i32 @archive_read_data_block(%struct.archive* %45, i8** %7, i64* %8, i32* %9)
  %47 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @assertEqualInt(i32 %49, i32 0)
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  %53 = load %struct.archive*, %struct.archive** %3, align 8
  %54 = call i32 @archive_read_next_header(%struct.archive* %53, %struct.archive_entry** %5)
  %55 = call i32 @assertEqualIntA(%struct.archive* %51, i32 %52, i32 %54)
  %56 = load %struct.archive*, %struct.archive** %3, align 8
  %57 = call i8* @archive_format_name(%struct.archive* %56)
  %58 = call i32 @assertEqualString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %60 = call i8* @archive_entry_pathname(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %63 = call i32 @archive_entry_mtime(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualInt(i32 1179604289, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %35
  %68 = load i32, i32* @AE_IFREG, align 4
  %69 = or i32 %68, 493
  %70 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %71 = call i32 @archive_entry_mode(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualInt(i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %35
  %74 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %75 = call i32 @archive_entry_size(%struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 18, i32 %75)
  %77 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %78 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %77)
  %79 = call i32 @assertEqualInt(i32 %78, i32 0)
  %80 = load %struct.archive*, %struct.archive** %3, align 8
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %81)
  %83 = call i32 @assertEqualIntA(%struct.archive* %80, i32 %82, i32 0)
  %84 = call i32 @failure(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32* (...) @archive_zlib_version()
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %73
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %90 = call i32 @archive_read_data(%struct.archive* %88, i8** %89, i32 19)
  %91 = call i32 @assertEqualInt(i32 18, i32 %90)
  %92 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %93 = call i32 @assertEqualMem(i8** %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 18)
  br label %108

94:                                               ; preds = %73
  %95 = load i32, i32* @ARCHIVE_FAILED, align 4
  %96 = load %struct.archive*, %struct.archive** %3, align 8
  %97 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %98 = call i32 @archive_read_data(%struct.archive* %96, i8** %97, i32 19)
  %99 = call i32 @assertEqualInt(i32 %95, i32 %98)
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = call i8* @archive_error_string(%struct.archive* %100)
  %102 = call i32 @assertEqualString(i8* %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.archive*, %struct.archive** %3, align 8
  %104 = call i64 @archive_errno(%struct.archive* %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %108

108:                                              ; preds = %94, %87
  %109 = load %struct.archive*, %struct.archive** %3, align 8
  %110 = load i32, i32* @ARCHIVE_OK, align 4
  %111 = load %struct.archive*, %struct.archive** %3, align 8
  %112 = call i32 @archive_read_next_header(%struct.archive* %111, %struct.archive_entry** %5)
  %113 = call i32 @assertEqualIntA(%struct.archive* %109, i32 %110, i32 %112)
  %114 = load %struct.archive*, %struct.archive** %3, align 8
  %115 = call i8* @archive_format_name(%struct.archive* %114)
  %116 = call i32 @assertEqualString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %118 = call i8* @archive_entry_pathname(%struct.archive_entry* %117)
  %119 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  %120 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %121 = call i32 @archive_entry_mtime(%struct.archive_entry* %120)
  %122 = call i32 @assertEqualInt(i32 1179605932, i32 %121)
  %123 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %124 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %123)
  %125 = call i32 @assertEqualInt(i32 %124, i32 0)
  %126 = load %struct.archive*, %struct.archive** %3, align 8
  %127 = load %struct.archive*, %struct.archive** %3, align 8
  %128 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %127)
  %129 = call i32 @assertEqualIntA(%struct.archive* %126, i32 %128, i32 0)
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %108
  %133 = load i32, i32* @AE_IFREG, align 4
  %134 = or i32 %133, 493
  %135 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %136 = call i32 @archive_entry_mode(%struct.archive_entry* %135)
  %137 = call i32 @assertEqualInt(i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %132, %108
  %139 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %140 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %139)
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %143 = call i32 @archive_entry_size(%struct.archive_entry* %142)
  %144 = call i32 @assertEqualInt(i32 18, i32 %143)
  %145 = call i32* (...) @archive_zlib_version()
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = call i32 @failure(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %149 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %150 = call i32 @memset(i8** %149, i8 signext 97, i32 19)
  %151 = load i32, i32* @ARCHIVE_WARN, align 4
  %152 = load %struct.archive*, %struct.archive** %3, align 8
  %153 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %154 = call i32 @archive_read_data(%struct.archive* %152, i8** %153, i32 19)
  %155 = call i32 @assertEqualInt(i32 %151, i32 %154)
  %156 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %157 = call i32 @assertEqualMem(i8** %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 19)
  br label %172

158:                                              ; preds = %138
  %159 = load i32, i32* @ARCHIVE_FAILED, align 4
  %160 = load %struct.archive*, %struct.archive** %3, align 8
  %161 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %162 = call i32 @archive_read_data(%struct.archive* %160, i8** %161, i32 19)
  %163 = call i32 @assertEqualInt(i32 %159, i32 %162)
  %164 = load %struct.archive*, %struct.archive** %3, align 8
  %165 = call i8* @archive_error_string(%struct.archive* %164)
  %166 = call i32 @assertEqualString(i8* %165, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %167 = load %struct.archive*, %struct.archive** %3, align 8
  %168 = call i64 @archive_errno(%struct.archive* %167)
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  br label %172

172:                                              ; preds = %158, %147
  %173 = load i32, i32* @ARCHIVE_EOF, align 4
  %174 = load %struct.archive*, %struct.archive** %3, align 8
  %175 = call i32 @archive_read_next_header(%struct.archive* %174, %struct.archive_entry** %5)
  %176 = call i32 @assertEqualInt(i32 %173, i32 %175)
  %177 = load %struct.archive*, %struct.archive** %3, align 8
  %178 = call i8* @archive_format_name(%struct.archive* %177)
  %179 = call i32 @assertEqualString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %178)
  %180 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %181 = load %struct.archive*, %struct.archive** %3, align 8
  %182 = call i32 @archive_file_count(%struct.archive* %181)
  %183 = call i32 @assertEqualInt(i32 3, i32 %182)
  %184 = load %struct.archive*, %struct.archive** %3, align 8
  %185 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %186 = load %struct.archive*, %struct.archive** %3, align 8
  %187 = call i32 @archive_filter_code(%struct.archive* %186, i32 0)
  %188 = call i32 @assertEqualIntA(%struct.archive* %184, i32 %185, i32 %187)
  %189 = load %struct.archive*, %struct.archive** %3, align 8
  %190 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %191 = load %struct.archive*, %struct.archive** %3, align 8
  %192 = call i32 @archive_format(%struct.archive* %191)
  %193 = call i32 @assertEqualIntA(%struct.archive* %189, i32 %190, i32 %192)
  %194 = load %struct.archive*, %struct.archive** %3, align 8
  %195 = load i32, i32* @ARCHIVE_OK, align 4
  %196 = load %struct.archive*, %struct.archive** %3, align 8
  %197 = call i32 @archive_read_close(%struct.archive* %196)
  %198 = call i32 @assertEqualIntA(%struct.archive* %194, i32 %195, i32 %197)
  %199 = load i32, i32* @ARCHIVE_OK, align 4
  %200 = load %struct.archive*, %struct.archive** %3, align 8
  %201 = call i32 @archive_read_free(%struct.archive* %200)
  %202 = call i32 @assertEqualInt(i32 %199, i32 %201)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @archive_format_name(%struct.archive*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32* @archive_zlib_version(...) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8**, i32) #1

declare dso_local i32 @assertEqualMem(i8**, i8*, i32) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @memset(i8**, i8 signext, i32) #1

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
