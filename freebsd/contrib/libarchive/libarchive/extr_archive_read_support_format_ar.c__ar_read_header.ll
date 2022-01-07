; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c__ar_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c__ar_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }
%struct.archive_entry = type { i32 }
%struct.ar = type { i8*, i64, i64 }

@AR_name_size = common dso_local global i32 0, align 4
@AR_fmag_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"`\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Incorrect file header signature\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@AR_name_offset = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_AR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"#1/\00", align 1
@ARCHIVE_FORMAT_AR_BSD = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_AR_GNU = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"__.SYMDEF\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ar (GNU/SVR4)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ar (BSD)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Found entry with empty filename\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@AR_size_offset = common dso_local global i32 0, align 4
@AR_size_size = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Filename table too large\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Invalid string table\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"More than one string tables exist\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Can't allocate filename table buffer\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Can't find long filename for GNU/SVR4 archive entry\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Bad input file size\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Truncated input file\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Can't allocate fname buffer\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"/SYM64/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.ar*, i8*, i64*)* @_ar_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ar_read_header(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.ar* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.ar*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %8, align 8
  store %struct.ar* %2, %struct.ar** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load i32, i32* @AR_name_size, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @AR_fmag_offset, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  %34 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %35 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %34, i32 0, i32 0
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @archive_set_error(%struct.TYPE_2__* %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

39:                                               ; preds = %5
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @AR_name_offset, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* @AR_name_size, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 @strncpy(i8* %26, i8* %43, i64 %45)
  %47 = load i32, i32* @AR_name_size, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %26, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %51 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ARCHIVE_FORMAT_AR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %39
  %57 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i64, i64* @ARCHIVE_FORMAT_AR_BSD, align 8
  %61 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %62 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %82

64:                                               ; preds = %56
  %65 = call i32* @strchr(i8* %26, i8 signext 47)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* @ARCHIVE_FORMAT_AR_GNU, align 8
  %69 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %70 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  br label %81

72:                                               ; preds = %64
  %73 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i64, i64* @ARCHIVE_FORMAT_AR_BSD, align 8
  %77 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %78 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %67
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %39
  %84 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %85 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ARCHIVE_FORMAT_AR_GNU, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %92 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %93, align 8
  br label %110

94:                                               ; preds = %83
  %95 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %96 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ARCHIVE_FORMAT_AR_BSD, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %103 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %104, align 8
  br label %109

105:                                              ; preds = %94
  %106 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %107 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32, i32* @AR_name_size, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %26, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  store i8* %114, i8** %17, align 8
  br label %115

115:                                              ; preds = %125, %110
  %116 = load i8*, i8** %17, align 8
  %117 = icmp uge i8* %116, %26
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i8*, i8** %17, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 32
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i1 [ false, %115 ], [ %122, %118 ]
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  %126 = load i8*, i8** %17, align 8
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %17, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %128, i8** %17, align 8
  br label %115

129:                                              ; preds = %123
  %130 = getelementptr inbounds i8, i8* %26, i64 0
  %131 = load i8, i8* %130, align 16
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 47
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load i8*, i8** %17, align 8
  %136 = icmp ugt i8* %135, %26
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i8*, i8** %17, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 47
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i8*, i8** %17, align 8
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %142, %137, %134, %129
  %145 = load i8*, i8** %17, align 8
  %146 = icmp ult i8* %145, %26
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %149 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %148, i32 0, i32 0
  %150 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %151 = call i32 @archive_set_error(%struct.TYPE_2__* %149, i32 %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %152, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

153:                                              ; preds = %144
  %154 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %257

156:                                              ; preds = %153
  %157 = load %struct.ar*, %struct.ar** %9, align 8
  %158 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @ar_parse_common_header(%struct.ar* %157, %struct.archive_entry* %158, i8* %159)
  %161 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %162 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %161, i8* %26)
  %163 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %164 = load i32, i32* @AE_IFREG, align 4
  %165 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %163, i32 %164)
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* @AR_size_offset, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* @AR_size_size, align 4
  %171 = call i32 @ar_atol10(i8* %169, i32 %170)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @SIZE_MAX, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %156
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %176, 1073741824
  br i1 %177, label %178, label %184

178:                                              ; preds = %175, %156
  %179 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %180 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %179, i32 0, i32 0
  %181 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %182 = call i32 @archive_set_error(%struct.TYPE_2__* %180, i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %183, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

184:                                              ; preds = %175
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %16, align 8
  %187 = load i64, i64* %16, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %191 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %190, i32 0, i32 0
  %192 = load i32, i32* @EINVAL, align 4
  %193 = call i32 @archive_set_error(%struct.TYPE_2__* %191, i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %194 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %194, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

195:                                              ; preds = %184
  %196 = load %struct.ar*, %struct.ar** %9, align 8
  %197 = getelementptr inbounds %struct.ar, %struct.ar* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %202 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %201, i32 0, i32 0
  %203 = load i32, i32* @EINVAL, align 4
  %204 = call i32 @archive_set_error(%struct.TYPE_2__* %202, i32 %203, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %205 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %205, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

206:                                              ; preds = %195
  %207 = load i64, i64* %16, align 8
  %208 = call i8* @malloc(i64 %207)
  store i8* %208, i8** %18, align 8
  %209 = load i8*, i8** %18, align 8
  %210 = icmp eq i8* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %213 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %212, i32 0, i32 0
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = call i32 @archive_set_error(%struct.TYPE_2__* %213, i32 %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %216 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %216, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

217:                                              ; preds = %206
  %218 = load i8*, i8** %18, align 8
  %219 = load %struct.ar*, %struct.ar** %9, align 8
  %220 = getelementptr inbounds %struct.ar, %struct.ar* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load %struct.ar*, %struct.ar** %9, align 8
  %223 = getelementptr inbounds %struct.ar, %struct.ar* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load i64*, i64** %11, align 8
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %217
  %228 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %229 = load i64*, i64** %11, align 8
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @__archive_read_consume(%struct.archive_read* %228, i64 %230)
  %232 = load i64*, i64** %11, align 8
  store i64 0, i64* %232, align 8
  br label %233

233:                                              ; preds = %227, %217
  %234 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %235 = load i64, i64* %16, align 8
  %236 = call i8* @__archive_read_ahead(%struct.archive_read* %234, i64 %235, i32* null)
  store i8* %236, i8** %19, align 8
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %239, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

240:                                              ; preds = %233
  %241 = load i8*, i8** %18, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = load i64, i64* %16, align 8
  %244 = call i32 @memcpy(i8* %241, i8* %242, i64 %243)
  %245 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %246 = load i64, i64* %16, align 8
  %247 = call i32 @__archive_read_consume(%struct.archive_read* %245, i64 %246)
  %248 = load %struct.ar*, %struct.ar** %9, align 8
  %249 = getelementptr inbounds %struct.ar, %struct.ar* %248, i32 0, i32 2
  store i64 0, i64* %249, align 8
  %250 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %251 = load %struct.ar*, %struct.ar** %9, align 8
  %252 = getelementptr inbounds %struct.ar, %struct.ar* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @archive_entry_set_size(%struct.archive_entry* %250, i64 %253)
  %255 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %256 = call i32 @ar_parse_gnu_filename_table(%struct.archive_read* %255)
  store i32 %256, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

257:                                              ; preds = %153
  %258 = getelementptr inbounds i8, i8* %26, i64 0
  %259 = load i8, i8* %258, align 16
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 47
  br i1 %261, label %262, label %317

262:                                              ; preds = %257
  %263 = getelementptr inbounds i8, i8* %26, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp sge i32 %265, 48
  br i1 %266, label %267, label %317

267:                                              ; preds = %262
  %268 = getelementptr inbounds i8, i8* %26, i64 1
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp sle i32 %270, 57
  br i1 %271, label %272, label %317

272:                                              ; preds = %267
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* @AR_name_offset, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  %278 = load i32, i32* @AR_name_size, align 4
  %279 = sub nsw i32 %278, 1
  %280 = call i32 @ar_atol10(i8* %277, i32 %279)
  store i32 %280, i32* %14, align 4
  %281 = load %struct.ar*, %struct.ar** %9, align 8
  %282 = getelementptr inbounds %struct.ar, %struct.ar* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = icmp eq i8* %283, null
  br i1 %284, label %292, label %285

285:                                              ; preds = %272
  %286 = load i32, i32* %14, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.ar*, %struct.ar** %9, align 8
  %289 = getelementptr inbounds %struct.ar, %struct.ar* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = icmp uge i64 %287, %290
  br i1 %291, label %292, label %304

292:                                              ; preds = %285, %272
  %293 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %294 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %293, i32 0, i32 0
  %295 = load i32, i32* @EINVAL, align 4
  %296 = call i32 @archive_set_error(%struct.TYPE_2__* %294, i32 %295, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %297 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %298 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %297, i8* %26)
  %299 = load %struct.ar*, %struct.ar** %9, align 8
  %300 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %301 = load i8*, i8** %10, align 8
  %302 = call i32 @ar_parse_common_header(%struct.ar* %299, %struct.archive_entry* %300, i8* %301)
  %303 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %303, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

304:                                              ; preds = %285
  %305 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %306 = load %struct.ar*, %struct.ar** %9, align 8
  %307 = getelementptr inbounds %struct.ar, %struct.ar* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %305, i8* %311)
  %313 = load %struct.ar*, %struct.ar** %9, align 8
  %314 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %315 = load i8*, i8** %10, align 8
  %316 = call i32 @ar_parse_common_header(%struct.ar* %313, %struct.archive_entry* %314, i8* %315)
  store i32 %316, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

317:                                              ; preds = %267, %262, %257
  %318 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %415

320:                                              ; preds = %317
  %321 = load %struct.ar*, %struct.ar** %9, align 8
  %322 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %323 = load i8*, i8** %10, align 8
  %324 = call i32 @ar_parse_common_header(%struct.ar* %321, %struct.archive_entry* %322, i8* %323)
  %325 = load i8*, i8** %10, align 8
  %326 = load i32, i32* @AR_name_offset, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = getelementptr inbounds i8, i8* %328, i64 3
  %330 = load i32, i32* @AR_name_size, align 4
  %331 = sub nsw i32 %330, 3
  %332 = call i32 @ar_atol10(i8* %329, i32 %331)
  store i32 %332, i32* %14, align 4
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* @SIZE_MAX, align 4
  %335 = sub nsw i32 %334, 1
  %336 = icmp sgt i32 %333, %335
  br i1 %336, label %347, label %337

337:                                              ; preds = %320
  %338 = load i32, i32* %14, align 4
  %339 = icmp sgt i32 %338, 1048576
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = load i32, i32* %14, align 4
  %342 = sext i32 %341 to i64
  %343 = load %struct.ar*, %struct.ar** %9, align 8
  %344 = getelementptr inbounds %struct.ar, %struct.ar* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = icmp sgt i64 %342, %345
  br i1 %346, label %347, label %353

347:                                              ; preds = %340, %337, %320
  %348 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %349 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %348, i32 0, i32 0
  %350 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %351 = call i32 @archive_set_error(%struct.TYPE_2__* %349, i32 %350, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %352 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %352, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

353:                                              ; preds = %340
  %354 = load i32, i32* %14, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %15, align 8
  %356 = load i64, i64* %15, align 8
  %357 = load %struct.ar*, %struct.ar** %9, align 8
  %358 = getelementptr inbounds %struct.ar, %struct.ar* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = sub i64 %359, %356
  store i64 %360, i64* %358, align 8
  %361 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %362 = load %struct.ar*, %struct.ar** %9, align 8
  %363 = getelementptr inbounds %struct.ar, %struct.ar* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @archive_entry_set_size(%struct.archive_entry* %361, i64 %364)
  %366 = load i64*, i64** %11, align 8
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %353
  %370 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %371 = load i64*, i64** %11, align 8
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @__archive_read_consume(%struct.archive_read* %370, i64 %372)
  %374 = load i64*, i64** %11, align 8
  store i64 0, i64* %374, align 8
  br label %375

375:                                              ; preds = %369, %353
  %376 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %377 = load i64, i64* %15, align 8
  %378 = call i8* @__archive_read_ahead(%struct.archive_read* %376, i64 %377, i32* null)
  store i8* %378, i8** %19, align 8
  %379 = icmp eq i8* %378, null
  br i1 %379, label %380, label %386

380:                                              ; preds = %375
  %381 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %382 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %381, i32 0, i32 0
  %383 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %384 = call i32 @archive_set_error(%struct.TYPE_2__* %382, i32 %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %385 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %385, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

386:                                              ; preds = %375
  %387 = load i64, i64* %15, align 8
  %388 = add i64 %387, 1
  %389 = call i8* @malloc(i64 %388)
  store i8* %389, i8** %17, align 8
  %390 = load i8*, i8** %17, align 8
  %391 = icmp eq i8* %390, null
  br i1 %391, label %392, label %398

392:                                              ; preds = %386
  %393 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %394 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %393, i32 0, i32 0
  %395 = load i32, i32* @ENOMEM, align 4
  %396 = call i32 @archive_set_error(%struct.TYPE_2__* %394, i32 %395, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %397 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %397, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

398:                                              ; preds = %386
  %399 = load i8*, i8** %17, align 8
  %400 = load i8*, i8** %19, align 8
  %401 = load i64, i64* %15, align 8
  %402 = call i32 @strncpy(i8* %399, i8* %400, i64 %401)
  %403 = load i8*, i8** %17, align 8
  %404 = load i64, i64* %15, align 8
  %405 = getelementptr inbounds i8, i8* %403, i64 %404
  store i8 0, i8* %405, align 1
  %406 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %407 = load i64, i64* %15, align 8
  %408 = call i32 @__archive_read_consume(%struct.archive_read* %406, i64 %407)
  %409 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %410 = load i8*, i8** %17, align 8
  %411 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %409, i8* %410)
  %412 = load i8*, i8** %17, align 8
  %413 = call i32 @free(i8* %412)
  %414 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %414, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

415:                                              ; preds = %317
  %416 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %415
  %419 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %418, %415
  %422 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %423 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %422, i8* %26)
  %424 = load %struct.ar*, %struct.ar** %9, align 8
  %425 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %426 = load i8*, i8** %10, align 8
  %427 = call i32 @ar_parse_common_header(%struct.ar* %424, %struct.archive_entry* %425, i8* %426)
  store i32 %427, i32* %20, align 4
  %428 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %429 = load i32, i32* @AE_IFREG, align 4
  %430 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %428, i32 %429)
  %431 = load i32, i32* %20, align 4
  store i32 %431, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

432:                                              ; preds = %418
  %433 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %432
  %436 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %437 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %436, i8* %26)
  %438 = load %struct.ar*, %struct.ar** %9, align 8
  %439 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %440 = load i8*, i8** %10, align 8
  %441 = call i32 @ar_parse_common_header(%struct.ar* %438, %struct.archive_entry* %439, i8* %440)
  store i32 %441, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

442:                                              ; preds = %432
  %443 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %444 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %443, i8* %26)
  %445 = load %struct.ar*, %struct.ar** %9, align 8
  %446 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %447 = load i8*, i8** %10, align 8
  %448 = call i32 @ar_parse_common_header(%struct.ar* %445, %struct.archive_entry* %446, i8* %447)
  store i32 %448, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %449

449:                                              ; preds = %442, %435, %421, %398, %392, %380, %347, %304, %292, %240, %238, %211, %200, %189, %178, %147, %33
  %450 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %450)
  %451 = load i32, i32* %6, align 4
  ret i32 %451
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ar_parse_common_header(%struct.ar*, %struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #2

declare dso_local i32 @ar_atol10(i8*, i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #2

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #2

declare dso_local i32 @ar_parse_gnu_filename_table(%struct.archive_read*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
