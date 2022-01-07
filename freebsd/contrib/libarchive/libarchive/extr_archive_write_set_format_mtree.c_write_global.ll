; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_write_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_write_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, %struct.TYPE_20__, %struct.archive_string, i64, %struct.att_counter_set }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.archive_string = type { i64, i32 }
%struct.att_counter_set = type { %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }

@SET_KEYS = common dso_local global i32 0, align 4
@F_TYPE = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@F_UID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@F_GID = common dso_local global i32 0, align 4
@F_MODE = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" type=dir\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" type=file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" uname=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" uname\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" uid=%jd\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" gname=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" gname\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" gid=%jd\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" mode=%o\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" flags=\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" flags\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"/unset%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"/set%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*)* @write_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_global(%struct.mtree_writer* %0) #0 {
  %2 = alloca %struct.mtree_writer*, align 8
  %3 = alloca %struct.archive_string, align 8
  %4 = alloca %struct.archive_string, align 8
  %5 = alloca %struct.att_counter_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtree_writer* %0, %struct.mtree_writer** %2, align 8
  %9 = call i32 @archive_string_init(%struct.archive_string* %3)
  %10 = call i32 @archive_string_init(%struct.archive_string* %4)
  %11 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %12 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SET_KEYS, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %17 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %22 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %21, i32 0, i32 4
  store %struct.att_counter_set* %22, %struct.att_counter_set** %5, align 8
  %23 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %24 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %226

28:                                               ; preds = %1
  %29 = load i32, i32* @F_TYPE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %34 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %33, i32 0, i32 3
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = icmp eq %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i32, i32* @F_UNAME, align 4
  %39 = load i32, i32* @F_UID, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %80

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @F_UNAME, align 4
  %47 = load i32, i32* @F_UID, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %44
  %52 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %53 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %52, i32 0, i32 3
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %71, label %58

58:                                               ; preds = %51
  %59 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %60 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %64 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %63, i32 0, i32 3
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %62, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %58, %51
  %72 = load i32, i32* @F_UNAME, align 4
  %73 = load i32, i32* @F_UID, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %71, %58
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %37
  %81 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %82 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %81, i32 0, i32 2
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = icmp eq %struct.TYPE_17__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @F_GNAME, align 4
  %87 = load i32, i32* @F_GID, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %128

92:                                               ; preds = %80
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @F_GNAME, align 4
  %95 = load i32, i32* @F_GID, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %92
  %100 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %101 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %100, i32 0, i32 2
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %119, label %106

106:                                              ; preds = %99
  %107 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %108 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %112 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %111, i32 0, i32 2
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %110, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %106, %99
  %120 = load i32, i32* @F_GNAME, align 4
  %121 = load i32, i32* @F_GID, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %119, %106
  br label %127

127:                                              ; preds = %126, %92
  br label %128

128:                                              ; preds = %127, %85
  %129 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %130 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = icmp eq %struct.TYPE_18__* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @F_MODE, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %170

138:                                              ; preds = %128
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @F_MODE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %169

143:                                              ; preds = %138
  %144 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %145 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %144, i32 0, i32 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %163, label %150

150:                                              ; preds = %143
  %151 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %152 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %156 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %154, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %150, %143
  %164 = load i32, i32* @F_MODE, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %163, %150
  br label %169

169:                                              ; preds = %168, %138
  br label %170

170:                                              ; preds = %169, %133
  %171 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %172 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %171, i32 0, i32 0
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  %174 = icmp eq %struct.TYPE_19__* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* @F_FLAGS, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %8, align 4
  br label %225

180:                                              ; preds = %170
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @F_FLAGS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %224

185:                                              ; preds = %180
  %186 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %187 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %186, i32 0, i32 0
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %218, label %192

192:                                              ; preds = %185
  %193 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %194 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %193, i32 0, i32 0
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %201 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %199, %203
  br i1 %204, label %205, label %223

205:                                              ; preds = %192
  %206 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %207 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %206, i32 0, i32 0
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %214 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %212, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %205, %185
  %219 = load i32, i32* @F_FLAGS, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %8, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %8, align 4
  br label %223

223:                                              ; preds = %218, %205, %192
  br label %224

224:                                              ; preds = %223, %180
  br label %225

225:                                              ; preds = %224, %175
  br label %271

226:                                              ; preds = %1
  %227 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %228 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %227, i32 0, i32 3
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = icmp eq %struct.TYPE_16__* %229, null
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load i32, i32* @F_UNAME, align 4
  %233 = load i32, i32* @F_UID, align 4
  %234 = or i32 %232, %233
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %6, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %231, %226
  %239 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %240 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %239, i32 0, i32 2
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = icmp eq %struct.TYPE_17__* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i32, i32* @F_GNAME, align 4
  %245 = load i32, i32* @F_GID, align 4
  %246 = or i32 %244, %245
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %6, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %243, %238
  %251 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %252 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %251, i32 0, i32 1
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  %254 = icmp eq %struct.TYPE_18__* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i32, i32* @F_MODE, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %6, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %255, %250
  %261 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %262 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %261, i32 0, i32 0
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %262, align 8
  %264 = icmp eq %struct.TYPE_19__* %263, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load i32, i32* @F_FLAGS, align 4
  %267 = xor i32 %266, -1
  %268 = load i32, i32* %6, align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* %6, align 4
  br label %270

270:                                              ; preds = %265, %260
  br label %271

271:                                              ; preds = %270, %225
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* %8, align 4
  %274 = and i32 %272, %273
  %275 = load i32, i32* @F_TYPE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %271
  %279 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %280 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %285 = load i32, i32* @AE_IFDIR, align 4
  %286 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %287 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 7
  store i32 %285, i32* %288, align 8
  br label %295

289:                                              ; preds = %278
  %290 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %291 = load i32, i32* @AE_IFREG, align 4
  %292 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %293 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 7
  store i32 %291, i32* %294, align 8
  br label %295

295:                                              ; preds = %289, %283
  br label %296

296:                                              ; preds = %295, %271
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* %8, align 4
  %299 = and i32 %297, %298
  %300 = load i32, i32* @F_UNAME, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %336

303:                                              ; preds = %296
  %304 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %305 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %304, i32 0, i32 3
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = call i64 @archive_strlen(%struct.TYPE_11__* %309)
  %311 = icmp sgt i64 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %303
  %313 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %314 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %315 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %314, i32 0, i32 3
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @mtree_quote(%struct.archive_string* %3, i32 %321)
  br label %335

323:                                              ; preds = %303
  %324 = load i32, i32* @F_UNAME, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %6, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @F_UNAME, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %323
  %333 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %323
  br label %335

335:                                              ; preds = %334, %312
  br label %336

336:                                              ; preds = %335, %296
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %8, align 4
  %339 = and i32 %337, %338
  %340 = load i32, i32* @F_UID, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %360

343:                                              ; preds = %336
  %344 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %345 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %344, i32 0, i32 3
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %352 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 2
  store i64 %350, i64* %353, align 8
  %354 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %355 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = call i32 @archive_string_sprintf(%struct.archive_string* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %343, %336
  %361 = load i32, i32* %6, align 4
  %362 = load i32, i32* %8, align 4
  %363 = and i32 %361, %362
  %364 = load i32, i32* @F_GNAME, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %400

367:                                              ; preds = %360
  %368 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %369 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %368, i32 0, i32 2
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 1
  %374 = call i64 @archive_strlen(%struct.TYPE_11__* %373)
  %375 = icmp sgt i64 %374, 0
  br i1 %375, label %376, label %387

376:                                              ; preds = %367
  %377 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %378 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %379 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %378, i32 0, i32 2
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @mtree_quote(%struct.archive_string* %3, i32 %385)
  br label %399

387:                                              ; preds = %367
  %388 = load i32, i32* @F_GNAME, align 4
  %389 = xor i32 %388, -1
  %390 = load i32, i32* %6, align 4
  %391 = and i32 %390, %389
  store i32 %391, i32* %6, align 4
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* @F_GNAME, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %398

398:                                              ; preds = %396, %387
  br label %399

399:                                              ; preds = %398, %376
  br label %400

400:                                              ; preds = %399, %360
  %401 = load i32, i32* %6, align 4
  %402 = load i32, i32* %8, align 4
  %403 = and i32 %401, %402
  %404 = load i32, i32* @F_GID, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %424

407:                                              ; preds = %400
  %408 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %409 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %408, i32 0, i32 2
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %416 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 3
  store i64 %414, i64* %417, align 8
  %418 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %419 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = trunc i64 %421 to i32
  %423 = call i32 @archive_string_sprintf(%struct.archive_string* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %422)
  br label %424

424:                                              ; preds = %407, %400
  %425 = load i32, i32* %6, align 4
  %426 = load i32, i32* %8, align 4
  %427 = and i32 %425, %426
  %428 = load i32, i32* @F_MODE, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %448

431:                                              ; preds = %424
  %432 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %433 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %432, i32 0, i32 1
  %434 = load %struct.TYPE_18__*, %struct.TYPE_18__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_14__*, %struct.TYPE_14__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %440 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 4
  store i64 %438, i64* %441, align 8
  %442 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %443 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 4
  %445 = load i64, i64* %444, align 8
  %446 = trunc i64 %445 to i32
  %447 = call i32 @archive_string_sprintf(%struct.archive_string* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %446)
  br label %448

448:                                              ; preds = %431, %424
  %449 = load i32, i32* %6, align 4
  %450 = load i32, i32* %8, align 4
  %451 = and i32 %449, %450
  %452 = load i32, i32* @F_FLAGS, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %508

455:                                              ; preds = %448
  %456 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %457 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %456, i32 0, i32 0
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 2
  %462 = call i64 @archive_strlen(%struct.TYPE_11__* %461)
  %463 = icmp sgt i64 %462, 0
  br i1 %463, label %464, label %495

464:                                              ; preds = %455
  %465 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %466 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %467 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %466, i32 0, i32 0
  %468 = load %struct.TYPE_19__*, %struct.TYPE_19__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 1
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @mtree_quote(%struct.archive_string* %3, i32 %473)
  %475 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %476 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %475, i32 0, i32 0
  %477 = load %struct.TYPE_19__*, %struct.TYPE_19__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_15__*, %struct.TYPE_15__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %483 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 5
  store i64 %481, i64* %484, align 8
  %485 = load %struct.att_counter_set*, %struct.att_counter_set** %5, align 8
  %486 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %485, i32 0, i32 0
  %487 = load %struct.TYPE_19__*, %struct.TYPE_19__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_15__*, %struct.TYPE_15__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %493 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 6
  store i64 %491, i64* %494, align 8
  br label %507

495:                                              ; preds = %455
  %496 = load i32, i32* @F_FLAGS, align 4
  %497 = xor i32 %496, -1
  %498 = load i32, i32* %6, align 4
  %499 = and i32 %498, %497
  store i32 %499, i32* %6, align 4
  %500 = load i32, i32* %7, align 4
  %501 = load i32, i32* @F_FLAGS, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %495
  %505 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %506

506:                                              ; preds = %504, %495
  br label %507

507:                                              ; preds = %506, %464
  br label %508

508:                                              ; preds = %507, %448
  %509 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = icmp sgt i64 %510, 0
  br i1 %511, label %512, label %518

512:                                              ; preds = %508
  %513 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %514 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @archive_string_sprintf(%struct.archive_string* %514, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %516)
  br label %518

518:                                              ; preds = %512, %508
  %519 = call i32 @archive_string_free(%struct.archive_string* %4)
  %520 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = icmp sgt i64 %521, 0
  br i1 %522, label %523, label %529

523:                                              ; preds = %518
  %524 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %525 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = call i32 @archive_string_sprintf(%struct.archive_string* %525, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %527)
  br label %529

529:                                              ; preds = %523, %518
  %530 = call i32 @archive_string_free(%struct.archive_string* %3)
  %531 = load i32, i32* %6, align 4
  %532 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %533 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i32 0, i32 0
  store i32 %531, i32* %534, align 8
  %535 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %536 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %536, i32 0, i32 1
  store i32 1, i32* %537, align 4
  ret void
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_11__*) #1

declare dso_local i32 @mtree_quote(%struct.archive_string*, i32) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
