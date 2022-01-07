; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_test_archive_string_normalization_mac_nfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_test_archive_string_normalization_mac_nfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_string = type { i8* }
%struct.archive_mstring = type { i32 }
%struct.archive_string_conv = type { i32 }

@SCONV_SET_OPT_NORMALIZATION_D = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [108 x i8] c"A test of string normalization for NFD requires a suitable locale; en_US.UTF-8 not available on this system\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"NFC(%s) should not be converted to NFD(%s):%d\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"NFC(%s) should be converted to NFD(%s):%d\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"NFD(%s) should not be any changed:%d\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"UTF-8 NFC(%s) should not be converted to WCS NFD(%s):%d\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"UTF-8 NFC(%s) should be converted to WCS NFD(%s):%d\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"UTF-16BE NFC(%s) should not be converted to WCS NFD(%s):%d\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"UTF-16BE NFC(%s) should be converted to WCS NFD(%s):%d\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"UTF-16LE NFC(%s) should not be converted to WCS NFD(%s):%d\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"UTF-16LE NFC(%s) should be converted to WCS NFD(%s):%d\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"WCS NFD(%s) should be UTF-8 NFD:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_archive_string_normalization_mac_nfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_archive_string_normalization_mac_nfd(i8* %0) #0 {
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
  %32 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* @SCONV_SET_OPT_NORMALIZATION_D, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @LC_ALL, align 4
  %35 = call i32* @setlocale(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32* null, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = call i32 (...) @is_wc_unicode()
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @skipping(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0))
  br label %372

46:                                               ; preds = %41, %1
  %47 = call i32 @archive_string_init(%struct.archive_string* %5)
  %48 = call i32 @memset(%struct.archive_mstring* %6, i32 0, i32 4)
  %49 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %49, %struct.archive** %3, align 8
  %50 = icmp ne %struct.archive* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.archive*, %struct.archive** %3, align 8
  %54 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %54, %struct.archive_string_conv** %7, align 8
  %55 = icmp ne %struct.archive_string_conv* null, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assertA(i32 %56)
  %58 = load %struct.archive*, %struct.archive** %3, align 8
  %59 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %59, %struct.archive_string_conv** %9, align 8
  %60 = icmp ne %struct.archive_string_conv* null, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assertA(i32 %61)
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.archive* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %64, %struct.archive_string_conv** %10, align 8
  %65 = icmp ne %struct.archive_string_conv* null, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assertA(i32 %66)
  %68 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %68, %struct.archive** %4, align 8
  %69 = icmp ne %struct.archive* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.archive*, %struct.archive** %4, align 8
  %73 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.archive_string_conv* %73, %struct.archive_string_conv** %8, align 8
  %74 = icmp ne %struct.archive_string_conv* null, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assertA(i32 %75)
  %77 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %78 = icmp eq %struct.archive_string_conv* %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %46
  %80 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %81 = icmp eq %struct.archive_string_conv* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %84 = icmp eq %struct.archive_string_conv* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %87 = icmp eq %struct.archive_string_conv* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85, %82, %79, %46
  %89 = load i32, i32* @ARCHIVE_OK, align 4
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = call i32 @archive_read_free(%struct.archive* %90)
  %92 = call i32 @assertEqualInt(i32 %89, i32 %91)
  br label %372

93:                                               ; preds = %85
  %94 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %94, i32 %95)
  %97 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %97, i32 %98)
  %100 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %100, i32 %101)
  %103 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %103, i32 %104)
  %106 = load i8*, i8** %2, align 8
  %107 = call i32* @fopen(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %107, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  br label %111

111:                                              ; preds = %358, %142, %129, %123, %93
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %113 = load i32*, i32** %11, align 8
  %114 = call i32* @fgets(i8* %112, i32 512, i32* %113)
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %359

116:                                              ; preds = %111
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  %119 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %120 = load i8, i8* %119, align 16
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 35
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %111

124:                                              ; preds = %116
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %126 = call i8* @strchr(i8* %125, i8 signext 59)
  store i8* %126, i8** %28, align 8
  %127 = load i8*, i8** %28, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %111

130:                                              ; preds = %124
  %131 = load i8*, i8** %28, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %28, align 8
  store i8 0, i8* %131, align 1
  %133 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %134 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %135 = call i32 @strncpy(i8* %133, i8* %134, i32 79)
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 79
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %28, align 8
  store i8* %137, i8** %27, align 8
  %138 = load i8*, i8** %28, align 8
  %139 = call i8* @strchr(i8* %138, i8 signext 10)
  store i8* %139, i8** %28, align 8
  %140 = load i8*, i8** %28, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %111

143:                                              ; preds = %130
  %144 = load i8*, i8** %28, align 8
  store i8 0, i8* %144, align 1
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %146 = load i8*, i8** %27, align 8
  %147 = call i32 @strncpy(i8* %145, i8* %146, i32 79)
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 79
  store i8 0, i8* %148, align 1
  %149 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %150 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %151 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %153 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %154 = call i32 @scan_unicode_pattern(i8* %149, i32* %150, i8* %151, i8* %152, i8* %153, i32 1)
  store i32 %154, i32* %32, align 4
  %155 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %156 = getelementptr inbounds [40 x i32], [40 x i32]* %26, i64 0, i64 0
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %158 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i64 0, i64 0
  %159 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %160 = call i32 @scan_unicode_pattern(i8* %155, i32* %156, i8* %157, i8* %158, i8* %159, i32 0)
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %261

163:                                              ; preds = %143
  %164 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %165 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %166 = call i32 @archive_strcpy_l(%struct.archive_string* %5, i8* %164, %struct.archive_string_conv* %165)
  %167 = call i32 @assertEqualInt(i32 0, i32 %166)
  %168 = load i32, i32* %32, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %163
  %171 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %172 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %173 = load i32, i32* %13, align 4
  %174 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %171, i8* %172, i32 %173)
  %175 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %176 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @assertEqualUTF8String(i8* %175, i8* %177)
  br label %188

179:                                              ; preds = %163
  %180 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %181 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %182 = load i32, i32* %13, align 4
  %183 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %180, i8* %181, i32 %182)
  %184 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %185 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @assertEqualUTF8String(i8* %184, i8* %186)
  br label %188

188:                                              ; preds = %179, %170
  %189 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %190 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %191 = call i32 @archive_strcpy_l(%struct.archive_string* %5, i8* %189, %struct.archive_string_conv* %190)
  %192 = call i32 @assertEqualInt(i32 0, i32 %191)
  %193 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %194 = load i32, i32* %13, align 4
  %195 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %193, i32 %194)
  %196 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %197 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @assertEqualUTF8String(i8* %196, i8* %198)
  %200 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %201 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %202 = call i32 @archive_strcpy_l(%struct.archive_string* %5, i8* %200, %struct.archive_string_conv* %201)
  %203 = call i32 @assertEqualInt(i32 0, i32 %202)
  %204 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %205 = load i32, i32* %13, align 4
  %206 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %204, i32 %205)
  %207 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %208 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @assertEqualUTF8String(i8* %207, i8* %209)
  %211 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %212 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %213 = call i32 @archive_strncpy_l(%struct.archive_string* %5, i8* %211, i32 100000, %struct.archive_string_conv* %212)
  %214 = call i32 @assertEqualInt(i32 0, i32 %213)
  %215 = load i32, i32* %32, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %188
  %218 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %219 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %220 = load i32, i32* %13, align 4
  %221 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %218, i8* %219, i32 %220)
  %222 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %223 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @assertEqualUTF8String(i8* %222, i8* %224)
  br label %235

226:                                              ; preds = %188
  %227 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %228 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %229 = load i32, i32* %13, align 4
  %230 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %227, i8* %228, i32 %229)
  %231 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %232 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @assertEqualUTF8String(i8* %231, i8* %233)
  br label %235

235:                                              ; preds = %226, %217
  %236 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %237 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %238 = call i32 @archive_strncpy_l(%struct.archive_string* %5, i8* %236, i32 100000, %struct.archive_string_conv* %237)
  %239 = call i32 @assertEqualInt(i32 0, i32 %238)
  %240 = load i32, i32* %32, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %235
  %243 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %244 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %245 = load i32, i32* %13, align 4
  %246 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %243, i8* %244, i32 %245)
  %247 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %248 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @assertEqualUTF8String(i8* %247, i8* %249)
  br label %260

251:                                              ; preds = %235
  %252 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %253 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %254 = load i32, i32* %13, align 4
  %255 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %252, i8* %253, i32 %254)
  %256 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %257 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @assertEqualUTF8String(i8* %256, i8* %258)
  br label %260

260:                                              ; preds = %251, %242
  br label %261

261:                                              ; preds = %260, %143
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %358

267:                                              ; preds = %264, %261
  %268 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %269 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %270 = call i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %6, i8* %268, i32 100000, %struct.archive_string_conv* %269)
  %271 = call i32 @assertEqualInt(i32 0, i32 %270)
  %272 = load %struct.archive*, %struct.archive** %3, align 8
  %273 = call i32 @archive_mstring_get_wcs(%struct.archive* %272, %struct.archive_mstring* %6, i32** %29)
  %274 = call i32 @assertEqualInt(i32 0, i32 %273)
  %275 = load i32, i32* %32, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %267
  %278 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %279 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %280 = load i32, i32* %13, align 4
  %281 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* %278, i8* %279, i32 %280)
  %282 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %283 = load i32*, i32** %29, align 8
  %284 = call i32 @assertEqualWString(i32* %282, i32* %283)
  br label %293

285:                                              ; preds = %267
  %286 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %287 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %288 = load i32, i32* %13, align 4
  %289 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %286, i8* %287, i32 %288)
  %290 = getelementptr inbounds [40 x i32], [40 x i32]* %26, i64 0, i64 0
  %291 = load i32*, i32** %29, align 8
  %292 = call i32 @assertEqualWString(i32* %290, i32* %291)
  br label %293

293:                                              ; preds = %285, %277
  %294 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %295 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %296 = call i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %6, i8* %294, i32 100000, %struct.archive_string_conv* %295)
  %297 = call i32 @assertEqualInt(i32 0, i32 %296)
  %298 = load %struct.archive*, %struct.archive** %3, align 8
  %299 = call i32 @archive_mstring_get_wcs(%struct.archive* %298, %struct.archive_mstring* %6, i32** %29)
  %300 = call i32 @assertEqualInt(i32 0, i32 %299)
  %301 = load i32, i32* %32, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %293
  %304 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %305 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %306 = load i32, i32* %13, align 4
  %307 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i8* %304, i8* %305, i32 %306)
  %308 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %309 = load i32*, i32** %29, align 8
  %310 = call i32 @assertEqualWString(i32* %308, i32* %309)
  br label %319

311:                                              ; preds = %293
  %312 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %313 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %314 = load i32, i32* %13, align 4
  %315 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i8* %312, i8* %313, i32 %314)
  %316 = getelementptr inbounds [40 x i32], [40 x i32]* %26, i64 0, i64 0
  %317 = load i32*, i32** %29, align 8
  %318 = call i32 @assertEqualWString(i32* %316, i32* %317)
  br label %319

319:                                              ; preds = %311, %303
  %320 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %321 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %322 = call i32 @archive_mstring_copy_mbs_len_l(%struct.archive_mstring* %6, i8* %320, i32 100000, %struct.archive_string_conv* %321)
  %323 = call i32 @assertEqualInt(i32 0, i32 %322)
  %324 = load %struct.archive*, %struct.archive** %3, align 8
  %325 = call i32 @archive_mstring_get_wcs(%struct.archive* %324, %struct.archive_mstring* %6, i32** %29)
  %326 = call i32 @assertEqualInt(i32 0, i32 %325)
  %327 = load i32, i32* %32, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %319
  %330 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %331 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %332 = load i32, i32* %13, align 4
  %333 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* %330, i8* %331, i32 %332)
  %334 = getelementptr inbounds [40 x i32], [40 x i32]* %25, i64 0, i64 0
  %335 = load i32*, i32** %29, align 8
  %336 = call i32 @assertEqualWString(i32* %334, i32* %335)
  br label %345

337:                                              ; preds = %319
  %338 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %339 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %340 = load i32, i32* %13, align 4
  %341 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i8* %338, i8* %339, i32 %340)
  %342 = getelementptr inbounds [40 x i32], [40 x i32]* %26, i64 0, i64 0
  %343 = load i32*, i32** %29, align 8
  %344 = call i32 @assertEqualWString(i32* %342, i32* %343)
  br label %345

345:                                              ; preds = %337, %329
  %346 = getelementptr inbounds [40 x i32], [40 x i32]* %26, i64 0, i64 0
  %347 = call i32 @archive_mstring_copy_wcs(%struct.archive_mstring* %6, i32* %346)
  %348 = call i32 @assertEqualInt(i32 0, i32 %347)
  %349 = load %struct.archive_string_conv*, %struct.archive_string_conv** %8, align 8
  %350 = call i32 @archive_mstring_get_mbs_l(%struct.archive_mstring* %6, i8** %30, i64* %31, %struct.archive_string_conv* %349)
  %351 = call i32 @assertEqualInt(i32 0, i32 %350)
  %352 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %353 = load i32, i32* %13, align 4
  %354 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %352, i32 %353)
  %355 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %356 = load i8*, i8** %30, align 8
  %357 = call i32 @assertEqualUTF8String(i8* %355, i8* %356)
  br label %358

358:                                              ; preds = %345, %264
  br label %111

359:                                              ; preds = %111
  %360 = call i32 @archive_string_free(%struct.archive_string* %5)
  %361 = call i32 @archive_mstring_clean(%struct.archive_mstring* %6)
  %362 = load i32*, i32** %11, align 8
  %363 = call i32 @fclose(i32* %362)
  %364 = load i32, i32* @ARCHIVE_OK, align 4
  %365 = load %struct.archive*, %struct.archive** %3, align 8
  %366 = call i32 @archive_read_free(%struct.archive* %365)
  %367 = call i32 @assertEqualInt(i32 %364, i32 %366)
  %368 = load i32, i32* @ARCHIVE_OK, align 4
  %369 = load %struct.archive*, %struct.archive** %4, align 8
  %370 = call i32 @archive_write_free(%struct.archive* %369)
  %371 = call i32 @assertEqualInt(i32 %368, i32 %370)
  br label %372

372:                                              ; preds = %359, %88, %44
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
