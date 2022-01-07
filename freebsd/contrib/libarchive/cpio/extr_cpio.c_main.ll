; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i8*, i32, i32, i32, i8**, i32, i8, i8, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i32, i32*, i32* }

@main.buff = internal global [16384 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"bsdcpio\00", align 1
@ARCHIVE_EXTRACT_NO_AUTODIR = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_SYMLINKS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_NODOTDOT = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_PERM = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_FFLAGS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_ACL = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_OWNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid blocksize: %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"odc\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Error : %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot use both -i and -%c\00", align 1
@ARCHIVE_EXTRACT_TIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot use both -o and -%c\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Cannot use both -p and -%c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Option -t requires -i\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Option -n requires -it\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Option --format requires -o\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Option -l requires -p\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"-p mode requires a target directory\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Must specify at least one of -i, -o, or -p\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cpio, align 8
  %7 = alloca %struct.cpio*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cpio* %6, %struct.cpio** %7, align 8
  %14 = load %struct.cpio*, %struct.cpio** %7, align 8
  %15 = call i32 @memset(%struct.cpio* %14, i32 0, i32 192)
  %16 = load %struct.cpio*, %struct.cpio** %7, align 8
  %17 = getelementptr inbounds %struct.cpio, %struct.cpio* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @main.buff, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.cpio*, %struct.cpio** %7, align 8
  %19 = getelementptr inbounds %struct.cpio, %struct.cpio* %18, i32 0, i32 1
  store i32 16384, i32* %19, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @lafe_setprogname(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.cpio*, %struct.cpio** %7, align 8
  %24 = getelementptr inbounds %struct.cpio, %struct.cpio* %23, i32 0, i32 2
  store i32 -1, i32* %24, align 4
  %25 = load %struct.cpio*, %struct.cpio** %7, align 8
  %26 = getelementptr inbounds %struct.cpio, %struct.cpio* %25, i32 0, i32 3
  store i32 -1, i32* %26, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load %struct.cpio*, %struct.cpio** %7, align 8
  %29 = getelementptr inbounds %struct.cpio, %struct.cpio* %28, i32 0, i32 4
  store i8** %27, i8*** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.cpio*, %struct.cpio** %7, align 8
  %32 = getelementptr inbounds %struct.cpio, %struct.cpio* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cpio*, %struct.cpio** %7, align 8
  %34 = getelementptr inbounds %struct.cpio, %struct.cpio* %33, i32 0, i32 6
  store i8 0, i8* %34, align 4
  %35 = load %struct.cpio*, %struct.cpio** %7, align 8
  %36 = getelementptr inbounds %struct.cpio, %struct.cpio* %35, i32 0, i32 30
  store i64 0, i64* %36, align 8
  %37 = load %struct.cpio*, %struct.cpio** %7, align 8
  %38 = getelementptr inbounds %struct.cpio, %struct.cpio* %37, i32 0, i32 7
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* @ARCHIVE_EXTRACT_NO_AUTODIR, align 4
  %40 = load %struct.cpio*, %struct.cpio** %7, align 8
  %41 = getelementptr inbounds %struct.cpio, %struct.cpio* %40, i32 0, i32 31
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER, align 4
  %43 = load %struct.cpio*, %struct.cpio** %7, align 8
  %44 = getelementptr inbounds %struct.cpio, %struct.cpio* %43, i32 0, i32 31
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_SYMLINKS, align 4
  %48 = load %struct.cpio*, %struct.cpio** %7, align 8
  %49 = getelementptr inbounds %struct.cpio, %struct.cpio* %48, i32 0, i32 31
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NODOTDOT, align 4
  %53 = load %struct.cpio*, %struct.cpio** %7, align 8
  %54 = getelementptr inbounds %struct.cpio, %struct.cpio* %53, i32 0, i32 31
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS, align 4
  %58 = load %struct.cpio*, %struct.cpio** %7, align 8
  %59 = getelementptr inbounds %struct.cpio, %struct.cpio* %58, i32 0, i32 31
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @ARCHIVE_EXTRACT_PERM, align 4
  %63 = load %struct.cpio*, %struct.cpio** %7, align 8
  %64 = getelementptr inbounds %struct.cpio, %struct.cpio* %63, i32 0, i32 31
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @ARCHIVE_EXTRACT_FFLAGS, align 4
  %68 = load %struct.cpio*, %struct.cpio** %7, align 8
  %69 = getelementptr inbounds %struct.cpio, %struct.cpio* %68, i32 0, i32 31
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @ARCHIVE_EXTRACT_ACL, align 4
  %73 = load %struct.cpio*, %struct.cpio** %7, align 8
  %74 = getelementptr inbounds %struct.cpio, %struct.cpio* %73, i32 0, i32 31
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = call i64 (...) @geteuid()
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %2
  %80 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %81 = load %struct.cpio*, %struct.cpio** %7, align 8
  %82 = getelementptr inbounds %struct.cpio, %struct.cpio* %81, i32 0, i32 31
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %2
  %86 = load %struct.cpio*, %struct.cpio** %7, align 8
  %87 = getelementptr inbounds %struct.cpio, %struct.cpio* %86, i32 0, i32 8
  store i32 512, i32* %87, align 8
  %88 = load %struct.cpio*, %struct.cpio** %7, align 8
  %89 = getelementptr inbounds %struct.cpio, %struct.cpio* %88, i32 0, i32 9
  store i8* null, i8** %89, align 8
  %90 = call i32* (...) @archive_match_new()
  %91 = load %struct.cpio*, %struct.cpio** %7, align 8
  %92 = getelementptr inbounds %struct.cpio, %struct.cpio* %91, i32 0, i32 28
  store i32* %90, i32** %92, align 8
  %93 = load %struct.cpio*, %struct.cpio** %7, align 8
  %94 = getelementptr inbounds %struct.cpio, %struct.cpio* %93, i32 0, i32 28
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %85
  br label %100

100:                                              ; preds = %445, %99
  %101 = load %struct.cpio*, %struct.cpio** %7, align 8
  %102 = call i32 @cpio_getopt(%struct.cpio* %101)
  store i32 %102, i32* %12, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %446

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  switch i32 %105, label %443 [
    i32 48, label %106
    i32 65, label %109
    i32 97, label %112
    i32 66, label %115
    i32 141, label %118
    i32 67, label %122
    i32 99, label %157
    i32 100, label %160
    i32 69, label %167
    i32 70, label %187
    i32 102, label %193
    i32 140, label %210
    i32 72, label %215
    i32 104, label %221
    i32 73, label %223
    i32 105, label %229
    i32 74, label %246
    i32 106, label %251
    i32 139, label %256
    i32 76, label %275
    i32 108, label %278
    i32 138, label %281
    i32 137, label %281
    i32 136, label %281
    i32 135, label %281
    i32 128, label %281
    i32 109, label %286
    i32 110, label %292
    i32 134, label %295
    i32 79, label %302
    i32 111, label %308
    i32 112, label %325
    i32 133, label %354
    i32 132, label %360
    i32 131, label %366
    i32 82, label %369
    i32 114, label %399
    i32 116, label %402
    i32 117, label %405
    i32 130, label %412
    i32 118, label %416
    i32 86, label %421
    i32 129, label %426
    i32 121, label %428
    i32 90, label %433
    i32 122, label %438
  ]

106:                                              ; preds = %104
  %107 = load %struct.cpio*, %struct.cpio** %7, align 8
  %108 = getelementptr inbounds %struct.cpio, %struct.cpio* %107, i32 0, i32 10
  store i32 1, i32* %108, align 8
  br label %445

109:                                              ; preds = %104
  %110 = load %struct.cpio*, %struct.cpio** %7, align 8
  %111 = getelementptr inbounds %struct.cpio, %struct.cpio* %110, i32 0, i32 11
  store i32 1, i32* %111, align 4
  br label %445

112:                                              ; preds = %104
  %113 = load %struct.cpio*, %struct.cpio** %7, align 8
  %114 = getelementptr inbounds %struct.cpio, %struct.cpio* %113, i32 0, i32 12
  store i32 1, i32* %114, align 8
  br label %445

115:                                              ; preds = %104
  %116 = load %struct.cpio*, %struct.cpio** %7, align 8
  %117 = getelementptr inbounds %struct.cpio, %struct.cpio* %116, i32 0, i32 8
  store i32 5120, i32* %117, align 8
  br label %445

118:                                              ; preds = %104
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.cpio*, %struct.cpio** %7, align 8
  %121 = getelementptr inbounds %struct.cpio, %struct.cpio* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 4
  br label %445

122:                                              ; preds = %104
  store i32 0, i32* @errno, align 4
  store i8* null, i8** %9, align 8
  %123 = load %struct.cpio*, %struct.cpio** %7, align 8
  %124 = getelementptr inbounds %struct.cpio, %struct.cpio* %123, i32 0, i32 14
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strtol(i8* %125, i8** %9, i32 10)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* @errno, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %13, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %130
  %134 = load %struct.cpio*, %struct.cpio** %7, align 8
  %135 = getelementptr inbounds %struct.cpio, %struct.cpio* %134, i32 0, i32 14
  %136 = load i8*, i8** %135, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %133
  %141 = load i8*, i8** %9, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** %9, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143, %140, %133, %130, %122
  %149 = load %struct.cpio*, %struct.cpio** %7, align 8
  %150 = getelementptr inbounds %struct.cpio, %struct.cpio* %149, i32 0, i32 14
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.cpio*, %struct.cpio** %7, align 8
  %156 = getelementptr inbounds %struct.cpio, %struct.cpio* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 8
  br label %445

157:                                              ; preds = %104
  %158 = load %struct.cpio*, %struct.cpio** %7, align 8
  %159 = getelementptr inbounds %struct.cpio, %struct.cpio* %158, i32 0, i32 15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %159, align 8
  br label %445

160:                                              ; preds = %104
  %161 = load i32, i32* @ARCHIVE_EXTRACT_NO_AUTODIR, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.cpio*, %struct.cpio** %7, align 8
  %164 = getelementptr inbounds %struct.cpio, %struct.cpio* %163, i32 0, i32 31
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %445

167:                                              ; preds = %104
  %168 = load %struct.cpio*, %struct.cpio** %7, align 8
  %169 = getelementptr inbounds %struct.cpio, %struct.cpio* %168, i32 0, i32 28
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.cpio*, %struct.cpio** %7, align 8
  %172 = getelementptr inbounds %struct.cpio, %struct.cpio* %171, i32 0, i32 14
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.cpio*, %struct.cpio** %7, align 8
  %175 = getelementptr inbounds %struct.cpio, %struct.cpio* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @archive_match_include_pattern_from_file(i32* %170, i8* %173, i32 %176)
  %178 = load i32, i32* @ARCHIVE_OK, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %167
  %181 = load %struct.cpio*, %struct.cpio** %7, align 8
  %182 = getelementptr inbounds %struct.cpio, %struct.cpio* %181, i32 0, i32 28
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @archive_error_string(i32* %183)
  %185 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %180, %167
  br label %445

187:                                              ; preds = %104
  %188 = load %struct.cpio*, %struct.cpio** %7, align 8
  %189 = getelementptr inbounds %struct.cpio, %struct.cpio* %188, i32 0, i32 14
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.cpio*, %struct.cpio** %7, align 8
  %192 = getelementptr inbounds %struct.cpio, %struct.cpio* %191, i32 0, i32 9
  store i8* %190, i8** %192, align 8
  br label %445

193:                                              ; preds = %104
  %194 = load %struct.cpio*, %struct.cpio** %7, align 8
  %195 = getelementptr inbounds %struct.cpio, %struct.cpio* %194, i32 0, i32 28
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.cpio*, %struct.cpio** %7, align 8
  %198 = getelementptr inbounds %struct.cpio, %struct.cpio* %197, i32 0, i32 14
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @archive_match_exclude_pattern(i32* %196, i8* %199)
  %201 = load i32, i32* @ARCHIVE_OK, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %193
  %204 = load %struct.cpio*, %struct.cpio** %7, align 8
  %205 = getelementptr inbounds %struct.cpio, %struct.cpio* %204, i32 0, i32 28
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @archive_error_string(i32* %206)
  %208 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %203, %193
  br label %445

210:                                              ; preds = %104
  %211 = load i32, i32* %12, align 4
  %212 = trunc i32 %211 to i8
  %213 = load %struct.cpio*, %struct.cpio** %7, align 8
  %214 = getelementptr inbounds %struct.cpio, %struct.cpio* %213, i32 0, i32 7
  store i8 %212, i8* %214, align 1
  br label %445

215:                                              ; preds = %104
  %216 = load %struct.cpio*, %struct.cpio** %7, align 8
  %217 = getelementptr inbounds %struct.cpio, %struct.cpio* %216, i32 0, i32 14
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.cpio*, %struct.cpio** %7, align 8
  %220 = getelementptr inbounds %struct.cpio, %struct.cpio* %219, i32 0, i32 15
  store i8* %218, i8** %220, align 8
  br label %445

221:                                              ; preds = %104
  %222 = call i32 (...) @long_help()
  br label %445

223:                                              ; preds = %104
  %224 = load %struct.cpio*, %struct.cpio** %7, align 8
  %225 = getelementptr inbounds %struct.cpio, %struct.cpio* %224, i32 0, i32 14
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.cpio*, %struct.cpio** %7, align 8
  %228 = getelementptr inbounds %struct.cpio, %struct.cpio* %227, i32 0, i32 9
  store i8* %226, i8** %228, align 8
  br label %445

229:                                              ; preds = %104
  %230 = load %struct.cpio*, %struct.cpio** %7, align 8
  %231 = getelementptr inbounds %struct.cpio, %struct.cpio* %230, i32 0, i32 6
  %232 = load i8, i8* %231, align 4
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.cpio*, %struct.cpio** %7, align 8
  %237 = getelementptr inbounds %struct.cpio, %struct.cpio* %236, i32 0, i32 6
  %238 = load i8, i8* %237, align 4
  %239 = sext i8 %238 to i32
  %240 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %235, %229
  %242 = load i32, i32* %12, align 4
  %243 = trunc i32 %242 to i8
  %244 = load %struct.cpio*, %struct.cpio** %7, align 8
  %245 = getelementptr inbounds %struct.cpio, %struct.cpio* %244, i32 0, i32 6
  store i8 %243, i8* %245, align 4
  br label %445

246:                                              ; preds = %104
  %247 = load i32, i32* %12, align 4
  %248 = trunc i32 %247 to i8
  %249 = load %struct.cpio*, %struct.cpio** %7, align 8
  %250 = getelementptr inbounds %struct.cpio, %struct.cpio* %249, i32 0, i32 7
  store i8 %248, i8* %250, align 1
  br label %445

251:                                              ; preds = %104
  %252 = load i32, i32* %12, align 4
  %253 = trunc i32 %252 to i8
  %254 = load %struct.cpio*, %struct.cpio** %7, align 8
  %255 = getelementptr inbounds %struct.cpio, %struct.cpio* %254, i32 0, i32 7
  store i8 %253, i8* %255, align 1
  br label %445

256:                                              ; preds = %104
  %257 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_SYMLINKS, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.cpio*, %struct.cpio** %7, align 8
  %260 = getelementptr inbounds %struct.cpio, %struct.cpio* %259, i32 0, i32 31
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NODOTDOT, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.cpio*, %struct.cpio** %7, align 8
  %266 = getelementptr inbounds %struct.cpio, %struct.cpio* %265, i32 0, i32 31
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS, align 4
  %270 = xor i32 %269, -1
  %271 = load %struct.cpio*, %struct.cpio** %7, align 8
  %272 = getelementptr inbounds %struct.cpio, %struct.cpio* %271, i32 0, i32 31
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %445

275:                                              ; preds = %104
  %276 = load %struct.cpio*, %struct.cpio** %7, align 8
  %277 = getelementptr inbounds %struct.cpio, %struct.cpio* %276, i32 0, i32 16
  store i32 1, i32* %277, align 8
  br label %445

278:                                              ; preds = %104
  %279 = load %struct.cpio*, %struct.cpio** %7, align 8
  %280 = getelementptr inbounds %struct.cpio, %struct.cpio* %279, i32 0, i32 17
  store i32 1, i32* %280, align 4
  br label %445

281:                                              ; preds = %104, %104, %104, %104, %104
  %282 = load i32, i32* %12, align 4
  %283 = trunc i32 %282 to i8
  %284 = load %struct.cpio*, %struct.cpio** %7, align 8
  %285 = getelementptr inbounds %struct.cpio, %struct.cpio* %284, i32 0, i32 7
  store i8 %283, i8* %285, align 1
  br label %445

286:                                              ; preds = %104
  %287 = load i32, i32* @ARCHIVE_EXTRACT_TIME, align 4
  %288 = load %struct.cpio*, %struct.cpio** %7, align 8
  %289 = getelementptr inbounds %struct.cpio, %struct.cpio* %288, i32 0, i32 31
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %445

292:                                              ; preds = %104
  %293 = load %struct.cpio*, %struct.cpio** %7, align 8
  %294 = getelementptr inbounds %struct.cpio, %struct.cpio* %293, i32 0, i32 18
  store i32 1, i32* %294, align 8
  br label %445

295:                                              ; preds = %104
  %296 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %297 = xor i32 %296, -1
  %298 = load %struct.cpio*, %struct.cpio** %7, align 8
  %299 = getelementptr inbounds %struct.cpio, %struct.cpio* %298, i32 0, i32 31
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %445

302:                                              ; preds = %104
  %303 = load %struct.cpio*, %struct.cpio** %7, align 8
  %304 = getelementptr inbounds %struct.cpio, %struct.cpio* %303, i32 0, i32 14
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.cpio*, %struct.cpio** %7, align 8
  %307 = getelementptr inbounds %struct.cpio, %struct.cpio* %306, i32 0, i32 9
  store i8* %305, i8** %307, align 8
  br label %445

308:                                              ; preds = %104
  %309 = load %struct.cpio*, %struct.cpio** %7, align 8
  %310 = getelementptr inbounds %struct.cpio, %struct.cpio* %309, i32 0, i32 6
  %311 = load i8, i8* %310, align 4
  %312 = sext i8 %311 to i32
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load %struct.cpio*, %struct.cpio** %7, align 8
  %316 = getelementptr inbounds %struct.cpio, %struct.cpio* %315, i32 0, i32 6
  %317 = load i8, i8* %316, align 4
  %318 = sext i8 %317 to i32
  %319 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %318)
  br label %320

320:                                              ; preds = %314, %308
  %321 = load i32, i32* %12, align 4
  %322 = trunc i32 %321 to i8
  %323 = load %struct.cpio*, %struct.cpio** %7, align 8
  %324 = getelementptr inbounds %struct.cpio, %struct.cpio* %323, i32 0, i32 6
  store i8 %322, i8* %324, align 4
  br label %445

325:                                              ; preds = %104
  %326 = load %struct.cpio*, %struct.cpio** %7, align 8
  %327 = getelementptr inbounds %struct.cpio, %struct.cpio* %326, i32 0, i32 6
  %328 = load i8, i8* %327, align 4
  %329 = sext i8 %328 to i32
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %325
  %332 = load %struct.cpio*, %struct.cpio** %7, align 8
  %333 = getelementptr inbounds %struct.cpio, %struct.cpio* %332, i32 0, i32 6
  %334 = load i8, i8* %333, align 4
  %335 = sext i8 %334 to i32
  %336 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %335)
  br label %337

337:                                              ; preds = %331, %325
  %338 = load i32, i32* %12, align 4
  %339 = trunc i32 %338 to i8
  %340 = load %struct.cpio*, %struct.cpio** %7, align 8
  %341 = getelementptr inbounds %struct.cpio, %struct.cpio* %340, i32 0, i32 6
  store i8 %339, i8* %341, align 4
  %342 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NODOTDOT, align 4
  %343 = xor i32 %342, -1
  %344 = load %struct.cpio*, %struct.cpio** %7, align 8
  %345 = getelementptr inbounds %struct.cpio, %struct.cpio* %344, i32 0, i32 31
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, %343
  store i32 %347, i32* %345, align 8
  %348 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS, align 4
  %349 = xor i32 %348, -1
  %350 = load %struct.cpio*, %struct.cpio** %7, align 8
  %351 = getelementptr inbounds %struct.cpio, %struct.cpio* %350, i32 0, i32 31
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 8
  br label %445

354:                                              ; preds = %104
  %355 = load %struct.cpio*, %struct.cpio** %7, align 8
  %356 = getelementptr inbounds %struct.cpio, %struct.cpio* %355, i32 0, i32 14
  %357 = load i8*, i8** %356, align 8
  %358 = load %struct.cpio*, %struct.cpio** %7, align 8
  %359 = getelementptr inbounds %struct.cpio, %struct.cpio* %358, i32 0, i32 19
  store i8* %357, i8** %359, align 8
  br label %445

360:                                              ; preds = %104
  %361 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %362 = load %struct.cpio*, %struct.cpio** %7, align 8
  %363 = getelementptr inbounds %struct.cpio, %struct.cpio* %362, i32 0, i32 31
  %364 = load i32, i32* %363, align 8
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 8
  br label %445

366:                                              ; preds = %104
  %367 = load %struct.cpio*, %struct.cpio** %7, align 8
  %368 = getelementptr inbounds %struct.cpio, %struct.cpio* %367, i32 0, i32 20
  store i32 1, i32* %368, align 8
  br label %445

369:                                              ; preds = %104
  %370 = load %struct.cpio*, %struct.cpio** %7, align 8
  %371 = getelementptr inbounds %struct.cpio, %struct.cpio* %370, i32 0, i32 14
  %372 = load i8*, i8** %371, align 8
  %373 = call i8* @owner_parse(i8* %372, i32* %10, i32* %11)
  store i8* %373, i8** %8, align 8
  %374 = load i8*, i8** %8, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %380

376:                                              ; preds = %369
  %377 = load i8*, i8** %8, align 8
  %378 = call i32 (i32, i8*, ...) @lafe_warnc(i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %377)
  %379 = call i32 (...) @usage()
  br label %380

380:                                              ; preds = %376, %369
  %381 = load i32, i32* %10, align 4
  %382 = icmp ne i32 %381, -1
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load i32, i32* %10, align 4
  %385 = load %struct.cpio*, %struct.cpio** %7, align 8
  %386 = getelementptr inbounds %struct.cpio, %struct.cpio* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 4
  %387 = load %struct.cpio*, %struct.cpio** %7, align 8
  %388 = getelementptr inbounds %struct.cpio, %struct.cpio* %387, i32 0, i32 33
  store i32* null, i32** %388, align 8
  br label %389

389:                                              ; preds = %383, %380
  %390 = load i32, i32* %11, align 4
  %391 = icmp ne i32 %390, -1
  br i1 %391, label %392, label %398

392:                                              ; preds = %389
  %393 = load i32, i32* %11, align 4
  %394 = load %struct.cpio*, %struct.cpio** %7, align 8
  %395 = getelementptr inbounds %struct.cpio, %struct.cpio* %394, i32 0, i32 3
  store i32 %393, i32* %395, align 8
  %396 = load %struct.cpio*, %struct.cpio** %7, align 8
  %397 = getelementptr inbounds %struct.cpio, %struct.cpio* %396, i32 0, i32 32
  store i32* null, i32** %397, align 8
  br label %398

398:                                              ; preds = %392, %389
  br label %445

399:                                              ; preds = %104
  %400 = load %struct.cpio*, %struct.cpio** %7, align 8
  %401 = getelementptr inbounds %struct.cpio, %struct.cpio* %400, i32 0, i32 21
  store i32 1, i32* %401, align 4
  br label %445

402:                                              ; preds = %104
  %403 = load %struct.cpio*, %struct.cpio** %7, align 8
  %404 = getelementptr inbounds %struct.cpio, %struct.cpio* %403, i32 0, i32 22
  store i32 1, i32* %404, align 8
  br label %445

405:                                              ; preds = %104
  %406 = load i32, i32* @ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER, align 4
  %407 = xor i32 %406, -1
  %408 = load %struct.cpio*, %struct.cpio** %7, align 8
  %409 = getelementptr inbounds %struct.cpio, %struct.cpio* %408, i32 0, i32 31
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, %407
  store i32 %411, i32* %409, align 8
  br label %445

412:                                              ; preds = %104
  %413 = load i32, i32* %12, align 4
  %414 = load %struct.cpio*, %struct.cpio** %7, align 8
  %415 = getelementptr inbounds %struct.cpio, %struct.cpio* %414, i32 0, i32 13
  store i32 %413, i32* %415, align 4
  br label %445

416:                                              ; preds = %104
  %417 = load %struct.cpio*, %struct.cpio** %7, align 8
  %418 = getelementptr inbounds %struct.cpio, %struct.cpio* %417, i32 0, i32 30
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %419, 1
  store i64 %420, i64* %418, align 8
  br label %445

421:                                              ; preds = %104
  %422 = load %struct.cpio*, %struct.cpio** %7, align 8
  %423 = getelementptr inbounds %struct.cpio, %struct.cpio* %422, i32 0, i32 29
  %424 = load i64, i64* %423, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* %423, align 8
  br label %445

426:                                              ; preds = %104
  %427 = call i32 (...) @version()
  br label %445

428:                                              ; preds = %104
  %429 = load i32, i32* %12, align 4
  %430 = trunc i32 %429 to i8
  %431 = load %struct.cpio*, %struct.cpio** %7, align 8
  %432 = getelementptr inbounds %struct.cpio, %struct.cpio* %431, i32 0, i32 7
  store i8 %430, i8* %432, align 1
  br label %445

433:                                              ; preds = %104
  %434 = load i32, i32* %12, align 4
  %435 = trunc i32 %434 to i8
  %436 = load %struct.cpio*, %struct.cpio** %7, align 8
  %437 = getelementptr inbounds %struct.cpio, %struct.cpio* %436, i32 0, i32 7
  store i8 %435, i8* %437, align 1
  br label %445

438:                                              ; preds = %104
  %439 = load i32, i32* %12, align 4
  %440 = trunc i32 %439 to i8
  %441 = load %struct.cpio*, %struct.cpio** %7, align 8
  %442 = getelementptr inbounds %struct.cpio, %struct.cpio* %441, i32 0, i32 7
  store i8 %440, i8* %442, align 1
  br label %445

443:                                              ; preds = %104
  %444 = call i32 (...) @usage()
  br label %445

445:                                              ; preds = %443, %438, %433, %428, %426, %421, %416, %412, %405, %402, %399, %398, %366, %360, %354, %337, %320, %302, %295, %292, %286, %281, %278, %275, %256, %251, %246, %241, %223, %221, %215, %210, %209, %187, %186, %160, %157, %153, %118, %115, %112, %109, %106
  br label %100

446:                                              ; preds = %100
  %447 = load %struct.cpio*, %struct.cpio** %7, align 8
  %448 = getelementptr inbounds %struct.cpio, %struct.cpio* %447, i32 0, i32 22
  %449 = load i32, i32* %448, align 8
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %460

451:                                              ; preds = %446
  %452 = load %struct.cpio*, %struct.cpio** %7, align 8
  %453 = getelementptr inbounds %struct.cpio, %struct.cpio* %452, i32 0, i32 6
  %454 = load i8, i8* %453, align 4
  %455 = sext i8 %454 to i32
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %451
  %458 = load %struct.cpio*, %struct.cpio** %7, align 8
  %459 = getelementptr inbounds %struct.cpio, %struct.cpio* %458, i32 0, i32 6
  store i8 105, i8* %459, align 4
  br label %460

460:                                              ; preds = %457, %451, %446
  %461 = load %struct.cpio*, %struct.cpio** %7, align 8
  %462 = getelementptr inbounds %struct.cpio, %struct.cpio* %461, i32 0, i32 22
  %463 = load i32, i32* %462, align 8
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %473

465:                                              ; preds = %460
  %466 = load %struct.cpio*, %struct.cpio** %7, align 8
  %467 = getelementptr inbounds %struct.cpio, %struct.cpio* %466, i32 0, i32 6
  %468 = load i8, i8* %467, align 4
  %469 = sext i8 %468 to i32
  %470 = icmp ne i32 %469, 105
  br i1 %470, label %471, label %473

471:                                              ; preds = %465
  %472 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %473

473:                                              ; preds = %471, %465, %460
  %474 = load %struct.cpio*, %struct.cpio** %7, align 8
  %475 = getelementptr inbounds %struct.cpio, %struct.cpio* %474, i32 0, i32 18
  %476 = load i32, i32* %475, align 8
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %473
  %479 = load %struct.cpio*, %struct.cpio** %7, align 8
  %480 = getelementptr inbounds %struct.cpio, %struct.cpio* %479, i32 0, i32 22
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %485, label %483

483:                                              ; preds = %478
  %484 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %485

485:                                              ; preds = %483, %478, %473
  %486 = load %struct.cpio*, %struct.cpio** %7, align 8
  %487 = getelementptr inbounds %struct.cpio, %struct.cpio* %486, i32 0, i32 15
  %488 = load i8*, i8** %487, align 8
  %489 = icmp ne i8* %488, null
  br i1 %489, label %490, label %498

490:                                              ; preds = %485
  %491 = load %struct.cpio*, %struct.cpio** %7, align 8
  %492 = getelementptr inbounds %struct.cpio, %struct.cpio* %491, i32 0, i32 6
  %493 = load i8, i8* %492, align 4
  %494 = sext i8 %493 to i32
  %495 = icmp ne i32 %494, 111
  br i1 %495, label %496, label %498

496:                                              ; preds = %490
  %497 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %498

498:                                              ; preds = %496, %490, %485
  %499 = load %struct.cpio*, %struct.cpio** %7, align 8
  %500 = getelementptr inbounds %struct.cpio, %struct.cpio* %499, i32 0, i32 17
  %501 = load i32, i32* %500, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %511

503:                                              ; preds = %498
  %504 = load %struct.cpio*, %struct.cpio** %7, align 8
  %505 = getelementptr inbounds %struct.cpio, %struct.cpio* %504, i32 0, i32 6
  %506 = load i8, i8* %505, align 4
  %507 = sext i8 %506 to i32
  %508 = icmp ne i32 %507, 112
  br i1 %508, label %509, label %511

509:                                              ; preds = %503
  %510 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %511

511:                                              ; preds = %509, %503, %498
  %512 = load %struct.cpio*, %struct.cpio** %7, align 8
  %513 = getelementptr inbounds %struct.cpio, %struct.cpio* %512, i32 0, i32 29
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %524

516:                                              ; preds = %511
  %517 = load %struct.cpio*, %struct.cpio** %7, align 8
  %518 = getelementptr inbounds %struct.cpio, %struct.cpio* %517, i32 0, i32 30
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %524

521:                                              ; preds = %516
  %522 = load %struct.cpio*, %struct.cpio** %7, align 8
  %523 = getelementptr inbounds %struct.cpio, %struct.cpio* %522, i32 0, i32 29
  store i64 0, i64* %523, align 8
  br label %524

524:                                              ; preds = %521, %516, %511
  %525 = load %struct.cpio*, %struct.cpio** %7, align 8
  %526 = getelementptr inbounds %struct.cpio, %struct.cpio* %525, i32 0, i32 6
  %527 = load i8, i8* %526, align 4
  %528 = sext i8 %527 to i32
  switch i32 %528, label %608 [
    i32 111, label %529
    i32 105, label %540
    i32 112, label %585
  ]

529:                                              ; preds = %524
  %530 = load %struct.cpio*, %struct.cpio** %7, align 8
  %531 = getelementptr inbounds %struct.cpio, %struct.cpio* %530, i32 0, i32 15
  %532 = load i8*, i8** %531, align 8
  %533 = icmp eq i8* %532, null
  br i1 %533, label %534, label %537

534:                                              ; preds = %529
  %535 = load %struct.cpio*, %struct.cpio** %7, align 8
  %536 = getelementptr inbounds %struct.cpio, %struct.cpio* %535, i32 0, i32 15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %536, align 8
  br label %537

537:                                              ; preds = %534, %529
  %538 = load %struct.cpio*, %struct.cpio** %7, align 8
  %539 = call i32 @mode_out(%struct.cpio* %538)
  br label %610

540:                                              ; preds = %524
  br label %541

541:                                              ; preds = %564, %540
  %542 = load %struct.cpio*, %struct.cpio** %7, align 8
  %543 = getelementptr inbounds %struct.cpio, %struct.cpio* %542, i32 0, i32 4
  %544 = load i8**, i8*** %543, align 8
  %545 = load i8*, i8** %544, align 8
  %546 = icmp ne i8* %545, null
  br i1 %546, label %547, label %573

547:                                              ; preds = %541
  %548 = load %struct.cpio*, %struct.cpio** %7, align 8
  %549 = getelementptr inbounds %struct.cpio, %struct.cpio* %548, i32 0, i32 28
  %550 = load i32*, i32** %549, align 8
  %551 = load %struct.cpio*, %struct.cpio** %7, align 8
  %552 = getelementptr inbounds %struct.cpio, %struct.cpio* %551, i32 0, i32 4
  %553 = load i8**, i8*** %552, align 8
  %554 = load i8*, i8** %553, align 8
  %555 = call i32 @archive_match_include_pattern(i32* %550, i8* %554)
  %556 = load i32, i32* @ARCHIVE_OK, align 4
  %557 = icmp ne i32 %555, %556
  br i1 %557, label %558, label %564

558:                                              ; preds = %547
  %559 = load %struct.cpio*, %struct.cpio** %7, align 8
  %560 = getelementptr inbounds %struct.cpio, %struct.cpio* %559, i32 0, i32 28
  %561 = load i32*, i32** %560, align 8
  %562 = call i32 @archive_error_string(i32* %561)
  %563 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %562)
  br label %564

564:                                              ; preds = %558, %547
  %565 = load %struct.cpio*, %struct.cpio** %7, align 8
  %566 = getelementptr inbounds %struct.cpio, %struct.cpio* %565, i32 0, i32 5
  %567 = load i32, i32* %566, align 8
  %568 = add nsw i32 %567, -1
  store i32 %568, i32* %566, align 8
  %569 = load %struct.cpio*, %struct.cpio** %7, align 8
  %570 = getelementptr inbounds %struct.cpio, %struct.cpio* %569, i32 0, i32 4
  %571 = load i8**, i8*** %570, align 8
  %572 = getelementptr inbounds i8*, i8** %571, i32 1
  store i8** %572, i8*** %570, align 8
  br label %541

573:                                              ; preds = %541
  %574 = load %struct.cpio*, %struct.cpio** %7, align 8
  %575 = getelementptr inbounds %struct.cpio, %struct.cpio* %574, i32 0, i32 22
  %576 = load i32, i32* %575, align 8
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %573
  %579 = load %struct.cpio*, %struct.cpio** %7, align 8
  %580 = call i32 @mode_list(%struct.cpio* %579)
  br label %584

581:                                              ; preds = %573
  %582 = load %struct.cpio*, %struct.cpio** %7, align 8
  %583 = call i32 @mode_in(%struct.cpio* %582)
  br label %584

584:                                              ; preds = %581, %578
  br label %610

585:                                              ; preds = %524
  %586 = load %struct.cpio*, %struct.cpio** %7, align 8
  %587 = getelementptr inbounds %struct.cpio, %struct.cpio* %586, i32 0, i32 4
  %588 = load i8**, i8*** %587, align 8
  %589 = load i8*, i8** %588, align 8
  %590 = icmp eq i8* %589, null
  br i1 %590, label %599, label %591

591:                                              ; preds = %585
  %592 = load %struct.cpio*, %struct.cpio** %7, align 8
  %593 = getelementptr inbounds %struct.cpio, %struct.cpio* %592, i32 0, i32 4
  %594 = load i8**, i8*** %593, align 8
  %595 = load i8*, i8** %594, align 8
  %596 = load i8, i8* %595, align 1
  %597 = sext i8 %596 to i32
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %591, %585
  %600 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  br label %601

601:                                              ; preds = %599, %591
  %602 = load %struct.cpio*, %struct.cpio** %7, align 8
  %603 = load %struct.cpio*, %struct.cpio** %7, align 8
  %604 = getelementptr inbounds %struct.cpio, %struct.cpio* %603, i32 0, i32 4
  %605 = load i8**, i8*** %604, align 8
  %606 = load i8*, i8** %605, align 8
  %607 = call i32 @mode_pass(%struct.cpio* %602, i8* %606)
  br label %610

608:                                              ; preds = %524
  %609 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  br label %610

610:                                              ; preds = %608, %601, %584, %537
  %611 = load %struct.cpio*, %struct.cpio** %7, align 8
  %612 = getelementptr inbounds %struct.cpio, %struct.cpio* %611, i32 0, i32 28
  %613 = load i32*, i32** %612, align 8
  %614 = call i32 @archive_match_free(i32* %613)
  %615 = load %struct.cpio*, %struct.cpio** %7, align 8
  %616 = getelementptr inbounds %struct.cpio, %struct.cpio* %615, i32 0, i32 27
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @free_cache(i32 %617)
  %619 = load %struct.cpio*, %struct.cpio** %7, align 8
  %620 = getelementptr inbounds %struct.cpio, %struct.cpio* %619, i32 0, i32 26
  %621 = load i32, i32* %620, align 8
  %622 = call i32 @free_cache(i32 %621)
  %623 = load %struct.cpio*, %struct.cpio** %7, align 8
  %624 = getelementptr inbounds %struct.cpio, %struct.cpio* %623, i32 0, i32 25
  %625 = load i32, i32* %624, align 4
  %626 = call i32 @free(i32 %625)
  %627 = load %struct.cpio*, %struct.cpio** %7, align 8
  %628 = getelementptr inbounds %struct.cpio, %struct.cpio* %627, i32 0, i32 24
  %629 = load i32, i32* %628, align 8
  %630 = call i32 @passphrase_free(i32 %629)
  %631 = load %struct.cpio*, %struct.cpio** %7, align 8
  %632 = getelementptr inbounds %struct.cpio, %struct.cpio* %631, i32 0, i32 23
  %633 = load i32, i32* %632, align 4
  ret i32 %633
}

declare dso_local i32 @memset(%struct.cpio*, i32, i32) #1

declare dso_local i32 @lafe_setprogname(i8*, i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32* @archive_match_new(...) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local i32 @cpio_getopt(%struct.cpio*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @archive_match_include_pattern_from_file(i32*, i8*, i32) #1

declare dso_local i32 @archive_error_string(i32*) #1

declare dso_local i32 @archive_match_exclude_pattern(i32*, i8*) #1

declare dso_local i32 @long_help(...) #1

declare dso_local i8* @owner_parse(i8*, i32*, i32*) #1

declare dso_local i32 @lafe_warnc(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @version(...) #1

declare dso_local i32 @mode_out(%struct.cpio*) #1

declare dso_local i32 @archive_match_include_pattern(i32*, i8*) #1

declare dso_local i32 @mode_list(%struct.cpio*) #1

declare dso_local i32 @mode_in(%struct.cpio*) #1

declare dso_local i32 @mode_pass(%struct.cpio*, i8*) #1

declare dso_local i32 @archive_match_free(i32*) #1

declare dso_local i32 @free_cache(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @passphrase_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
