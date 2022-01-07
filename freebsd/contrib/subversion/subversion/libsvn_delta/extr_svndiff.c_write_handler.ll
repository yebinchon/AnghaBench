; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_write_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_baton = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_3__*, i32, i32, i32 (i32*, i32)*, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@SVNDIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@SVNDIFF_V0 = common dso_local global i64 0, align 8
@SVNDIFF_V1 = common dso_local global i64 0, align 8
@SVNDIFF_V2 = common dso_local global i64 0, align 8
@SVN_ERR_SVNDIFF_INVALID_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Svndiff has invalid header\00", align 1
@SVN_DELTA_WINDOW_SIZE = common dso_local global i64 0, align 8
@SVN__MAX_ENCODED_UINT_LEN = common dso_local global i32 0, align 4
@MAX_INSTRUCTION_SECTION_LEN = common dso_local global i64 0, align 8
@SVN_ERR_SVNDIFF_CORRUPT_WINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Svndiff contains a too-large window\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Svndiff contains corrupt window header\00", align 1
@SVN_ERR_SVNDIFF_BACKWARD_VIEW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Svndiff has backwards-sliding source views\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Svndiff contains a too-large window header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @write_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_handler(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.decode_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.decode_baton*
  store %struct.decode_baton* %21, %struct.decode_baton** %8, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %25 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SVNDIFF_HEADER_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %3
  %30 = load i64, i64* @SVNDIFF_HEADER_SIZE, align 8
  %31 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %32 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* @SVNDIFF_V0, align 8
  %43 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %44 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @memcmp(i8* %41, i64 %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %52 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  br label %85

53:                                               ; preds = %40
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* @SVNDIFF_V1, align 8
  %56 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %57 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @memcmp(i8* %54, i64 %59, i64 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %65 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  br label %84

66:                                               ; preds = %53
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* @SVNDIFF_V2, align 8
  %69 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %70 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @memcmp(i8* %67, i64 %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %78 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %77, i32 0, i32 1
  store i32 2, i32* %78, align 8
  br label %83

79:                                               ; preds = %66
  %80 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_HEADER, align 4
  %81 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %82 = call i32* @svn_error_create(i32 %80, i32* null, i32 %81)
  store i32* %82, i32** %4, align 8
  br label %372

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %11, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %94 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %85, %3
  %98 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %99 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %98, i32 0, i32 9
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_3__* %100, i8* %101, i64 %102)
  br label %104

104:                                              ; preds = %97, %282
  %105 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %106 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %105, i32 0, i32 9
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %9, align 8
  %111 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %112 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %111, i32 0, i32 9
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %118 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %117, i32 0, i32 9
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %116, i64 %122
  store i8* %123, i8** %10, align 8
  %124 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %125 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %260

128:                                              ; preds = %104
  %129 = load i8*, i8** %9, align 8
  store i8* %129, i8** %19, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = call i8* @decode_file_offset(i64* %14, i8* %130, i8* %131)
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %357

136:                                              ; preds = %128
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i8* @decode_size(i64* %15, i8* %137, i8* %138)
  store i8* %139, i8** %9, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %357

143:                                              ; preds = %136
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i8* @decode_size(i64* %16, i8* %144, i8* %145)
  store i8* %146, i8** %9, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %357

150:                                              ; preds = %143
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i8* @decode_size(i64* %17, i8* %151, i8* %152)
  store i8* %153, i8** %9, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %357

157:                                              ; preds = %150
  %158 = load i8*, i8** %9, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = call i8* @decode_size(i64* %18, i8* %158, i8* %159)
  store i8* %160, i8** %9, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %357

164:                                              ; preds = %157
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %183, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %183, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %175 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = icmp sgt i64 %173, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = load i64, i64* %17, align 8
  %181 = load i64, i64* @MAX_INSTRUCTION_SECTION_LEN, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179, %172, %168, %164
  %184 = load i32, i32* @SVN_ERR_SVNDIFF_CORRUPT_WINDOW, align 4
  %185 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %186 = call i32* @svn_error_create(i32 %184, i32* null, i32 %185)
  store i32* %186, i32** %4, align 8
  br label %372

187:                                              ; preds = %179
  %188 = load i64, i64* %14, align 8
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %17, align 8
  %192 = load i64, i64* %18, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i64, i64* %17, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %208, label %196

196:                                              ; preds = %190
  %197 = load i64, i64* %15, align 8
  %198 = load i64, i64* %16, align 8
  %199 = add nsw i64 %197, %198
  %200 = load i64, i64* %15, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %196
  %203 = load i64, i64* %14, align 8
  %204 = load i64, i64* %15, align 8
  %205 = add nsw i64 %203, %204
  %206 = load i64, i64* %14, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202, %196, %190, %187
  %209 = load i32, i32* @SVN_ERR_SVNDIFF_CORRUPT_WINDOW, align 4
  %210 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %211 = call i32* @svn_error_create(i32 %209, i32* null, i32 %210)
  store i32* %211, i32** %4, align 8
  br label %372

212:                                              ; preds = %202
  %213 = load i64, i64* %15, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %212
  %216 = load i64, i64* %14, align 8
  %217 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %218 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp slt i64 %216, %219
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = load i64, i64* %14, align 8
  %223 = load i64, i64* %15, align 8
  %224 = add nsw i64 %222, %223
  %225 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %226 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %229 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %227, %230
  %232 = icmp slt i64 %224, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %221, %215
  %234 = load i32, i32* @SVN_ERR_SVNDIFF_BACKWARD_VIEW, align 4
  %235 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %236 = call i32* @svn_error_create(i32 %234, i32* null, i32 %235)
  store i32* %236, i32** %4, align 8
  br label %372

237:                                              ; preds = %221, %212
  %238 = load i8*, i8** %9, align 8
  %239 = load i8*, i8** %19, align 8
  %240 = ptrtoint i8* %238 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %244 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  %245 = load i64, i64* %14, align 8
  %246 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %247 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %246, i32 0, i32 5
  store i64 %245, i64* %247, align 8
  %248 = load i64, i64* %15, align 8
  %249 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %250 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %249, i32 0, i32 6
  store i64 %248, i64* %250, align 8
  %251 = load i64, i64* %16, align 8
  %252 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %253 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %252, i32 0, i32 13
  store i64 %251, i64* %253, align 8
  %254 = load i64, i64* %17, align 8
  %255 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %256 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %255, i32 0, i32 7
  store i64 %254, i64* %256, align 8
  %257 = load i64, i64* %18, align 8
  %258 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %259 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %258, i32 0, i32 8
  store i64 %257, i64* %259, align 8
  br label %266

260:                                              ; preds = %104
  %261 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %262 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 %263
  store i8* %265, i8** %9, align 8
  br label %266

266:                                              ; preds = %260, %237
  %267 = load i8*, i8** %10, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %273 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %276 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %275, i32 0, i32 8
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %274, %277
  %279 = icmp slt i64 %271, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %266
  %281 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %281, i32** %4, align 8
  br label %372

282:                                              ; preds = %266
  %283 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %284 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %287 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %286, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %290 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %289, i32 0, i32 13
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %293 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %292, i32 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %296 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %295, i32 0, i32 8
  %297 = load i64, i64* %296, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %300 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %299, i32 0, i32 10
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %303 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @decode_window(i32* %13, i64 %285, i64 %288, i64 %291, i64 %294, i64 %297, i8* %298, i32 %301, i32 %304)
  %306 = call i32 @SVN_ERR(i32 %305)
  %307 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %308 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %307, i32 0, i32 12
  %309 = load i32 (i32*, i32)*, i32 (i32*, i32)** %308, align 8
  %310 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %311 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %310, i32 0, i32 11
  %312 = load i32, i32* %311, align 4
  %313 = call i32 %309(i32* %13, i32 %312)
  %314 = call i32 @SVN_ERR(i32 %313)
  %315 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %316 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %315, i32 0, i32 7
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %319 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %318, i32 0, i32 8
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %317, %320
  %322 = load i8*, i8** %9, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 %321
  store i8* %323, i8** %9, align 8
  %324 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %325 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %324, i32 0, i32 9
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %325, align 8
  %327 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %328 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %327, i32 0, i32 9
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = load i8*, i8** %10, align 8
  %334 = load i8*, i8** %9, align 8
  %335 = ptrtoint i8* %333 to i64
  %336 = ptrtoint i8* %334 to i64
  %337 = sub i64 %335, %336
  %338 = sub nsw i64 %332, %337
  %339 = trunc i64 %338 to i32
  %340 = call i32 @svn_stringbuf_remove(%struct.TYPE_3__* %326, i32 0, i32 %339)
  %341 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %342 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %341, i32 0, i32 2
  store i64 0, i64* %342, align 8
  %343 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %344 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %347 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %346, i32 0, i32 3
  store i64 %345, i64* %347, align 8
  %348 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %349 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %348, i32 0, i32 6
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %352 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %351, i32 0, i32 4
  store i64 %350, i64* %352, align 8
  %353 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %354 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @svn_pool_clear(i32 %355)
  br label %104

357:                                              ; preds = %163, %156, %149, %142, %135
  %358 = load %struct.decode_baton*, %struct.decode_baton** %8, align 8
  %359 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %358, i32 0, i32 9
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %364 = mul nsw i32 5, %363
  %365 = icmp sgt i32 %362, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %357
  %367 = load i32, i32* @SVN_ERR_SVNDIFF_CORRUPT_WINDOW, align 4
  %368 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %369 = call i32* @svn_error_create(i32 %367, i32* null, i32 %368)
  store i32* %369, i32** %4, align 8
  br label %372

370:                                              ; preds = %357
  %371 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %371, i32** %4, align 8
  br label %372

372:                                              ; preds = %370, %366, %280, %233, %208, %183, %79
  %373 = load i32*, i32** %4, align 8
  ret i32* %373
}

declare dso_local i64 @memcmp(i8*, i64, i64) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i8* @decode_file_offset(i64*, i8*, i8*) #1

declare dso_local i8* @decode_size(i64*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @decode_window(i32*, i64, i64, i64, i64, i64, i8*, i32, i32) #1

declare dso_local i32 @svn_stringbuf_remove(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
