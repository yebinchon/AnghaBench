; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c___archive_read_filter_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c___archive_read_filter_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i64, i64, i32, i32, i64, i64, %struct.TYPE_3__*, i32*, i64, i64 }
%struct.TYPE_3__ = type { %struct.archive_read_client }
%struct.archive_read_client = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ARCHIVE_FAILED = common dso_local global i64 0, align 8
@__LA_FALLTHROUGH = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__archive_read_filter_seek(%struct.archive_read_filter* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %12 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %11, i32 0, i32 9
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %17 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %3
  %21 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %21, i64* %4, align 8
  br label %459

22:                                               ; preds = %15
  %23 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %24 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %28, i64* %4, align 8
  br label %459

29:                                               ; preds = %22
  %30 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %31 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %30, i32 0, i32 6
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.archive_read_client* %33, %struct.archive_read_client** %8, align 8
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %427 [
    i32 130, label %35
    i32 128, label %42
    i32 129, label %233
  ]

35:                                               ; preds = %29
  %36 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %37 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %42

42:                                               ; preds = %29, %35
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %92
  %44 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %45 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %91, label %53

53:                                               ; preds = %43
  %54 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %55 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %53
  %64 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %65 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %73 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %71, %79
  %81 = sub nsw i64 %80, 1
  %82 = load i64, i64* %6, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %63
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  %87 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %88 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp uge i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %63, %53, %43
  br label %119

92:                                               ; preds = %84
  %93 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %94 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %102 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %100, %108
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %112 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i64 %110, i64* %118, align 8
  br label %43

119:                                              ; preds = %91
  br label %120

120:                                              ; preds = %119, %172
  %121 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i64 @client_switch_proxy(%struct.archive_read_filter* %121, i32 %122)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @ARCHIVE_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %4, align 8
  br label %459

129:                                              ; preds = %120
  %130 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %131 = call i64 @client_seek_proxy(%struct.archive_read_filter* %130, i64 0, i32 129)
  store i64 %131, i64* %9, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* %9, align 8
  store i64 %134, i64* %4, align 8
  br label %459

135:                                              ; preds = %129
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %138 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i64 %136, i64* %143, align 8
  %144 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %145 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %153 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %151, %159
  %161 = sub nsw i64 %160, 1
  %162 = load i64, i64* %6, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %171, label %164

164:                                              ; preds = %135
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 1
  %167 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %168 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp uge i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164, %135
  br label %199

172:                                              ; preds = %164
  %173 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %174 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %182 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %180, %188
  store i64 %189, i64* %9, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %192 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %191, i32 0, i32 1
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %10, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i64 %190, i64* %198, align 8
  br label %120

199:                                              ; preds = %171
  %200 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %201 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = sub nsw i64 %208, %207
  store i64 %209, i64* %6, align 8
  %210 = load i64, i64* %6, align 8
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %199
  %213 = load i64, i64* %6, align 8
  %214 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %215 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %214, i32 0, i32 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %213, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %212, %199
  %224 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %224, i64* %4, align 8
  br label %459

225:                                              ; preds = %212
  %226 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %227 = load i64, i64* %6, align 8
  %228 = call i64 @client_seek_proxy(%struct.archive_read_filter* %226, i64 %227, i32 128)
  store i64 %228, i64* %9, align 8
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i64, i64* %9, align 8
  store i64 %231, i64* %4, align 8
  br label %459

232:                                              ; preds = %225
  br label %429

233:                                              ; preds = %29
  store i32 0, i32* %10, align 4
  br label %234

234:                                              ; preds = %233, %262
  %235 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %236 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %235, i32 0, i32 1
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %261, label %244

244:                                              ; preds = %234
  %245 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %246 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %245, i32 0, i32 1
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %244
  %255 = load i32, i32* %10, align 4
  %256 = add i32 %255, 1
  %257 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %258 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp uge i32 %256, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %254, %244, %234
  br label %289

262:                                              ; preds = %254
  %263 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %264 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %263, i32 0, i32 1
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %272 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %271, i32 0, i32 1
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %270, %278
  store i64 %279, i64* %9, align 8
  %280 = load i64, i64* %9, align 8
  %281 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %282 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %281, i32 0, i32 1
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %10, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  store i64 %280, i64* %288, align 8
  br label %234

289:                                              ; preds = %261
  br label %290

290:                                              ; preds = %289, %338
  %291 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %292 = load i32, i32* %10, align 4
  %293 = call i64 @client_switch_proxy(%struct.archive_read_filter* %291, i32 %292)
  store i64 %293, i64* %9, align 8
  %294 = load i64, i64* %9, align 8
  %295 = load i64, i64* @ARCHIVE_OK, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = load i64, i64* %9, align 8
  store i64 %298, i64* %4, align 8
  br label %459

299:                                              ; preds = %290
  %300 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %301 = call i64 @client_seek_proxy(%struct.archive_read_filter* %300, i64 0, i32 129)
  store i64 %301, i64* %9, align 8
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = load i64, i64* %9, align 8
  store i64 %304, i64* %4, align 8
  br label %459

305:                                              ; preds = %299
  %306 = load i64, i64* %9, align 8
  %307 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %308 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %307, i32 0, i32 1
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 1
  store i64 %306, i64* %313, align 8
  %314 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %315 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %314, i32 0, i32 1
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %315, align 8
  %317 = load i32, i32* %10, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %323 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %322, i32 0, i32 1
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = load i32, i32* %10, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %321, %329
  store i64 %330, i64* %9, align 8
  %331 = load i32, i32* %10, align 4
  %332 = add i32 %331, 1
  %333 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %334 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp uge i32 %332, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %305
  br label %348

338:                                              ; preds = %305
  %339 = load i64, i64* %9, align 8
  %340 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %341 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %340, i32 0, i32 1
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %10, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  store i64 %339, i64* %347, align 8
  br label %290

348:                                              ; preds = %337
  br label %349

349:                                              ; preds = %348, %377
  %350 = load i64, i64* %9, align 8
  %351 = load i64, i64* %6, align 8
  %352 = add nsw i64 %350, %351
  %353 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %354 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %353, i32 0, i32 1
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp sge i64 %352, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %349
  br label %397

363:                                              ; preds = %349
  %364 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %365 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %364, i32 0, i32 1
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = load i32, i32* %10, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* %6, align 8
  %373 = add nsw i64 %372, %371
  store i64 %373, i64* %6, align 8
  %374 = load i32, i32* %10, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %363
  br label %397

377:                                              ; preds = %363
  %378 = load i32, i32* %10, align 4
  %379 = add i32 %378, -1
  store i32 %379, i32* %10, align 4
  %380 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %381 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %380, i32 0, i32 1
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = load i32, i32* %10, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %389 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %388, i32 0, i32 1
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = load i32, i32* %10, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %387, %395
  store i64 %396, i64* %9, align 8
  br label %349

397:                                              ; preds = %376, %362
  %398 = load i64, i64* %9, align 8
  %399 = load i64, i64* %6, align 8
  %400 = add nsw i64 %398, %399
  %401 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %402 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %401, i32 0, i32 1
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = load i32, i32* %10, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = sub nsw i64 %400, %408
  store i64 %409, i64* %6, align 8
  %410 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %411 = load i32, i32* %10, align 4
  %412 = call i64 @client_switch_proxy(%struct.archive_read_filter* %410, i32 %411)
  store i64 %412, i64* %9, align 8
  %413 = load i64, i64* @ARCHIVE_OK, align 8
  %414 = icmp ne i64 %412, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %397
  %416 = load i64, i64* %9, align 8
  store i64 %416, i64* %4, align 8
  br label %459

417:                                              ; preds = %397
  %418 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %419 = load i64, i64* %6, align 8
  %420 = call i64 @client_seek_proxy(%struct.archive_read_filter* %418, i64 %419, i32 128)
  store i64 %420, i64* %9, align 8
  %421 = load i64, i64* %9, align 8
  %422 = load i64, i64* @ARCHIVE_OK, align 8
  %423 = icmp slt i64 %421, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %417
  %425 = load i64, i64* %9, align 8
  store i64 %425, i64* %4, align 8
  br label %459

426:                                              ; preds = %417
  br label %429

427:                                              ; preds = %29
  %428 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %428, i64* %4, align 8
  br label %459

429:                                              ; preds = %426, %232
  %430 = load %struct.archive_read_client*, %struct.archive_read_client** %8, align 8
  %431 = getelementptr inbounds %struct.archive_read_client, %struct.archive_read_client* %430, i32 0, i32 1
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %431, align 8
  %433 = load i32, i32* %10, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* %9, align 8
  %439 = add nsw i64 %438, %437
  store i64 %439, i64* %9, align 8
  %440 = load i64, i64* %9, align 8
  %441 = icmp sge i64 %440, 0
  br i1 %441, label %442, label %457

442:                                              ; preds = %429
  %443 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %444 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %443, i32 0, i32 4
  store i64 0, i64* %444, align 8
  %445 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %446 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %445, i32 0, i32 5
  store i64 0, i64* %446, align 8
  %447 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %448 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %451 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %450, i32 0, i32 3
  store i32 %449, i32* %451, align 4
  %452 = load i64, i64* %9, align 8
  %453 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %454 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %453, i32 0, i32 1
  store i64 %452, i64* %454, align 8
  %455 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %456 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %455, i32 0, i32 0
  store i64 0, i64* %456, align 8
  br label %457

457:                                              ; preds = %442, %429
  %458 = load i64, i64* %9, align 8
  store i64 %458, i64* %4, align 8
  br label %459

459:                                              ; preds = %457, %427, %424, %415, %303, %297, %230, %223, %133, %127, %27, %20
  %460 = load i64, i64* %4, align 8
  ret i64 %460
}

declare dso_local i64 @client_switch_proxy(%struct.archive_read_filter*, i32) #1

declare dso_local i64 @client_seek_proxy(%struct.archive_read_filter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
