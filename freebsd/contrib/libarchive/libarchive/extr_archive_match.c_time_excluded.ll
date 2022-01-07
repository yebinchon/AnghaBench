; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_time_excluded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_time_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.match_file = type { i32, i64, i64, i64, i64 }

@ARCHIVE_MATCH_EQUAL = common dso_local global i32 0, align 4
@rb_ops_wcs = common dso_local global i32 0, align 4
@rb_ops_mbs = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_CTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_NEWER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.archive_entry*)* @time_excluded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_excluded(%struct.archive_match* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_match*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.match_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.archive_match* %0, %struct.archive_match** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %10 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %11 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %2
  %15 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %16 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %20 = call i64 @archive_entry_ctime(%struct.archive_entry* %19)
  store i64 %20, i64* %8, align 8
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %23 = call i64 @archive_entry_mtime(%struct.archive_entry* %22)
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %27 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %416

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %34 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %39 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %43 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %42)
  store i64 %43, i64* %9, align 8
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %46 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %50 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %416

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %57 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %62 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %416

68:                                               ; preds = %60, %54
  br label %69

69:                                               ; preds = %68, %31
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %72 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %70
  %76 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %77 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %81 = call i64 @archive_entry_ctime(%struct.archive_entry* %80)
  store i64 %81, i64* %8, align 8
  br label %85

82:                                               ; preds = %75
  %83 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %84 = call i64 @archive_entry_mtime(%struct.archive_entry* %83)
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %88 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %416

92:                                               ; preds = %85
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %95 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %92
  %99 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %100 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %104 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %103)
  store i64 %104, i64* %9, align 8
  br label %108

105:                                              ; preds = %98
  %106 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %107 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %106)
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %111 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %416

115:                                              ; preds = %108
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %118 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %123 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %416

129:                                              ; preds = %121, %115
  br label %130

130:                                              ; preds = %129, %92
  br label %131

131:                                              ; preds = %130, %70
  %132 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %133 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %131
  %137 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %138 = call i64 @archive_entry_mtime(%struct.archive_entry* %137)
  store i64 %138, i64* %8, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %141 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %416

145:                                              ; preds = %136
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %148 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %145
  %152 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %153 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %152)
  store i64 %153, i64* %9, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %156 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %416

160:                                              ; preds = %151
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %163 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %168 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 1, i32* %3, align 4
  br label %416

174:                                              ; preds = %166, %160
  br label %175

175:                                              ; preds = %174, %145
  br label %176

176:                                              ; preds = %175, %131
  %177 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %178 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %221

181:                                              ; preds = %176
  %182 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %183 = call i64 @archive_entry_mtime(%struct.archive_entry* %182)
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %186 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %185, i32 0, i32 10
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  store i32 1, i32* %3, align 4
  br label %416

190:                                              ; preds = %181
  %191 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %192 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %191)
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %195 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %194, i32 0, i32 10
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %220

198:                                              ; preds = %190
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %201 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %200, i32 0, i32 11
  %202 = load i64, i64* %201, align 8
  %203 = icmp sgt i64 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  store i32 1, i32* %3, align 4
  br label %416

205:                                              ; preds = %198
  %206 = load i64, i64* %9, align 8
  %207 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %208 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %207, i32 0, i32 11
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %213 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 1, i32* %3, align 4
  br label %416

219:                                              ; preds = %211, %205
  br label %220

220:                                              ; preds = %219, %190
  br label %221

221:                                              ; preds = %220, %176
  %222 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %223 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %222, i32 0, i32 13
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %416

228:                                              ; preds = %221
  %229 = load i32, i32* @rb_ops_wcs, align 4
  %230 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %231 = call i8* @archive_entry_pathname(%struct.archive_entry* %230)
  store i8* %231, i8** %7, align 8
  %232 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %233 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %232, i32 0, i32 12
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i32* @rb_ops_mbs, i32** %234, align 8
  %235 = load i8*, i8** %7, align 8
  %236 = icmp eq i8* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  br label %416

238:                                              ; preds = %228
  %239 = load %struct.archive_match*, %struct.archive_match** %4, align 8
  %240 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %239, i32 0, i32 12
  %241 = load i8*, i8** %7, align 8
  %242 = call i64 @__archive_rb_tree_find_node(%struct.TYPE_4__* %240, i8* %241)
  %243 = inttoptr i64 %242 to %struct.match_file*
  store %struct.match_file* %243, %struct.match_file** %6, align 8
  %244 = load %struct.match_file*, %struct.match_file** %6, align 8
  %245 = icmp eq %struct.match_file* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  store i32 0, i32* %3, align 4
  br label %416

247:                                              ; preds = %238
  %248 = load %struct.match_file*, %struct.match_file** %6, align 8
  %249 = getelementptr inbounds %struct.match_file, %struct.match_file* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %331

254:                                              ; preds = %247
  %255 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %256 = call i64 @archive_entry_ctime(%struct.archive_entry* %255)
  store i64 %256, i64* %8, align 8
  %257 = load %struct.match_file*, %struct.match_file** %6, align 8
  %258 = getelementptr inbounds %struct.match_file, %struct.match_file* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %8, align 8
  %261 = icmp sgt i64 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %254
  %263 = load %struct.match_file*, %struct.match_file** %6, align 8
  %264 = getelementptr inbounds %struct.match_file, %struct.match_file* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %262
  store i32 1, i32* %3, align 4
  br label %416

270:                                              ; preds = %262
  br label %330

271:                                              ; preds = %254
  %272 = load %struct.match_file*, %struct.match_file** %6, align 8
  %273 = getelementptr inbounds %struct.match_file, %struct.match_file* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* %8, align 8
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %277, label %286

277:                                              ; preds = %271
  %278 = load %struct.match_file*, %struct.match_file** %6, align 8
  %279 = getelementptr inbounds %struct.match_file, %struct.match_file* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  store i32 1, i32* %3, align 4
  br label %416

285:                                              ; preds = %277
  br label %329

286:                                              ; preds = %271
  %287 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %288 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %287)
  store i64 %288, i64* %9, align 8
  %289 = load %struct.match_file*, %struct.match_file** %6, align 8
  %290 = getelementptr inbounds %struct.match_file, %struct.match_file* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %9, align 8
  %293 = icmp sgt i64 %291, %292
  br i1 %293, label %294, label %303

294:                                              ; preds = %286
  %295 = load %struct.match_file*, %struct.match_file** %6, align 8
  %296 = getelementptr inbounds %struct.match_file, %struct.match_file* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  store i32 1, i32* %3, align 4
  br label %416

302:                                              ; preds = %294
  br label %328

303:                                              ; preds = %286
  %304 = load %struct.match_file*, %struct.match_file** %6, align 8
  %305 = getelementptr inbounds %struct.match_file, %struct.match_file* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %9, align 8
  %308 = icmp slt i64 %306, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %303
  %310 = load %struct.match_file*, %struct.match_file** %6, align 8
  %311 = getelementptr inbounds %struct.match_file, %struct.match_file* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %309
  store i32 1, i32* %3, align 4
  br label %416

317:                                              ; preds = %309
  br label %327

318:                                              ; preds = %303
  %319 = load %struct.match_file*, %struct.match_file** %6, align 8
  %320 = getelementptr inbounds %struct.match_file, %struct.match_file* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %318
  store i32 1, i32* %3, align 4
  br label %416

326:                                              ; preds = %318
  br label %327

327:                                              ; preds = %326, %317
  br label %328

328:                                              ; preds = %327, %302
  br label %329

329:                                              ; preds = %328, %285
  br label %330

330:                                              ; preds = %329, %270
  br label %331

331:                                              ; preds = %330, %247
  %332 = load %struct.match_file*, %struct.match_file** %6, align 8
  %333 = getelementptr inbounds %struct.match_file, %struct.match_file* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %415

338:                                              ; preds = %331
  %339 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %340 = call i64 @archive_entry_mtime(%struct.archive_entry* %339)
  store i64 %340, i64* %8, align 8
  %341 = load %struct.match_file*, %struct.match_file** %6, align 8
  %342 = getelementptr inbounds %struct.match_file, %struct.match_file* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %8, align 8
  %345 = icmp sgt i64 %343, %344
  br i1 %345, label %346, label %355

346:                                              ; preds = %338
  %347 = load %struct.match_file*, %struct.match_file** %6, align 8
  %348 = getelementptr inbounds %struct.match_file, %struct.match_file* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %346
  store i32 1, i32* %3, align 4
  br label %416

354:                                              ; preds = %346
  br label %414

355:                                              ; preds = %338
  %356 = load %struct.match_file*, %struct.match_file** %6, align 8
  %357 = getelementptr inbounds %struct.match_file, %struct.match_file* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* %8, align 8
  %360 = icmp slt i64 %358, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %355
  %362 = load %struct.match_file*, %struct.match_file** %6, align 8
  %363 = getelementptr inbounds %struct.match_file, %struct.match_file* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  store i32 1, i32* %3, align 4
  br label %416

369:                                              ; preds = %361
  br label %413

370:                                              ; preds = %355
  %371 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %372 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %371)
  store i64 %372, i64* %9, align 8
  %373 = load %struct.match_file*, %struct.match_file** %6, align 8
  %374 = getelementptr inbounds %struct.match_file, %struct.match_file* %373, i32 0, i32 4
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* %9, align 8
  %377 = icmp sgt i64 %375, %376
  br i1 %377, label %378, label %387

378:                                              ; preds = %370
  %379 = load %struct.match_file*, %struct.match_file** %6, align 8
  %380 = getelementptr inbounds %struct.match_file, %struct.match_file* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %378
  store i32 1, i32* %3, align 4
  br label %416

386:                                              ; preds = %378
  br label %412

387:                                              ; preds = %370
  %388 = load %struct.match_file*, %struct.match_file** %6, align 8
  %389 = getelementptr inbounds %struct.match_file, %struct.match_file* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* %9, align 8
  %392 = icmp slt i64 %390, %391
  br i1 %392, label %393, label %402

393:                                              ; preds = %387
  %394 = load %struct.match_file*, %struct.match_file** %6, align 8
  %395 = getelementptr inbounds %struct.match_file, %struct.match_file* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @ARCHIVE_MATCH_NEWER, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %393
  store i32 1, i32* %3, align 4
  br label %416

401:                                              ; preds = %393
  br label %411

402:                                              ; preds = %387
  %403 = load %struct.match_file*, %struct.match_file** %6, align 8
  %404 = getelementptr inbounds %struct.match_file, %struct.match_file* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %402
  store i32 1, i32* %3, align 4
  br label %416

410:                                              ; preds = %402
  br label %411

411:                                              ; preds = %410, %401
  br label %412

412:                                              ; preds = %411, %386
  br label %413

413:                                              ; preds = %412, %369
  br label %414

414:                                              ; preds = %413, %354
  br label %415

415:                                              ; preds = %414, %331
  store i32 0, i32* %3, align 4
  br label %416

416:                                              ; preds = %415, %409, %400, %385, %368, %353, %325, %316, %301, %284, %269, %246, %237, %227, %218, %204, %189, %173, %159, %144, %128, %114, %91, %67, %53, %30
  %417 = load i32, i32* %3, align 4
  ret i32 %417
}

declare dso_local i64 @archive_entry_ctime_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @__archive_rb_tree_find_node(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
