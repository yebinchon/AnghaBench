; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_mtree.c_test_read_format_mtree1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_mtree.c_test_read_format_mtree1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_read_format_mtree1.reffile = private unnamed_addr constant [29 x i8] c"test_read_format_mtree.mtree\00", align 16
@test_read_format_mtree1.max_int64 = internal constant i64 9223372036854775807, align 8
@.str = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dir2\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"mtree:checkfs\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hi\0A\00", align 1
@ARCHIVE_FORMAT_MTREE = common dso_local global i64 0, align 8
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"dir/file with space\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"file with space\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dir2/dir3a\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"dir2/dir3a/indir3a\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"dir2/fullindir2\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dir2/indir2\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dir2/dir3b\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"dir2/dir3b/indir3b\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"dir2/dir3b/filename\\with_esc\08\09\0Capes\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"notindir\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"dir2/emptyfile\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"dir2/smallfile\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"dir2/toosmallfile\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"dir2/bigfile\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"dir2/toobigfile\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"dir2/veryoldfile\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"dir2/toooldfile\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_format_mtree1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_mtree1() #0 {
  %1 = alloca [29 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = bitcast [29 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.test_read_format_mtree1.reffile, i32 0, i32 0), i64 29, i1 false)
  %9 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %10 = call i32 @extract_reference_file(i8* %9)
  %11 = call i32 @assertMakeDir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 509)
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 509)
  %13 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %13, %struct.archive** %4, align 8
  %14 = icmp ne %struct.archive* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.archive*, %struct.archive** %4, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = call i32 @archive_read_support_filter_all(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %4, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %4, align 8
  %25 = call i32 @archive_read_support_format_all(%struct.archive* %24)
  %26 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %4, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %4, align 8
  %30 = call i32 @archive_read_set_options(%struct.archive* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %4, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %4, align 8
  %35 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %36 = call i32 @archive_read_open_filename(%struct.archive* %34, i8* %35, i32 11)
  %37 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %36)
  %38 = call i32* @fopen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 3, i32* %43)
  %45 = call i32 @assertEqualInt(i32 3, i64 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load %struct.archive*, %struct.archive** %4, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  %50 = load %struct.archive*, %struct.archive** %4, align 8
  %51 = call i32 @archive_read_next_header(%struct.archive* %50, %struct.archive_entry** %3)
  %52 = call i32 @assertEqualIntA(%struct.archive* %48, i32 %49, i32 %51)
  %53 = load %struct.archive*, %struct.archive** %4, align 8
  %54 = call i32 @archive_format(%struct.archive* %53)
  %55 = load i64, i64* @ARCHIVE_FORMAT_MTREE, align 8
  %56 = call i32 @assertEqualInt(i32 %54, i64 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %58 = call i32 @archive_entry_pathname(%struct.archive_entry* %57)
  %59 = call i32 @assertEqualString(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %61 = call i32 @archive_entry_uid(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualInt(i32 %61, i64 18)
  %63 = load i32, i32* @AE_IFREG, align 4
  %64 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %65 = call i32 @archive_entry_filetype(%struct.archive_entry* %64)
  %66 = sext i32 %65 to i64
  %67 = call i32 @assertEqualInt(i32 %63, i64 %66)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %69 = call i32 @archive_entry_mode(%struct.archive_entry* %68)
  %70 = load i32, i32* @AE_IFREG, align 4
  %71 = or i32 %70, 83
  %72 = sext i32 %71 to i64
  %73 = call i32 @assertEqualInt(i32 %69, i64 %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %75 = call i32 @archive_entry_size(%struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 %75, i64 3)
  %77 = load %struct.archive*, %struct.archive** %4, align 8
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %79 = call i64 @archive_read_data(%struct.archive* %77, i8* %78, i32 3)
  %80 = call i32 @assertEqualInt(i32 3, i64 %79)
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %82 = call i32 @assertEqualMem(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %83 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %84 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %83)
  %85 = call i32 @assertEqualInt(i32 %84, i64 0)
  %86 = load %struct.archive*, %struct.archive** %4, align 8
  %87 = load %struct.archive*, %struct.archive** %4, align 8
  %88 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %87)
  %89 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %90 = call i32 @assertEqualIntA(%struct.archive* %86, i32 %88, i32 %89)
  %91 = load %struct.archive*, %struct.archive** %4, align 8
  %92 = load i32, i32* @ARCHIVE_OK, align 4
  %93 = load %struct.archive*, %struct.archive** %4, align 8
  %94 = call i32 @archive_read_next_header(%struct.archive* %93, %struct.archive_entry** %3)
  %95 = call i32 @assertEqualIntA(%struct.archive* %91, i32 %92, i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %97 = call i32 @archive_entry_pathname(%struct.archive_entry* %96)
  %98 = call i32 @assertEqualString(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @AE_IFDIR, align 4
  %100 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %101 = call i32 @archive_entry_filetype(%struct.archive_entry* %100)
  %102 = sext i32 %101 to i64
  %103 = call i32 @assertEqualInt(i32 %99, i64 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %105 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %104)
  %106 = call i32 @assertEqualInt(i32 %105, i64 0)
  %107 = load %struct.archive*, %struct.archive** %4, align 8
  %108 = load %struct.archive*, %struct.archive** %4, align 8
  %109 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %108)
  %110 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %111 = call i32 @assertEqualIntA(%struct.archive* %107, i32 %109, i32 %110)
  %112 = load %struct.archive*, %struct.archive** %4, align 8
  %113 = load i32, i32* @ARCHIVE_OK, align 4
  %114 = load %struct.archive*, %struct.archive** %4, align 8
  %115 = call i32 @archive_read_next_header(%struct.archive* %114, %struct.archive_entry** %3)
  %116 = call i32 @assertEqualIntA(%struct.archive* %112, i32 %113, i32 %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %118 = call i32 @archive_entry_pathname(%struct.archive_entry* %117)
  %119 = call i32 @assertEqualString(i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %120 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %121 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %120)
  %122 = call i32 @assertEqualInt(i32 %121, i64 0)
  %123 = load %struct.archive*, %struct.archive** %4, align 8
  %124 = load %struct.archive*, %struct.archive** %4, align 8
  %125 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %124)
  %126 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %127 = call i32 @assertEqualIntA(%struct.archive* %123, i32 %125, i32 %126)
  %128 = load %struct.archive*, %struct.archive** %4, align 8
  %129 = load i32, i32* @ARCHIVE_OK, align 4
  %130 = load %struct.archive*, %struct.archive** %4, align 8
  %131 = call i32 @archive_read_next_header(%struct.archive* %130, %struct.archive_entry** %3)
  %132 = call i32 @assertEqualIntA(%struct.archive* %128, i32 %129, i32 %131)
  %133 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %134 = call i32 @archive_entry_pathname(%struct.archive_entry* %133)
  %135 = call i32 @assertEqualString(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %136 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %137 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %136)
  %138 = call i32 @assertEqualInt(i32 %137, i64 0)
  %139 = load %struct.archive*, %struct.archive** %4, align 8
  %140 = load %struct.archive*, %struct.archive** %4, align 8
  %141 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %140)
  %142 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %143 = call i32 @assertEqualIntA(%struct.archive* %139, i32 %141, i32 %142)
  %144 = load %struct.archive*, %struct.archive** %4, align 8
  %145 = load i32, i32* @ARCHIVE_OK, align 4
  %146 = load %struct.archive*, %struct.archive** %4, align 8
  %147 = call i32 @archive_read_next_header(%struct.archive* %146, %struct.archive_entry** %3)
  %148 = call i32 @assertEqualIntA(%struct.archive* %144, i32 %145, i32 %147)
  %149 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %150 = call i32 @archive_entry_pathname(%struct.archive_entry* %149)
  %151 = call i32 @assertEqualString(i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %153 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %152)
  %154 = call i32 @assertEqualInt(i32 %153, i64 0)
  %155 = load %struct.archive*, %struct.archive** %4, align 8
  %156 = load %struct.archive*, %struct.archive** %4, align 8
  %157 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %156)
  %158 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %159 = call i32 @assertEqualIntA(%struct.archive* %155, i32 %157, i32 %158)
  %160 = load %struct.archive*, %struct.archive** %4, align 8
  %161 = load i32, i32* @ARCHIVE_OK, align 4
  %162 = load %struct.archive*, %struct.archive** %4, align 8
  %163 = call i32 @archive_read_next_header(%struct.archive* %162, %struct.archive_entry** %3)
  %164 = call i32 @assertEqualIntA(%struct.archive* %160, i32 %161, i32 %163)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %166 = call i32 @archive_entry_pathname(%struct.archive_entry* %165)
  %167 = call i32 @assertEqualString(i32 %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %168 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %169 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %168)
  %170 = call i32 @assertEqualInt(i32 %169, i64 0)
  %171 = load %struct.archive*, %struct.archive** %4, align 8
  %172 = load %struct.archive*, %struct.archive** %4, align 8
  %173 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %172)
  %174 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %175 = call i32 @assertEqualIntA(%struct.archive* %171, i32 %173, i32 %174)
  %176 = load %struct.archive*, %struct.archive** %4, align 8
  %177 = load i32, i32* @ARCHIVE_OK, align 4
  %178 = load %struct.archive*, %struct.archive** %4, align 8
  %179 = call i32 @archive_read_next_header(%struct.archive* %178, %struct.archive_entry** %3)
  %180 = call i32 @assertEqualIntA(%struct.archive* %176, i32 %177, i32 %179)
  %181 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %182 = call i32 @archive_entry_pathname(%struct.archive_entry* %181)
  %183 = call i32 @assertEqualString(i32 %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %184 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %185 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %184)
  %186 = call i32 @assertEqualInt(i32 %185, i64 0)
  %187 = load %struct.archive*, %struct.archive** %4, align 8
  %188 = load %struct.archive*, %struct.archive** %4, align 8
  %189 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %188)
  %190 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %191 = call i32 @assertEqualIntA(%struct.archive* %187, i32 %189, i32 %190)
  %192 = load %struct.archive*, %struct.archive** %4, align 8
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  %194 = load %struct.archive*, %struct.archive** %4, align 8
  %195 = call i32 @archive_read_next_header(%struct.archive* %194, %struct.archive_entry** %3)
  %196 = call i32 @assertEqualIntA(%struct.archive* %192, i32 %193, i32 %195)
  %197 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %198 = call i32 @archive_entry_pathname(%struct.archive_entry* %197)
  %199 = call i32 @assertEqualString(i32 %198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %200 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %201 = call i32 @archive_entry_mode(%struct.archive_entry* %200)
  %202 = load i32, i32* @AE_IFREG, align 4
  %203 = or i32 %202, 420
  %204 = sext i32 %203 to i64
  %205 = call i32 @assertEqualInt(i32 %201, i64 %204)
  %206 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %207 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %206)
  %208 = call i32 @assertEqualInt(i32 %207, i64 0)
  %209 = load %struct.archive*, %struct.archive** %4, align 8
  %210 = load %struct.archive*, %struct.archive** %4, align 8
  %211 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %210)
  %212 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %213 = call i32 @assertEqualIntA(%struct.archive* %209, i32 %211, i32 %212)
  %214 = load %struct.archive*, %struct.archive** %4, align 8
  %215 = load i32, i32* @ARCHIVE_OK, align 4
  %216 = load %struct.archive*, %struct.archive** %4, align 8
  %217 = call i32 @archive_read_next_header(%struct.archive* %216, %struct.archive_entry** %3)
  %218 = call i32 @assertEqualIntA(%struct.archive* %214, i32 %215, i32 %217)
  %219 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %220 = call i32 @archive_entry_pathname(%struct.archive_entry* %219)
  %221 = call i32 @assertEqualString(i32 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %222 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %223 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %222)
  %224 = call i32 @assertEqualInt(i32 %223, i64 0)
  %225 = load %struct.archive*, %struct.archive** %4, align 8
  %226 = load %struct.archive*, %struct.archive** %4, align 8
  %227 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %226)
  %228 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %229 = call i32 @assertEqualIntA(%struct.archive* %225, i32 %227, i32 %228)
  %230 = load %struct.archive*, %struct.archive** %4, align 8
  %231 = load i32, i32* @ARCHIVE_OK, align 4
  %232 = load %struct.archive*, %struct.archive** %4, align 8
  %233 = call i32 @archive_read_next_header(%struct.archive* %232, %struct.archive_entry** %3)
  %234 = call i32 @assertEqualIntA(%struct.archive* %230, i32 %231, i32 %233)
  %235 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %236 = call i32 @archive_entry_pathname(%struct.archive_entry* %235)
  %237 = call i32 @assertEqualString(i32 %236, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %238 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %239 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %238)
  %240 = call i32 @assertEqualInt(i32 %239, i64 0)
  %241 = load %struct.archive*, %struct.archive** %4, align 8
  %242 = load %struct.archive*, %struct.archive** %4, align 8
  %243 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %242)
  %244 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %245 = call i32 @assertEqualIntA(%struct.archive* %241, i32 %243, i32 %244)
  %246 = load %struct.archive*, %struct.archive** %4, align 8
  %247 = load i32, i32* @ARCHIVE_OK, align 4
  %248 = load %struct.archive*, %struct.archive** %4, align 8
  %249 = call i32 @archive_read_next_header(%struct.archive* %248, %struct.archive_entry** %3)
  %250 = call i32 @assertEqualIntA(%struct.archive* %246, i32 %247, i32 %249)
  %251 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %252 = call i32 @archive_entry_pathname(%struct.archive_entry* %251)
  %253 = call i32 @assertEqualString(i32 %252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %254 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %255 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %254)
  %256 = call i32 @assertEqualInt(i32 %255, i64 0)
  %257 = load %struct.archive*, %struct.archive** %4, align 8
  %258 = load %struct.archive*, %struct.archive** %4, align 8
  %259 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %258)
  %260 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %261 = call i32 @assertEqualIntA(%struct.archive* %257, i32 %259, i32 %260)
  %262 = load %struct.archive*, %struct.archive** %4, align 8
  %263 = load i32, i32* @ARCHIVE_OK, align 4
  %264 = load %struct.archive*, %struct.archive** %4, align 8
  %265 = call i32 @archive_read_next_header(%struct.archive* %264, %struct.archive_entry** %3)
  %266 = call i32 @assertEqualIntA(%struct.archive* %262, i32 %263, i32 %265)
  %267 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %268 = call i32 @archive_entry_pathname(%struct.archive_entry* %267)
  %269 = call i32 @assertEqualString(i32 %268, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %270 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %271 = call i32 @archive_entry_filetype(%struct.archive_entry* %270)
  %272 = load i32, i32* @AE_IFREG, align 4
  %273 = sext i32 %272 to i64
  %274 = call i32 @assertEqualInt(i32 %271, i64 %273)
  %275 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %276 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %275)
  %277 = call i32 @assertEqualInt(i32 %276, i64 0)
  %278 = load %struct.archive*, %struct.archive** %4, align 8
  %279 = load %struct.archive*, %struct.archive** %4, align 8
  %280 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %279)
  %281 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %282 = call i32 @assertEqualIntA(%struct.archive* %278, i32 %280, i32 %281)
  %283 = load %struct.archive*, %struct.archive** %4, align 8
  %284 = load i32, i32* @ARCHIVE_OK, align 4
  %285 = load %struct.archive*, %struct.archive** %4, align 8
  %286 = call i32 @archive_read_next_header(%struct.archive* %285, %struct.archive_entry** %3)
  %287 = call i32 @assertEqualIntA(%struct.archive* %283, i32 %284, i32 %286)
  %288 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %289 = call i32 @archive_entry_pathname(%struct.archive_entry* %288)
  %290 = call i32 @assertEqualString(i32 %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %291 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %292 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %291)
  %293 = call i32 @assertEqualInt(i32 %292, i64 0)
  %294 = load %struct.archive*, %struct.archive** %4, align 8
  %295 = load %struct.archive*, %struct.archive** %4, align 8
  %296 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %295)
  %297 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %298 = call i32 @assertEqualIntA(%struct.archive* %294, i32 %296, i32 %297)
  %299 = load %struct.archive*, %struct.archive** %4, align 8
  %300 = load i32, i32* @ARCHIVE_OK, align 4
  %301 = load %struct.archive*, %struct.archive** %4, align 8
  %302 = call i32 @archive_read_next_header(%struct.archive* %301, %struct.archive_entry** %3)
  %303 = call i32 @assertEqualIntA(%struct.archive* %299, i32 %300, i32 %302)
  %304 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %305 = call i32 @archive_entry_pathname(%struct.archive_entry* %304)
  %306 = call i32 @assertEqualString(i32 %305, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %307 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %308 = call i32 @archive_entry_size(%struct.archive_entry* %307)
  %309 = call i32 @assertEqualInt(i32 %308, i64 0)
  %310 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %311 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %310)
  %312 = call i32 @assertEqualInt(i32 %311, i64 0)
  %313 = load %struct.archive*, %struct.archive** %4, align 8
  %314 = load %struct.archive*, %struct.archive** %4, align 8
  %315 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %314)
  %316 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %317 = call i32 @assertEqualIntA(%struct.archive* %313, i32 %315, i32 %316)
  %318 = load %struct.archive*, %struct.archive** %4, align 8
  %319 = load i32, i32* @ARCHIVE_OK, align 4
  %320 = load %struct.archive*, %struct.archive** %4, align 8
  %321 = call i32 @archive_read_next_header(%struct.archive* %320, %struct.archive_entry** %3)
  %322 = call i32 @assertEqualIntA(%struct.archive* %318, i32 %319, i32 %321)
  %323 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %324 = call i32 @archive_entry_pathname(%struct.archive_entry* %323)
  %325 = call i32 @assertEqualString(i32 %324, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %326 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %327 = call i32 @archive_entry_size(%struct.archive_entry* %326)
  %328 = call i32 @assertEqualInt(i32 %327, i64 1)
  %329 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %330 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %329)
  %331 = call i32 @assertEqualInt(i32 %330, i64 0)
  %332 = load %struct.archive*, %struct.archive** %4, align 8
  %333 = load %struct.archive*, %struct.archive** %4, align 8
  %334 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %333)
  %335 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %336 = call i32 @assertEqualIntA(%struct.archive* %332, i32 %334, i32 %335)
  %337 = load %struct.archive*, %struct.archive** %4, align 8
  %338 = load i32, i32* @ARCHIVE_OK, align 4
  %339 = load %struct.archive*, %struct.archive** %4, align 8
  %340 = call i32 @archive_read_next_header(%struct.archive* %339, %struct.archive_entry** %3)
  %341 = call i32 @assertEqualIntA(%struct.archive* %337, i32 %338, i32 %340)
  %342 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %343 = call i32 @archive_entry_pathname(%struct.archive_entry* %342)
  %344 = call i32 @assertEqualString(i32 %343, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %345 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %346 = call i32 @archive_entry_size(%struct.archive_entry* %345)
  %347 = call i32 @assertEqualInt(i32 %346, i64 -1)
  %348 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %349 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %348)
  %350 = call i32 @assertEqualInt(i32 %349, i64 0)
  %351 = load %struct.archive*, %struct.archive** %4, align 8
  %352 = load %struct.archive*, %struct.archive** %4, align 8
  %353 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %352)
  %354 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %355 = call i32 @assertEqualIntA(%struct.archive* %351, i32 %353, i32 %354)
  %356 = load %struct.archive*, %struct.archive** %4, align 8
  %357 = load i32, i32* @ARCHIVE_OK, align 4
  %358 = load %struct.archive*, %struct.archive** %4, align 8
  %359 = call i32 @archive_read_next_header(%struct.archive* %358, %struct.archive_entry** %3)
  %360 = call i32 @assertEqualIntA(%struct.archive* %356, i32 %357, i32 %359)
  %361 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %362 = call i32 @archive_entry_pathname(%struct.archive_entry* %361)
  %363 = call i32 @assertEqualString(i32 %362, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %364 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %365 = call i32 @archive_entry_size(%struct.archive_entry* %364)
  %366 = call i32 @assertEqualInt(i32 %365, i64 9223372036854775807)
  %367 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %368 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %367)
  %369 = call i32 @assertEqualInt(i32 %368, i64 0)
  %370 = load %struct.archive*, %struct.archive** %4, align 8
  %371 = load %struct.archive*, %struct.archive** %4, align 8
  %372 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %371)
  %373 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %374 = call i32 @assertEqualIntA(%struct.archive* %370, i32 %372, i32 %373)
  %375 = load %struct.archive*, %struct.archive** %4, align 8
  %376 = load i32, i32* @ARCHIVE_OK, align 4
  %377 = load %struct.archive*, %struct.archive** %4, align 8
  %378 = call i32 @archive_read_next_header(%struct.archive* %377, %struct.archive_entry** %3)
  %379 = call i32 @assertEqualIntA(%struct.archive* %375, i32 %376, i32 %378)
  %380 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %381 = call i32 @archive_entry_pathname(%struct.archive_entry* %380)
  %382 = call i32 @assertEqualString(i32 %381, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %383 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %384 = call i32 @archive_entry_size(%struct.archive_entry* %383)
  %385 = call i32 @assertEqualInt(i32 %384, i64 9223372036854775807)
  %386 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %387 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %386)
  %388 = call i32 @assertEqualInt(i32 %387, i64 0)
  %389 = load %struct.archive*, %struct.archive** %4, align 8
  %390 = load %struct.archive*, %struct.archive** %4, align 8
  %391 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %390)
  %392 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %393 = call i32 @assertEqualIntA(%struct.archive* %389, i32 %391, i32 %392)
  %394 = load %struct.archive*, %struct.archive** %4, align 8
  %395 = load i32, i32* @ARCHIVE_OK, align 4
  %396 = load %struct.archive*, %struct.archive** %4, align 8
  %397 = call i32 @archive_read_next_header(%struct.archive* %396, %struct.archive_entry** %3)
  %398 = call i32 @assertEqualIntA(%struct.archive* %394, i32 %395, i32 %397)
  %399 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %400 = call i32 @archive_entry_pathname(%struct.archive_entry* %399)
  %401 = call i32 @assertEqualString(i32 %400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %402 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %403 = call i32 @archive_entry_mtime(%struct.archive_entry* %402)
  %404 = sext i32 %403 to i64
  store i64 %404, i64* %6, align 8
  %405 = load i64, i64* %6, align 8
  %406 = icmp sle i64 %405, 0
  %407 = zext i1 %406 to i32
  %408 = call i32 @assert(i32 %407)
  %409 = load i64, i64* %6, align 8
  %410 = sub nsw i64 %409, 1
  store volatile i64 %410, i64* %7, align 8
  %411 = load volatile i64, i64* %7, align 8
  %412 = icmp sgt i64 %411, 0
  %413 = zext i1 %412 to i32
  %414 = call i32 @assert(i32 %413)
  %415 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %416 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %415)
  %417 = call i32 @assertEqualInt(i32 %416, i64 0)
  %418 = load %struct.archive*, %struct.archive** %4, align 8
  %419 = load %struct.archive*, %struct.archive** %4, align 8
  %420 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %419)
  %421 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %422 = call i32 @assertEqualIntA(%struct.archive* %418, i32 %420, i32 %421)
  %423 = load %struct.archive*, %struct.archive** %4, align 8
  %424 = load i32, i32* @ARCHIVE_OK, align 4
  %425 = load %struct.archive*, %struct.archive** %4, align 8
  %426 = call i32 @archive_read_next_header(%struct.archive* %425, %struct.archive_entry** %3)
  %427 = call i32 @assertEqualIntA(%struct.archive* %423, i32 %424, i32 %426)
  %428 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %429 = call i32 @archive_entry_pathname(%struct.archive_entry* %428)
  %430 = call i32 @assertEqualString(i32 %429, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %431 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %432 = call i32 @archive_entry_mtime(%struct.archive_entry* %431)
  %433 = load i64, i64* %6, align 8
  %434 = call i32 @assertEqualInt(i32 %432, i64 %433)
  %435 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %436 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %435)
  %437 = call i32 @assertEqualInt(i32 %436, i64 0)
  %438 = load %struct.archive*, %struct.archive** %4, align 8
  %439 = load %struct.archive*, %struct.archive** %4, align 8
  %440 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %439)
  %441 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %442 = call i32 @assertEqualIntA(%struct.archive* %438, i32 %440, i32 %441)
  %443 = load %struct.archive*, %struct.archive** %4, align 8
  %444 = load i32, i32* @ARCHIVE_EOF, align 4
  %445 = load %struct.archive*, %struct.archive** %4, align 8
  %446 = call i32 @archive_read_next_header(%struct.archive* %445, %struct.archive_entry** %3)
  %447 = call i32 @assertEqualIntA(%struct.archive* %443, i32 %444, i32 %446)
  %448 = load %struct.archive*, %struct.archive** %4, align 8
  %449 = call i64 @archive_file_count(%struct.archive* %448)
  %450 = call i32 @assertEqualInt(i32 20, i64 %449)
  %451 = load i32, i32* @ARCHIVE_OK, align 4
  %452 = load %struct.archive*, %struct.archive** %4, align 8
  %453 = call i64 @archive_read_close(%struct.archive* %452)
  %454 = call i32 @assertEqualInt(i32 %451, i64 %453)
  %455 = load i32, i32* @ARCHIVE_OK, align 4
  %456 = load %struct.archive*, %struct.archive** %4, align 8
  %457 = call i64 @archive_read_free(%struct.archive* %456)
  %458 = call i32 @assertEqualInt(i32 %455, i64 %457)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @extract_reference_file(i8*) #2

declare dso_local i32 @assertMakeDir(i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #2

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @assertEqualInt(i32, i64) #2

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @archive_format(%struct.archive*) #2

declare dso_local i32 @assertEqualString(i32, i8*) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #2

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i32) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #2

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #2

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i64 @archive_file_count(%struct.archive*) #2

declare dso_local i64 @archive_read_close(%struct.archive*) #2

declare dso_local i64 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
