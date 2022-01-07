; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdhdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.warc_s* }
%struct.warc_s = type { i32, i32, %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.archive_entry = type { i32 }
%struct.TYPE_8__ = type { i32, i8* }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bad record header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid record version\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unsupported record version: %u.%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Bad content length\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Bad record time\00", align 1
@ARCHIVE_FORMAT_WARC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"WARC/%u.%u\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@HDR_PROBE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @_warc_rdhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_rdhdr(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.warc_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.warc_s*, %struct.warc_s** %20, align 8
  store %struct.warc_s* %21, %struct.warc_s** %6, align 8
  br label %22

22:                                               ; preds = %292, %2
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = call i8* @__archive_read_ahead(%struct.archive_read* %23, i32 12, i64* %9)
  store i8* %24, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 0
  %30 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %31 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_9__* %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %3, align 4
  br label %297

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %37, i32* %3, align 4
  br label %297

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i8* @_warc_find_eoh(i8* %40, i64 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %47 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %46, i32 0, i32 0
  %48 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %49 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_9__* %47, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %50, i32* %3, align 4
  br label %297

51:                                               ; preds = %39
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @_warc_rdver(i8* %52, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %64 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %63, i32 0, i32 0
  %65 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %66 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_9__* %64, i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %67, i32* %3, align 4
  br label %297

68:                                               ; preds = %51
  %69 = load i32, i32* %7, align 4
  %70 = icmp ult i32 %69, 1200
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %72, 10000
  br i1 %73, label %74, label %85

74:                                               ; preds = %71, %68
  %75 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %76 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %75, i32 0, i32 0
  %77 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %78 = load i32, i32* %7, align 4
  %79 = udiv i32 %78, 10000
  %80 = load i32, i32* %7, align 4
  %81 = urem i32 %80, 10000
  %82 = udiv i32 %81, 100
  %83 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_9__* %76, i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %84, i32* %3, align 4
  br label %297

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @_warc_rdlen(i8* %87, i32 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %99 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %98, i32 0, i32 0
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_9__* %99, i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %102, i32* %3, align 4
  br label %297

103:                                              ; preds = %86
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i64 @_warc_rdrtm(i8* %104, i32 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp eq i64 %112, -1
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %116 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %115, i32 0, i32 0
  %117 = load i32, i32* @EINVAL, align 4
  %118 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_9__* %116, i32 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %119, i32* %3, align 4
  br label %297

120:                                              ; preds = %103
  %121 = load i32, i32* @ARCHIVE_FORMAT_WARC, align 4
  %122 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %123 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %127 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %120
  %131 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %132 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %131, i32 0, i32 4
  %133 = load i32, i32* %7, align 4
  %134 = udiv i32 %133, 10000
  %135 = load i32, i32* %7, align 4
  %136 = urem i32 %135, 10000
  %137 = udiv i32 %136, 100
  %138 = call i32 @archive_string_sprintf(i32* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %141 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %130, %120
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @_warc_rdtyp(i8* %143, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %153 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %155 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  store i64 0, i64* %15, align 8
  %156 = load i32, i32* %12, align 4
  switch i32 %156, label %255 [
    i32 128, label %157
    i32 129, label %157
  ]

157:                                              ; preds = %142, %142
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = call { i32, i8* } @_warc_rduri(i8* %158, i32 %164)
  %166 = bitcast %struct.TYPE_8__* %16 to { i32, i8* }*
  %167 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %166, i32 0, i32 0
  %168 = extractvalue { i32, i8* } %165, 0
  store i32 %168, i32* %167, align 8
  %169 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %166, i32 0, i32 1
  %170 = extractvalue { i32, i8* } %165, 1
  store i8* %170, i8** %169, align 8
  %171 = bitcast %struct.TYPE_8__* %11 to i8*
  %172 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %171, i8* align 8 %172, i64 16, i1 false)
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %157
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sub i32 %180, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 47
  br i1 %186, label %187, label %190

187:                                              ; preds = %176, %157
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 0, i32* %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i8* null, i8** %189, align 8
  br label %258

190:                                              ; preds = %176
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add i32 %192, 1
  %194 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %195 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ugt i32 %193, %197
  br i1 %198, label %199, label %220

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add i32 %201, 64
  %203 = udiv i32 %202, 64
  %204 = mul i32 %203, 64
  %205 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %206 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %209 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %213 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @realloc(i8* %211, i32 %215)
  %217 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %218 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  store i8* %216, i8** %219, align 8
  br label %220

220:                                              ; preds = %199, %190
  %221 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %222 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @memcpy(i8* %224, i8* %226, i32 %228)
  %230 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %231 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  store i8 0, i8* %237, align 1
  %238 = load %struct.warc_s*, %struct.warc_s** %6, align 8
  %239 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i8* %241, i8** %242, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = load i8*, i8** %10, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = ptrtoint i8* %244 to i64
  %247 = ptrtoint i8* %245 to i64
  %248 = sub i64 %246, %247
  %249 = trunc i64 %248 to i32
  %250 = call i64 @_warc_rdmtm(i8* %243, i32 %249)
  store i64 %250, i64* %15, align 8
  %251 = icmp eq i64 %250, -1
  br i1 %251, label %252, label %254

252:                                              ; preds = %220
  %253 = load i64, i64* %14, align 8
  store i64 %253, i64* %15, align 8
  br label %254

254:                                              ; preds = %252, %220
  br label %258

255:                                              ; preds = %142
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 0, i32* %256, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i8* null, i8** %257, align 8
  br label %258

258:                                              ; preds = %255, %254, %187
  %259 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %260 = load i8*, i8** %10, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  %266 = call i32 @__archive_read_consume(%struct.archive_read* %259, i32 %265)
  %267 = load i32, i32* %12, align 4
  switch i32 %267, label %292 [
    i32 128, label %268
    i32 129, label %268
  ]

268:                                              ; preds = %258, %258
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ugt i32 %270, 0
  br i1 %271, label %272, label %291

272:                                              ; preds = %268
  %273 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %274 = load i32, i32* @AE_IFREG, align 4
  %275 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %273, i32 %274)
  %276 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %276, i8* %278)
  %280 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %281 = load i64, i64* %13, align 8
  %282 = call i32 @archive_entry_set_size(%struct.archive_entry* %280, i64 %281)
  %283 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %284 = call i32 @archive_entry_set_perm(%struct.archive_entry* %283, i32 420)
  %285 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %286 = load i64, i64* %14, align 8
  %287 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %285, i64 %286, i64 0)
  %288 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %289 = load i64, i64* %15, align 8
  %290 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %288, i64 %289, i64 0)
  br label %295

291:                                              ; preds = %268
  br label %292

292:                                              ; preds = %258, %291
  %293 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %294 = call i32 @_warc_skip(%struct.archive_read* %293)
  br label %22

295:                                              ; preds = %272
  %296 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %295, %114, %97, %74, %62, %45, %36, %27
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i64*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i8* @_warc_find_eoh(i8*, i64) #1

declare dso_local i32 @_warc_rdver(i8*, i32) #1

declare dso_local i64 @_warc_rdlen(i8*, i32) #1

declare dso_local i64 @_warc_rdrtm(i8*, i32) #1

declare dso_local i32 @archive_string_sprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @_warc_rdtyp(i8*, i32) #1

declare dso_local { i32, i8* } @_warc_rduri(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @_warc_rdmtm(i8*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_perm(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i64, i64) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i64, i64) #1

declare dso_local i32 @_warc_skip(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
