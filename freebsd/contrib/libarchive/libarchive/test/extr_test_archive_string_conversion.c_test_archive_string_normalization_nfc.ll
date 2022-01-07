; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_test_archive_string_normalization_nfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_test_archive_string_normalization_nfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_string = type { i8* }
%struct.archive_mstring = type { i32 }
%struct.archive_string_conv = type { i32 }

@SCONV_SET_OPT_NORMALIZATION_C = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [108 x i8] c"A test of string normalization for NFC requires a suitable locale; en_US.UTF-8 not available on this system\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"NFD(%s) should be converted to NFC(%s):%d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"NFC(%s) should not be any changed:%d\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"UTF-8 NFD(%s) should be converted to WCS NFC(%s):%d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"WCS NFC(%s) should be UTF-8 NFC:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_archive_string_normalization_nfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_archive_string_normalization_nfc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_string, align 8
  %6 = alloca %struct.archive_mstring, align 4
  %7 = alloca %struct.archive_string_conv*, align 8
  %8 = alloca %struct.archive_string_conv*, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca %struct.archive_string_conv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [80 x i8], align 16
  %18 = alloca [80 x i8], align 16
  %19 = alloca [80 x i8], align 16
  %20 = alloca [80 x i8], align 16
  %21 = alloca [80 x i8], align 16
  %22 = alloca [80 x i8], align 16
  %23 = alloca [80 x i8], align 16
  %24 = alloca [80 x i8], align 16
  %25 = alloca [40 x i32], align 16
  %26 = alloca [40 x i32], align 16
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %13, align 4
  %32 = load i32, i32* @SCONV_SET_OPT_NORMALIZATION_C, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @LC_ALL, align 4
  %34 = call i32* @setlocale(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32* null, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = call i32 (...) @is_wc_unicode()
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 @skipping(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0))
  br label %296

45:                                               ; preds = %40, %1
  %46 = call i32 @archive_string_init(%struct.archive_string* %5)
  %47 = call i32 @memset(%struct.archive_mstring* %6, i32 0, i32 4)
  %48 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %48, %struct.archive** %3, align 8
  %49 = icmp ne %struct.archive* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %53, %struct.archive_string_conv** %7, align 8
  %54 = icmp ne %struct.archive_string_conv* null, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assertA(i32 %55)
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %58, %struct.archive_string_conv** %9, align 8
  %59 = icmp ne %struct.archive_string_conv* null, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assertA(i32 %60)
  %62 = load %struct.archive*, %struct.archive** %3, align 8
  %63 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %63, %struct.archive_string_conv** %10, align 8
  %64 = icmp ne %struct.archive_string_conv* null, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assertA(i32 %65)
  %67 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %67, %struct.archive** %4, align 8
  %68 = icmp ne %struct.archive* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.archive*, %struct.archive** %4, align 8
  %72 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %72, %struct.archive_string_conv** %8, align 8
  %73 = icmp ne %struct.archive_string_conv* null, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assertA(i32 %74)
  %76 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %77 = icmp eq %struct.archive_string_conv* %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %45
  %79 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %80 = icmp eq %struct.archive_string_conv* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %83 = icmp eq %struct.archive_string_conv* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %86 = icmp eq %struct.archive_string_conv* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84, %81, %78, %45
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_read_free(%struct.archive* %89)
  %91 = call i32 @assertEqualInt(i32 %88, i32 %90)
  br label %296

92:                                               ; preds = %84
  %93 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %93, i32 %94)
  %96 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %96, i32 %97)
  %99 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %99, i32 %100)
  %102 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %102, i32 %103)
  %105 = load i8*, i8** %2, align 8
  %106 = call i32* @fopen(i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %106, i32** %11, align 8
  %107 = icmp ne i32* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  br label %110

110:                                              ; preds = %282, %141, %128, %122, %92
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %112 = load i32*, i32** %11, align 8
  %113 = call i32* @fgets(i8* %111, i32 512, i32* %112)
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %283

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  %118 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %119 = load i8, i8* %118, align 16
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 35
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %110

123:                                              ; preds = %115
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %125 = call i8* @strchr(i8* %124, i8 signext 59)
  store i8* %125, i8** %28, align 8
  %126 = load i8*, i8** %28, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %110

129:                                              ; preds = %123
  %130 = load i8*, i8** %28, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %28, align 8
  store i8 0, i8* %130, align 1
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %134 = call i32 @strncpy(i8* %132, i8* %133, i32 79)
  %135 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 79
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %28, align 8
  store i8* %136, i8** %27, align 8
  %137 = load i8*, i8** %28, align 8
  %138 = call i8* @strchr(i8* %137, i8 signext 10)
  store i8* %138, i8** %28, align 8
  %139 = load i8*, i8** %28, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %110

142:                                              ; preds = %129
  %143 = load i8*, i8** %28, align 8
  store i8 0, i8* %143, align 1
  %144 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %145 = load i8*, i8** %27, align 8
  %146 = call i32 @strncpy(i8* %144, i8* %145, i32 79)
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 79
  store i8 0, i8* %147, align 1
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %149 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %150 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %151 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %153 = call i32 @scan_unicode_pattern(i8* %148, i32* %149, i8* %150, i8* %151, i8* %152, i32 0)
  %154 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %155 = getelementptr inbounds [40 x i32], [40 x i32]* %26, i64 0, i64 0
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %158 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %159 = call i32 @scan_unicode_pattern(i8* %154, i32* %155, i8* %156, i8* %157, i8* %158, i32 0)
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %221

162:                                              ; preds = %142
  %163 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %164 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %165 = call i32 @archive_strcpy_l(%struct.archive_string* %5, i8* %163, %struct.archive_string_conv* %164)
  %166 = call i32 @assertEqualInt(i32 0, i32 %165)
  %167 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %168 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %169 = load i32, i32* %13, align 4
  %170 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %167, i8* %168, i32 %169)
  %171 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %172 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @assertEqualUTF8String(i8* %171, i8* %173)
  %175 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %176 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %177 = call i32 @archive_strcpy_l(%struct.archive_string* %5, i8* %175, %struct.archive_string_conv* %176)
  %178 = call i32 @assertEqualInt(i32 0, i32 %177)
  %179 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %180 = load i32, i32* %13, align 4
  %181 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %179, i32 %180)
  %182 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %183 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @assertEqualUTF8String(i8* %182, i8* %184)
  %186 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %187 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %188 = call i32 @archive_strcpy_l(%struct.archive_string* %5, i8* %186, %struct.archive_string_conv* %187)
  %189 = call i32 @assertEqualInt(i32 0, i32 %188)
  %190 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %191 = load i32, i32* %13, align 4
  %192 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %190, i32 %191)
  %193 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %194 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @assertEqualUTF8String(i8* %193, i8* %195)
  %197 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %198 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %199 = call i32 @archive_strncpy_l(%struct.archive_string* %5, i8* %197, i32 100000, %struct.archive_string_conv* %198)
  %200 = call i32 @assertEqualInt(i32 0, i32 %199)
  %201 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %202 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %203 = load i32, i32* %13, align 4
  %204 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %201, i8* %202, i32 %203)
  %205 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %206 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @assertEqualUTF8String(i8* %205, i8* %207)
  %209 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %210 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %211 = call i32 @archive_strncpy_l(%struct.archive_string* %5, i8* %209, i32 100000, %struct.archive_string_conv* %210)
  %212 = call i32 @assertEqualInt(i32 0, i32 %211)
  %213 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %214 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %215 = load i32, i32* %13, align 4
  %216 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %213, i8* %214, i32 %215)
  %217 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %218 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @assertEqualUTF8String(i8* %217, i8* %219)
  br label %221

221:                                              ; preds = %162, %142
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %282

227:                                              ; preds = %224, %221
  %228 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %229 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %230 = call i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %6, i8* %228, i32 100000, %struct.archive_string_conv* %229)
  %231 = call i32 @assertEqualInt(i32 0, i32 %230)
  %232 = load %struct.archive*, %struct.archive** %3, align 8
  %233 = call i32 @archive_mstring_get_wcs(%struct.archive* %232, %struct.archive_mstring* %6, i32** %29)
  %234 = call i32 @assertEqualInt(i32 0, i32 %233)
  %235 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %236 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %237 = load i32, i32* %13, align 4
  %238 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %235, i8* %236, i32 %237)
  %239 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %240 = load i32*, i32** %29, align 8
  %241 = call i32 @assertEqualWString(i32* %239, i32* %240)
  %242 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %243 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %244 = call i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %6, i8* %242, i32 100000, %struct.archive_string_conv* %243)
  %245 = call i32 @assertEqualInt(i32 0, i32 %244)
  %246 = load %struct.archive*, %struct.archive** %3, align 8
  %247 = call i32 @archive_mstring_get_wcs(%struct.archive* %246, %struct.archive_mstring* %6, i32** %29)
  %248 = call i32 @assertEqualInt(i32 0, i32 %247)
  %249 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %250 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %251 = load i32, i32* %13, align 4
  %252 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %249, i8* %250, i32 %251)
  %253 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %254 = load i32*, i32** %29, align 8
  %255 = call i32 @assertEqualWString(i32* %253, i32* %254)
  %256 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %257 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %258 = call i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %6, i8* %256, i32 100000, %struct.archive_string_conv* %257)
  %259 = call i32 @assertEqualInt(i32 0, i32 %258)
  %260 = load %struct.archive*, %struct.archive** %3, align 8
  %261 = call i32 @archive_mstring_get_wcs(%struct.archive* %260, %struct.archive_mstring* %6, i32** %29)
  %262 = call i32 @assertEqualInt(i32 0, i32 %261)
  %263 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %264 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %265 = load i32, i32* %13, align 4
  %266 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %263, i8* %264, i32 %265)
  %267 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %268 = load i32*, i32** %29, align 8
  %269 = call i32 @assertEqualWString(i32* %267, i32* %268)
  %270 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %271 = call i32 @archive_mstring_copy_wcs(%struct.archive_mstring* %6, i32* %270)
  %272 = call i32 @assertEqualInt(i32 0, i32 %271)
  %273 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %274 = call i32 @archive_mstring_get_mbs_l(%struct.archive_mstring* %6, i8** %30, i64* %31, %struct.archive_string_conv* %273)
  %275 = call i32 @assertEqualInt(i32 0, i32 %274)
  %276 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %277 = load i32, i32* %13, align 4
  %278 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %276, i32 %277)
  %279 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %280 = load i8*, i8** %30, align 8
  %281 = call i32 @assertEqualUTF8String(i8* %279, i8* %280)
  br label %282

282:                                              ; preds = %227, %224
  br label %110

283:                                              ; preds = %110
  %284 = call i32 @archive_string_free(%struct.archive_string* %5)
  %285 = call i32 @archive_mstring_clean(%struct.archive_mstring* %6)
  %286 = load i32*, i32** %11, align 8
  %287 = call i32 @fclose(i32* %286)
  %288 = load i32, i32* @ARCHIVE_OK, align 4
  %289 = load %struct.archive*, %struct.archive** %3, align 8
  %290 = call i32 @archive_read_free(%struct.archive* %289)
  %291 = call i32 @assertEqualInt(i32 %288, i32 %290)
  %292 = load i32, i32* @ARCHIVE_OK, align 4
  %293 = load %struct.archive*, %struct.archive** %4, align 8
  %294 = call i32 @archive_write_free(%struct.archive* %293)
  %295 = call i32 @assertEqualInt(i32 %292, i32 %294)
  br label %296

296:                                              ; preds = %283, %87, %43
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @is_wc_unicode(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @memset(%struct.archive_mstring*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive*, i8*, i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_string_conversion_set_opt(%struct.archive_string_conv*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @scan_unicode_pattern(i8*, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @archive_strcpy_l(%struct.archive_string*, i8*, %struct.archive_string_conv*) #1

declare dso_local i32 @failure(i8*, i8*, ...) #1

declare dso_local i32 @assertEqualUTF8String(i8*, i8*) #1

declare dso_local i32 @archive_strncpy_l(%struct.archive_string*, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring*, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_mstring_get_wcs(%struct.archive*, %struct.archive_mstring*, i32**) #1

declare dso_local i32 @assertEqualWString(i32*, i32*) #1

declare dso_local i32 @archive_mstring_copy_wcs(%struct.archive_mstring*, i32*) #1

declare dso_local i32 @archive_mstring_get_mbs_l(%struct.archive_mstring*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @archive_mstring_clean(%struct.archive_mstring*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
