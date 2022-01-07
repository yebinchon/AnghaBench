; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_pax_filename_encoding.c_test_pax_filename_encoding_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_pax_filename_encoding.c_test_pax_filename_encoding_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@__const.test_pax_filename_encoding_2.filename = private unnamed_addr constant [13 x i8] c"abc\CC\8Cmno\FCxyz\00", align 1
@__const.test_pax_filename_encoding_2.longname = private unnamed_addr constant [253 x i8] c"abc\CC\8Cmno\FCxyz/abc\CC\8Cmno\FCxyz/abcdefghijklmnopqrstuvwxyz/abc\CC\8Cmno\FCxyz/abcdefghijklmnopqrstuvwxyz/abc\CC\8Cmno\FCxyz/abcdefghijklmnopqrstuvwxyz/abc\CC\8Cmno\FCxyz/abcdefghijklmnopqrstuvwxyz/abc\CC\8Cmno\FCxyz/abcdefghijklmnopqrstuvwxyz/abc\CC\8Cmno\FCxyz/abcdefghijklmnopqrstuvwxyz\00", align 16
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"invalid encoding tests require a suitable locale; en_US.UTF-8 not available on this system\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"This should generate a warning for nonconvertible names.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pax_filename_encoding_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pax_filename_encoding_2() #0 {
  %1 = alloca [13 x i8], align 1
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca [65536 x i8], align 16
  %5 = alloca [253 x i8], align 16
  %6 = alloca i64, align 8
  %7 = bitcast [13 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_pax_filename_encoding_2.filename, i32 0, i32 0), i64 13, i1 false)
  %8 = bitcast [253 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([253 x i8], [253 x i8]* @__const.test_pax_filename_encoding_2.longname, i32 0, i32 0), i64 253, i1 false)
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32* @setlocale(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i32* null, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @skipping(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  br label %182

14:                                               ; preds = %0
  %15 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %15, %struct.archive** %2, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = call i32 @archive_write_set_format_pax(%struct.archive* %20)
  %22 = call i32 @assertEqualIntA(%struct.archive* %19, i32 0, i32 %21)
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = load %struct.archive*, %struct.archive** %2, align 8
  %25 = call i32 @archive_write_add_filter_none(%struct.archive* %24)
  %26 = call i32 @assertEqualIntA(%struct.archive* %23, i32 0, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = load %struct.archive*, %struct.archive** %2, align 8
  %29 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %28, i32 0)
  %30 = call i32 @assertEqualIntA(%struct.archive* %27, i32 0, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %2, align 8
  %32 = getelementptr inbounds [65536 x i8], [65536 x i8]* %4, i64 0, i64 0
  %33 = call i32 @archive_write_open_memory(%struct.archive* %31, i8* %32, i32 65536, i64* %6)
  %34 = call i32 @assertEqualInt(i32 0, i32 %33)
  %35 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %35, %struct.archive_entry** %3, align 8
  %36 = icmp ne %struct.archive_entry* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %40 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %41 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %39, i8* %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %43 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %44 = call i32 @archive_entry_copy_gname(%struct.archive_entry* %42, i8* %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %46 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %47 = call i32 @archive_entry_copy_uname(%struct.archive_entry* %45, i8* %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %49 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %50 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %48, i8* %49)
  %51 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %52 = load i32, i32* @AE_IFREG, align 4
  %53 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %51, i32 %52)
  %54 = call i32 @failure(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ARCHIVE_WARN, align 4
  %56 = load %struct.archive*, %struct.archive** %2, align 8
  %57 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %58 = call i32 @archive_write_header(%struct.archive* %56, %struct.archive_entry* %57)
  %59 = call i32 @assertEqualInt(i32 %55, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %61 = call i32 @archive_entry_free(%struct.archive_entry* %60)
  %62 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %62, %struct.archive_entry** %3, align 8
  %63 = icmp ne %struct.archive_entry* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %67 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %68 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %66, i8* %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %70 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %71 = call i32 @archive_entry_copy_gname(%struct.archive_entry* %69, i8* %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %73 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %74 = call i32 @archive_entry_copy_uname(%struct.archive_entry* %72, i8* %73)
  %75 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %76 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %77 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %75, i8* %76)
  %78 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %79 = load i32, i32* @AE_IFLNK, align 4
  %80 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %78, i32 %79)
  %81 = call i32 @failure(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ARCHIVE_WARN, align 4
  %83 = load %struct.archive*, %struct.archive** %2, align 8
  %84 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %85 = call i32 @archive_write_header(%struct.archive* %83, %struct.archive_entry* %84)
  %86 = call i32 @assertEqualInt(i32 %82, i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %88 = call i32 @archive_entry_free(%struct.archive_entry* %87)
  %89 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %89, %struct.archive_entry** %3, align 8
  %90 = icmp ne %struct.archive_entry* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %94 = getelementptr inbounds [253 x i8], [253 x i8]* %5, i64 0, i64 0
  %95 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %93, i8* %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %97 = load i32, i32* @AE_IFREG, align 4
  %98 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %96, i32 %97)
  %99 = call i32 @failure(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @ARCHIVE_WARN, align 4
  %101 = load %struct.archive*, %struct.archive** %2, align 8
  %102 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %103 = call i32 @archive_write_header(%struct.archive* %101, %struct.archive_entry* %102)
  %104 = call i32 @assertEqualInt(i32 %100, i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %106 = call i32 @archive_entry_free(%struct.archive_entry* %105)
  %107 = load %struct.archive*, %struct.archive** %2, align 8
  %108 = load i32, i32* @ARCHIVE_OK, align 4
  %109 = load %struct.archive*, %struct.archive** %2, align 8
  %110 = call i32 @archive_write_close(%struct.archive* %109)
  %111 = call i32 @assertEqualIntA(%struct.archive* %107, i32 %108, i32 %110)
  %112 = load i32, i32* @ARCHIVE_OK, align 4
  %113 = load %struct.archive*, %struct.archive** %2, align 8
  %114 = call i32 @archive_write_free(%struct.archive* %113)
  %115 = call i32 @assertEqualInt(i32 %112, i32 %114)
  %116 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %116, %struct.archive** %2, align 8
  %117 = icmp ne %struct.archive* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.archive*, %struct.archive** %2, align 8
  %121 = call i32 @archive_read_support_format_tar(%struct.archive* %120)
  %122 = call i32 @assertEqualInt(i32 0, i32 %121)
  %123 = load %struct.archive*, %struct.archive** %2, align 8
  %124 = getelementptr inbounds [65536 x i8], [65536 x i8]* %4, i64 0, i64 0
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @archive_read_open_memory(%struct.archive* %123, i8* %124, i64 %125)
  %127 = call i32 @assertEqualInt(i32 0, i32 %126)
  %128 = load %struct.archive*, %struct.archive** %2, align 8
  %129 = call i32 @archive_read_next_header(%struct.archive* %128, %struct.archive_entry** %3)
  %130 = call i32 @assertEqualInt(i32 0, i32 %129)
  %131 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %132 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %133 = call i32 @archive_entry_pathname(%struct.archive_entry* %132)
  %134 = call i32 @assertEqualString(i8* %131, i32 %133)
  %135 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %136 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %137 = call i32 @archive_entry_gname(%struct.archive_entry* %136)
  %138 = call i32 @assertEqualString(i8* %135, i32 %137)
  %139 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %140 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %141 = call i32 @archive_entry_uname(%struct.archive_entry* %140)
  %142 = call i32 @assertEqualString(i8* %139, i32 %141)
  %143 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %144 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %145 = call i32 @archive_entry_hardlink(%struct.archive_entry* %144)
  %146 = call i32 @assertEqualString(i8* %143, i32 %145)
  %147 = load %struct.archive*, %struct.archive** %2, align 8
  %148 = call i32 @archive_read_next_header(%struct.archive* %147, %struct.archive_entry** %3)
  %149 = call i32 @assertEqualInt(i32 0, i32 %148)
  %150 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %151 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %152 = call i32 @archive_entry_pathname(%struct.archive_entry* %151)
  %153 = call i32 @assertEqualString(i8* %150, i32 %152)
  %154 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %155 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %156 = call i32 @archive_entry_gname(%struct.archive_entry* %155)
  %157 = call i32 @assertEqualString(i8* %154, i32 %156)
  %158 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %159 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %160 = call i32 @archive_entry_uname(%struct.archive_entry* %159)
  %161 = call i32 @assertEqualString(i8* %158, i32 %160)
  %162 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %163 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %164 = call i32 @archive_entry_symlink(%struct.archive_entry* %163)
  %165 = call i32 @assertEqualString(i8* %162, i32 %164)
  %166 = load %struct.archive*, %struct.archive** %2, align 8
  %167 = call i32 @archive_read_next_header(%struct.archive* %166, %struct.archive_entry** %3)
  %168 = call i32 @assertEqualInt(i32 0, i32 %167)
  %169 = getelementptr inbounds [253 x i8], [253 x i8]* %5, i64 0, i64 0
  %170 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %171 = call i32 @archive_entry_pathname(%struct.archive_entry* %170)
  %172 = call i32 @assertEqualString(i8* %169, i32 %171)
  %173 = load %struct.archive*, %struct.archive** %2, align 8
  %174 = load i32, i32* @ARCHIVE_OK, align 4
  %175 = load %struct.archive*, %struct.archive** %2, align 8
  %176 = call i32 @archive_read_close(%struct.archive* %175)
  %177 = call i32 @assertEqualIntA(%struct.archive* %173, i32 %174, i32 %176)
  %178 = load i32, i32* @ARCHIVE_OK, align 4
  %179 = load %struct.archive*, %struct.archive** %2, align 8
  %180 = call i32 @archive_read_free(%struct.archive* %179)
  %181 = call i32 @assertEqualInt(i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %14, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @setlocale(i32, i8*) #2

declare dso_local i32 @skipping(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_write_new(...) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_write_set_format_pax(%struct.archive*) #2

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #2

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i32, i64*) #2

declare dso_local %struct.archive_entry* @archive_entry_new(...) #2

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_copy_gname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_copy_uname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_copy_hardlink(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #2

declare dso_local i32 @failure(i8*) #2

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #2

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_copy_symlink(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_write_close(%struct.archive*) #2

declare dso_local i32 @archive_write_free(%struct.archive*) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #2

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_hardlink(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
