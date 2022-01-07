; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_set_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_set_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, %struct.att_counter_set }
%struct.att_counter_set = type { %struct.attr_counter*, %struct.attr_counter*, %struct.attr_counter*, %struct.attr_counter* }
%struct.attr_counter = type { %struct.TYPE_2__*, %struct.attr_counter* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.mtree_entry = type { i64, i64, i64, i64, i64 }

@F_UNAME = common dso_local global i32 0, align 4
@F_UID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@F_GID = common dso_local global i32 0, align 4
@F_MODE = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtree_writer*, %struct.mtree_entry*)* @attr_counter_set_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_counter_set_collect(%struct.mtree_writer* %0, %struct.mtree_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtree_writer*, align 8
  %5 = alloca %struct.mtree_entry*, align 8
  %6 = alloca %struct.attr_counter*, align 8
  %7 = alloca %struct.attr_counter*, align 8
  %8 = alloca %struct.att_counter_set*, align 8
  %9 = alloca i32, align 4
  store %struct.mtree_writer* %0, %struct.mtree_writer** %4, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %5, align 8
  %10 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %11 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %10, i32 0, i32 1
  store %struct.att_counter_set* %11, %struct.att_counter_set** %8, align 8
  %12 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %13 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @F_UNAME, align 4
  %17 = load i32, i32* @F_UID, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %2
  %22 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %23 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %22, i32 0, i32 3
  %24 = load %struct.attr_counter*, %struct.attr_counter** %23, align 8
  %25 = icmp eq %struct.attr_counter* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %28 = call i8* @attr_counter_new(%struct.mtree_entry* %27, i32* null)
  %29 = bitcast i8* %28 to %struct.attr_counter*
  %30 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %31 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %30, i32 0, i32 3
  store %struct.attr_counter* %29, %struct.attr_counter** %31, align 8
  %32 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %33 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %32, i32 0, i32 3
  %34 = load %struct.attr_counter*, %struct.attr_counter** %33, align 8
  %35 = icmp eq %struct.attr_counter* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %257

37:                                               ; preds = %26
  br label %72

38:                                               ; preds = %21
  store %struct.attr_counter* null, %struct.attr_counter** %7, align 8
  %39 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %40 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %39, i32 0, i32 3
  %41 = load %struct.attr_counter*, %struct.attr_counter** %40, align 8
  store %struct.attr_counter* %41, %struct.attr_counter** %6, align 8
  br label %42

42:                                               ; preds = %58, %38
  %43 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %44 = icmp ne %struct.attr_counter* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %47 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %52 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  store %struct.attr_counter* %57, %struct.attr_counter** %7, align 8
  br label %58

58:                                               ; preds = %56
  %59 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %60 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %59, i32 0, i32 1
  %61 = load %struct.attr_counter*, %struct.attr_counter** %60, align 8
  store %struct.attr_counter* %61, %struct.attr_counter** %6, align 8
  br label %42

62:                                               ; preds = %55, %42
  %63 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %64 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %63, i32 0, i32 3
  %65 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %66 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %67 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %68 = call i64 @attr_counter_inc(%struct.attr_counter** %64, %struct.attr_counter* %65, %struct.attr_counter* %66, %struct.mtree_entry* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %257

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @F_GNAME, align 4
  %76 = load i32, i32* @F_GID, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %132

80:                                               ; preds = %73
  %81 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %82 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %81, i32 0, i32 2
  %83 = load %struct.attr_counter*, %struct.attr_counter** %82, align 8
  %84 = icmp eq %struct.attr_counter* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %87 = call i8* @attr_counter_new(%struct.mtree_entry* %86, i32* null)
  %88 = bitcast i8* %87 to %struct.attr_counter*
  %89 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %90 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %89, i32 0, i32 2
  store %struct.attr_counter* %88, %struct.attr_counter** %90, align 8
  %91 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %92 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %91, i32 0, i32 2
  %93 = load %struct.attr_counter*, %struct.attr_counter** %92, align 8
  %94 = icmp eq %struct.attr_counter* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %257

96:                                               ; preds = %85
  br label %131

97:                                               ; preds = %80
  store %struct.attr_counter* null, %struct.attr_counter** %7, align 8
  %98 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %99 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %98, i32 0, i32 2
  %100 = load %struct.attr_counter*, %struct.attr_counter** %99, align 8
  store %struct.attr_counter* %100, %struct.attr_counter** %6, align 8
  br label %101

101:                                              ; preds = %117, %97
  %102 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %103 = icmp ne %struct.attr_counter* %102, null
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %106 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %111 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %121

115:                                              ; preds = %104
  %116 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  store %struct.attr_counter* %116, %struct.attr_counter** %7, align 8
  br label %117

117:                                              ; preds = %115
  %118 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %119 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %118, i32 0, i32 1
  %120 = load %struct.attr_counter*, %struct.attr_counter** %119, align 8
  store %struct.attr_counter* %120, %struct.attr_counter** %6, align 8
  br label %101

121:                                              ; preds = %114, %101
  %122 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %123 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %122, i32 0, i32 2
  %124 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %125 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %126 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %127 = call i64 @attr_counter_inc(%struct.attr_counter** %123, %struct.attr_counter* %124, %struct.attr_counter* %125, %struct.mtree_entry* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 -1, i32* %3, align 4
  br label %257

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %96
  br label %132

132:                                              ; preds = %131, %73
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @F_MODE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %189

137:                                              ; preds = %132
  %138 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %139 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %138, i32 0, i32 1
  %140 = load %struct.attr_counter*, %struct.attr_counter** %139, align 8
  %141 = icmp eq %struct.attr_counter* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %144 = call i8* @attr_counter_new(%struct.mtree_entry* %143, i32* null)
  %145 = bitcast i8* %144 to %struct.attr_counter*
  %146 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %147 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %146, i32 0, i32 1
  store %struct.attr_counter* %145, %struct.attr_counter** %147, align 8
  %148 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %149 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %148, i32 0, i32 1
  %150 = load %struct.attr_counter*, %struct.attr_counter** %149, align 8
  %151 = icmp eq %struct.attr_counter* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  store i32 -1, i32* %3, align 4
  br label %257

153:                                              ; preds = %142
  br label %188

154:                                              ; preds = %137
  store %struct.attr_counter* null, %struct.attr_counter** %7, align 8
  %155 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %156 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %155, i32 0, i32 1
  %157 = load %struct.attr_counter*, %struct.attr_counter** %156, align 8
  store %struct.attr_counter* %157, %struct.attr_counter** %6, align 8
  br label %158

158:                                              ; preds = %174, %154
  %159 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %160 = icmp ne %struct.attr_counter* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %163 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %168 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %178

172:                                              ; preds = %161
  %173 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  store %struct.attr_counter* %173, %struct.attr_counter** %7, align 8
  br label %174

174:                                              ; preds = %172
  %175 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %176 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %175, i32 0, i32 1
  %177 = load %struct.attr_counter*, %struct.attr_counter** %176, align 8
  store %struct.attr_counter* %177, %struct.attr_counter** %6, align 8
  br label %158

178:                                              ; preds = %171, %158
  %179 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %180 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %179, i32 0, i32 1
  %181 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %182 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %183 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %184 = call i64 @attr_counter_inc(%struct.attr_counter** %180, %struct.attr_counter* %181, %struct.attr_counter* %182, %struct.mtree_entry* %183)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  store i32 -1, i32* %3, align 4
  br label %257

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %153
  br label %189

189:                                              ; preds = %188, %132
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @F_FLAGS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %256

194:                                              ; preds = %189
  %195 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %196 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %195, i32 0, i32 0
  %197 = load %struct.attr_counter*, %struct.attr_counter** %196, align 8
  %198 = icmp eq %struct.attr_counter* %197, null
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %201 = call i8* @attr_counter_new(%struct.mtree_entry* %200, i32* null)
  %202 = bitcast i8* %201 to %struct.attr_counter*
  %203 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %204 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %203, i32 0, i32 0
  store %struct.attr_counter* %202, %struct.attr_counter** %204, align 8
  %205 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %206 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %205, i32 0, i32 0
  %207 = load %struct.attr_counter*, %struct.attr_counter** %206, align 8
  %208 = icmp eq %struct.attr_counter* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  store i32 -1, i32* %3, align 4
  br label %257

210:                                              ; preds = %199
  br label %255

211:                                              ; preds = %194
  store %struct.attr_counter* null, %struct.attr_counter** %7, align 8
  %212 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %213 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %212, i32 0, i32 0
  %214 = load %struct.attr_counter*, %struct.attr_counter** %213, align 8
  store %struct.attr_counter* %214, %struct.attr_counter** %6, align 8
  br label %215

215:                                              ; preds = %241, %211
  %216 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %217 = icmp ne %struct.attr_counter* %216, null
  br i1 %217, label %218, label %245

218:                                              ; preds = %215
  %219 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %220 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %225 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %223, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %218
  %229 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %230 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %229, i32 0, i32 0
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %235 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %233, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %228
  br label %245

239:                                              ; preds = %228, %218
  %240 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  store %struct.attr_counter* %240, %struct.attr_counter** %7, align 8
  br label %241

241:                                              ; preds = %239
  %242 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %243 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %242, i32 0, i32 1
  %244 = load %struct.attr_counter*, %struct.attr_counter** %243, align 8
  store %struct.attr_counter* %244, %struct.attr_counter** %6, align 8
  br label %215

245:                                              ; preds = %238, %215
  %246 = load %struct.att_counter_set*, %struct.att_counter_set** %8, align 8
  %247 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %246, i32 0, i32 0
  %248 = load %struct.attr_counter*, %struct.attr_counter** %6, align 8
  %249 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %250 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %251 = call i64 @attr_counter_inc(%struct.attr_counter** %247, %struct.attr_counter* %248, %struct.attr_counter* %249, %struct.mtree_entry* %250)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  store i32 -1, i32* %3, align 4
  br label %257

254:                                              ; preds = %245
  br label %255

255:                                              ; preds = %254, %210
  br label %256

256:                                              ; preds = %255, %189
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %253, %209, %186, %152, %129, %95, %70, %36
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i8* @attr_counter_new(%struct.mtree_entry*, i32*) #1

declare dso_local i64 @attr_counter_inc(%struct.attr_counter**, %struct.attr_counter*, %struct.attr_counter*, %struct.mtree_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
