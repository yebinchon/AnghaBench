; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_next_cfdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_next_cfdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.cab = type { i64, %struct.cfdata*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.cfdata = type { i64, i32, i32, i64, i64, i32*, i64, i64, i64, i32, i32*, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.cfdata }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid offset of CFDATA in folder(%d) %jd < %jd\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@RESERVE_PRESENT = common dso_local global i32 0, align 4
@CFDATA_csum = common dso_local global i32 0, align 4
@CFDATA_cbData = common dso_local global i32 0, align 4
@CFDATA_cbUncomp = common dso_local global i32 0, align 4
@COMPTYPE_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for CAB data\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Invalid CFDATA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @cab_next_cfdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cab_next_cfdata(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.cab*, align 8
  %5 = alloca %struct.cfdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cab*
  store %struct.cab* %15, %struct.cab** %4, align 8
  %16 = load %struct.cab*, %struct.cab** %4, align 8
  %17 = getelementptr inbounds %struct.cab, %struct.cab* %16, i32 0, i32 1
  %18 = load %struct.cfdata*, %struct.cfdata** %17, align 8
  store %struct.cfdata* %18, %struct.cfdata** %5, align 8
  %19 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %20 = icmp ne %struct.cfdata* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %23 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %348

28:                                               ; preds = %21, %1
  %29 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %30 = icmp eq %struct.cfdata* %29, null
  br i1 %30, label %31, label %103

31:                                               ; preds = %28
  %32 = load %struct.cab*, %struct.cab** %4, align 8
  %33 = getelementptr inbounds %struct.cab, %struct.cab* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.cab*, %struct.cab** %4, align 8
  %37 = getelementptr inbounds %struct.cab, %struct.cab* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cab*, %struct.cab** %4, align 8
  %42 = getelementptr inbounds %struct.cab, %struct.cab* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %31
  %48 = load %struct.cab*, %struct.cab** %4, align 8
  %49 = getelementptr inbounds %struct.cab, %struct.cab* %48, i32 0, i32 3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %60 [
    i32 130, label %53
    i32 129, label %53
    i32 128, label %54
  ]

53:                                               ; preds = %47, %47
  store i32 0, i32* %7, align 4
  br label %66

54:                                               ; preds = %47
  %55 = load %struct.cab*, %struct.cab** %4, align 8
  %56 = getelementptr inbounds %struct.cab, %struct.cab* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %66

60:                                               ; preds = %47
  %61 = load %struct.cab*, %struct.cab** %4, align 8
  %62 = getelementptr inbounds %struct.cab, %struct.cab* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %60, %54, %53
  %67 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 0
  %69 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cab*, %struct.cab** %4, align 8
  %72 = getelementptr inbounds %struct.cab, %struct.cab* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.cab*, %struct.cab** %4, align 8
  %78 = getelementptr inbounds %struct.cab, %struct.cab* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %68, i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %76, i32 %80)
  %82 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %82, i32* %2, align 4
  br label %348

83:                                               ; preds = %31
  %84 = load i64, i64* %6, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %88 = load i64, i64* %6, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i64 @__archive_read_consume(%struct.archive_read* %87, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %93, i32* %2, align 4
  br label %348

94:                                               ; preds = %86
  %95 = load %struct.cab*, %struct.cab** %4, align 8
  %96 = getelementptr inbounds %struct.cab, %struct.cab* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.cab*, %struct.cab** %4, align 8
  %101 = getelementptr inbounds %struct.cab, %struct.cab* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %94, %83
  br label %103

103:                                              ; preds = %102, %28
  %104 = load %struct.cab*, %struct.cab** %4, align 8
  %105 = getelementptr inbounds %struct.cab, %struct.cab* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.cab*, %struct.cab** %4, align 8
  %110 = getelementptr inbounds %struct.cab, %struct.cab* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %108, %113
  br i1 %114, label %115, label %313

115:                                              ; preds = %103
  %116 = load %struct.cab*, %struct.cab** %4, align 8
  %117 = getelementptr inbounds %struct.cab, %struct.cab* %116, i32 0, i32 2
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  store %struct.cfdata* %119, %struct.cfdata** %5, align 8
  %120 = load %struct.cab*, %struct.cab** %4, align 8
  %121 = getelementptr inbounds %struct.cab, %struct.cab* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %127 = load %struct.cab*, %struct.cab** %4, align 8
  %128 = getelementptr inbounds %struct.cab, %struct.cab* %127, i32 0, i32 1
  store %struct.cfdata* %126, %struct.cfdata** %128, align 8
  %129 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %130 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %129, i32 0, i32 12
  store i64 0, i64* %130, align 8
  %131 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %132 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %131, i32 0, i32 11
  store i64 0, i64* %132, align 8
  %133 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %134 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %133, i32 0, i32 10
  store i32* null, i32** %134, align 8
  store i32 8, i32* %9, align 4
  %135 = load %struct.cab*, %struct.cab** %4, align 8
  %136 = getelementptr inbounds %struct.cab, %struct.cab* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RESERVE_PRESENT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %115
  %143 = load %struct.cab*, %struct.cab** %4, align 8
  %144 = getelementptr inbounds %struct.cab, %struct.cab* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %142, %115
  %152 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i8* @__archive_read_ahead(%struct.archive_read* %152, i32 %153, i32* null)
  store i8* %154, i8** %8, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %158 = call i32 @truncated_error(%struct.archive_read* %157)
  store i32 %158, i32* %2, align 4
  br label %348

159:                                              ; preds = %151
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* @CFDATA_csum, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 @archive_le32dec(i8* %163)
  %165 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %166 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* @CFDATA_cbData, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = call i8* @archive_le16dec(i8* %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %174 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %176 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %179 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* @CFDATA_cbUncomp, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = call i8* @archive_le16dec(i8* %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %187 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %186, i32 0, i32 3
  store i64 %185, i64* %187, align 8
  %188 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %189 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %192 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %194 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %193, i32 0, i32 8
  store i64 0, i64* %194, align 8
  %195 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %196 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %195, i32 0, i32 7
  store i64 0, i64* %196, align 8
  %197 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %198 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %197, i32 0, i32 6
  store i64 0, i64* %198, align 8
  %199 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %200 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %159
  %204 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %205 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 38912
  br i1 %207, label %208, label %209

208:                                              ; preds = %203, %159
  br label %342

209:                                              ; preds = %203
  %210 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %211 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %212, 32768
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %342

215:                                              ; preds = %209
  %216 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %217 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %215
  %221 = load %struct.cab*, %struct.cab** %4, align 8
  %222 = getelementptr inbounds %struct.cab, %struct.cab* %221, i32 0, i32 3
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  switch i32 %225, label %228 [
    i32 129, label %226
    i32 128, label %226
    i32 130, label %227
  ]

226:                                              ; preds = %220, %220
  br label %229

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %220, %227
  br label %342

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229, %215
  %231 = load %struct.cab*, %struct.cab** %4, align 8
  %232 = getelementptr inbounds %struct.cab, %struct.cab* %231, i32 0, i32 2
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.cab*, %struct.cab** %4, align 8
  %237 = getelementptr inbounds %struct.cab, %struct.cab* %236, i32 0, i32 2
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp slt i64 %235, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %230
  %243 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %244 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 32768
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  br label %342

248:                                              ; preds = %242, %230
  %249 = load %struct.cab*, %struct.cab** %4, align 8
  %250 = getelementptr inbounds %struct.cab, %struct.cab* %249, i32 0, i32 2
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @COMPTYPE_NONE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %248
  %257 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %258 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %262 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %260, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  br label %342

266:                                              ; preds = %256, %248
  %267 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %268 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp ult i64 %269, %271
  br i1 %272, label %273, label %297

273:                                              ; preds = %266
  %274 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %275 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @free(i32* %276)
  %278 = load i32, i32* %9, align 4
  %279 = call i32* @malloc(i32 %278)
  %280 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %281 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %280, i32 0, i32 5
  store i32* %279, i32** %281, align 8
  %282 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %283 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %282, i32 0, i32 5
  %284 = load i32*, i32** %283, align 8
  %285 = icmp eq i32* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %273
  %287 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %288 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %287, i32 0, i32 0
  %289 = load i32, i32* @ENOMEM, align 4
  %290 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %288, i32 %289, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %291 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %291, i32* %2, align 4
  br label %348

292:                                              ; preds = %273
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %296 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %295, i32 0, i32 4
  store i64 %294, i64* %296, align 8
  br label %297

297:                                              ; preds = %292, %266
  %298 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %299 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %298, i32 0, i32 5
  %300 = load i32*, i32** %299, align 8
  %301 = load i8*, i8** %8, align 8
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @memcpy(i32* %300, i8* %301, i32 %302)
  %304 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %305 = load i32, i32* %9, align 4
  %306 = call i64 @__archive_read_consume(%struct.archive_read* %304, i32 %305)
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = load %struct.cab*, %struct.cab** %4, align 8
  %310 = getelementptr inbounds %struct.cab, %struct.cab* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, %308
  store i64 %312, i64* %310, align 8
  br label %340

313:                                              ; preds = %103
  %314 = load %struct.cab*, %struct.cab** %4, align 8
  %315 = getelementptr inbounds %struct.cab, %struct.cab* %314, i32 0, i32 2
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %313
  %321 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %322 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %321, i32 0, i32 1
  store i32 0, i32* %322, align 8
  %323 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %324 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %323, i32 0, i32 3
  store i64 0, i64* %324, align 8
  %325 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %326 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %325, i32 0, i32 2
  store i32 0, i32* %326, align 4
  %327 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %328 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %327, i32 0, i32 0
  store i64 0, i64* %328, align 8
  br label %339

329:                                              ; preds = %313
  %330 = load %struct.cab*, %struct.cab** %4, align 8
  %331 = getelementptr inbounds %struct.cab, %struct.cab* %330, i32 0, i32 2
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 4
  store %struct.cfdata* %333, %struct.cfdata** %5, align 8
  %334 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %335 = load %struct.cab*, %struct.cab** %4, align 8
  %336 = getelementptr inbounds %struct.cab, %struct.cab* %335, i32 0, i32 1
  store %struct.cfdata* %334, %struct.cfdata** %336, align 8
  %337 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %338 = call i32 @memset(%struct.cfdata* %337, i32 0, i32 96)
  br label %339

339:                                              ; preds = %329, %320
  br label %340

340:                                              ; preds = %339, %297
  %341 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %341, i32* %2, align 4
  br label %348

342:                                              ; preds = %265, %247, %228, %214, %208
  %343 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %344 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %343, i32 0, i32 0
  %345 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %346 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %344, i32 %345, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %347 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %347, i32* %2, align 4
  br label %348

348:                                              ; preds = %342, %340, %286, %156, %92, %66, %26
  %349 = load i32, i32* %2, align 4
  ret i32 %349
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i32 @archive_le32dec(i8*) #1

declare dso_local i8* @archive_le16dec(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.cfdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
