; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_next_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_next_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.iso9660 = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.file_info*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.file_info**, %struct.file_info* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.file_info = type { i64, i64, i32, i32, i32, i32, %struct.file_info*, i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.anon = type { %struct.file_info*, %struct.file_info** }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"Failed to connect 'CL' pointer to 'RE' rr_moved pointer of Rockridge extensions: current position = %jd, CL offset = %jd\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.iso9660*, %struct.file_info**)* @next_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_cache_entry(%struct.archive_read* %0, %struct.iso9660* %1, %struct.file_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca %struct.file_info**, align 8
  %8 = alloca %struct.file_info*, align 8
  %9 = alloca %struct.anon, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file_info*, align 8
  %13 = alloca %struct.file_info*, align 8
  %14 = alloca %struct.file_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.iso9660* %1, %struct.iso9660** %6, align 8
  store %struct.file_info** %2, %struct.file_info*** %7, align 8
  %17 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %18 = call %struct.file_info* @cache_get_entry(%struct.iso9660* %17)
  store %struct.file_info* %18, %struct.file_info** %8, align 8
  %19 = load %struct.file_info*, %struct.file_info** %8, align 8
  %20 = icmp ne %struct.file_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.file_info*, %struct.file_info** %8, align 8
  %23 = load %struct.file_info**, %struct.file_info*** %7, align 8
  store %struct.file_info* %22, %struct.file_info** %23, align 8
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %405

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %216, %203, %196, %167, %25
  %27 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %28 = call %struct.file_info* @next_entry(%struct.iso9660* %27)
  store %struct.file_info* %28, %struct.file_info** %8, align 8
  %29 = load %struct.file_info**, %struct.file_info*** %7, align 8
  store %struct.file_info* %28, %struct.file_info** %29, align 8
  %30 = load %struct.file_info*, %struct.file_info** %8, align 8
  %31 = icmp eq %struct.file_info* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %26
  %33 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %34 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %40 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %39, i32 0, i32 3
  %41 = load %struct.file_info*, %struct.file_info** %40, align 8
  %42 = icmp ne %struct.file_info* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %45 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %44, i32 0, i32 3
  %46 = load %struct.file_info*, %struct.file_info** %45, align 8
  %47 = getelementptr inbounds %struct.file_info, %struct.file_info* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %52 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %53 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %52, i32 0, i32 3
  %54 = load %struct.file_info*, %struct.file_info** %53, align 8
  %55 = call i32 @cache_add_entry(%struct.iso9660* %51, %struct.file_info* %54)
  br label %56

56:                                               ; preds = %50, %43, %38, %32
  br label %57

57:                                               ; preds = %70, %56
  %58 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %59 = call %struct.file_info* @re_get_entry(%struct.iso9660* %58)
  store %struct.file_info* %59, %struct.file_info** %12, align 8
  %60 = icmp ne %struct.file_info* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %66, %61
  %63 = load %struct.file_info*, %struct.file_info** %12, align 8
  %64 = call %struct.file_info* @rede_get_entry(%struct.file_info* %63)
  store %struct.file_info* %64, %struct.file_info** %13, align 8
  %65 = icmp ne %struct.file_info* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %68 = load %struct.file_info*, %struct.file_info** %13, align 8
  %69 = call i32 @cache_add_entry(%struct.iso9660* %67, %struct.file_info* %68)
  br label %62

70:                                               ; preds = %62
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %73 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.file_info*, %struct.file_info** %74, align 8
  %76 = icmp ne %struct.file_info* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %79 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %80 = load %struct.file_info**, %struct.file_info*** %7, align 8
  %81 = call i32 @next_cache_entry(%struct.archive_read* %78, %struct.iso9660* %79, %struct.file_info** %80)
  store i32 %81, i32* %4, align 4
  br label %405

82:                                               ; preds = %71
  %83 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %83, i32* %4, align 4
  br label %405

84:                                               ; preds = %26
  %85 = load %struct.file_info*, %struct.file_info** %8, align 8
  %86 = getelementptr inbounds %struct.file_info, %struct.file_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %169

89:                                               ; preds = %84
  store %struct.file_info* null, %struct.file_info** %14, align 8
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %163, %89
  %91 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %92 = call %struct.file_info* @re_get_entry(%struct.iso9660* %91)
  store %struct.file_info* %92, %struct.file_info** %12, align 8
  %93 = load %struct.file_info*, %struct.file_info** %14, align 8
  %94 = icmp ne %struct.file_info* %92, %93
  br i1 %94, label %95, label %164

95:                                               ; preds = %90
  %96 = load %struct.file_info*, %struct.file_info** %14, align 8
  %97 = icmp eq %struct.file_info* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load %struct.file_info*, %struct.file_info** %12, align 8
  store %struct.file_info* %99, %struct.file_info** %14, align 8
  br label %100

100:                                              ; preds = %98, %95
  %101 = load %struct.file_info*, %struct.file_info** %12, align 8
  %102 = getelementptr inbounds %struct.file_info, %struct.file_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.file_info*, %struct.file_info** %8, align 8
  %105 = getelementptr inbounds %struct.file_info, %struct.file_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %159

108:                                              ; preds = %100
  %109 = load %struct.file_info*, %struct.file_info** %12, align 8
  %110 = getelementptr inbounds %struct.file_info, %struct.file_info* %109, i32 0, i32 10
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.file_info*, %struct.file_info** %8, align 8
  %116 = getelementptr inbounds %struct.file_info, %struct.file_info* %115, i32 0, i32 10
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load %struct.file_info*, %struct.file_info** %12, align 8
  %119 = getelementptr inbounds %struct.file_info, %struct.file_info* %118, i32 0, i32 10
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %119, align 8
  %120 = load %struct.file_info*, %struct.file_info** %12, align 8
  %121 = getelementptr inbounds %struct.file_info, %struct.file_info* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.file_info*, %struct.file_info** %12, align 8
  %123 = getelementptr inbounds %struct.file_info, %struct.file_info* %122, i32 0, i32 10
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %108
  store i32 1, i32* %15, align 4
  %129 = load %struct.file_info*, %struct.file_info** %12, align 8
  %130 = getelementptr inbounds %struct.file_info, %struct.file_info* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  %131 = load %struct.file_info*, %struct.file_info** %12, align 8
  %132 = call i64 @rede_add_entry(%struct.file_info* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %391

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %145, %135
  %137 = load %struct.file_info*, %struct.file_info** %12, align 8
  %138 = call %struct.file_info* @rede_get_entry(%struct.file_info* %137)
  store %struct.file_info* %138, %struct.file_info** %13, align 8
  %139 = icmp ne %struct.file_info* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.file_info*, %struct.file_info** %13, align 8
  %142 = call i64 @rede_add_entry(%struct.file_info* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %391

145:                                              ; preds = %140
  br label %136

146:                                              ; preds = %136
  br label %164

147:                                              ; preds = %108
  %148 = load %struct.file_info*, %struct.file_info** %12, align 8
  store %struct.file_info* %148, %struct.file_info** %8, align 8
  %149 = load %struct.file_info**, %struct.file_info*** %7, align 8
  store %struct.file_info* %148, %struct.file_info** %149, align 8
  br label %150

150:                                              ; preds = %154, %147
  %151 = load %struct.file_info*, %struct.file_info** %8, align 8
  %152 = call %struct.file_info* @rede_get_entry(%struct.file_info* %151)
  store %struct.file_info* %152, %struct.file_info** %13, align 8
  %153 = icmp ne %struct.file_info* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %156 = load %struct.file_info*, %struct.file_info** %13, align 8
  %157 = call i32 @cache_add_entry(%struct.iso9660* %155, %struct.file_info* %156)
  br label %150

158:                                              ; preds = %150
  br label %164

159:                                              ; preds = %100
  %160 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %161 = load %struct.file_info*, %struct.file_info** %12, align 8
  %162 = call i32 @re_add_entry(%struct.iso9660* %160, %struct.file_info* %161)
  br label %163

163:                                              ; preds = %159
  br label %90

164:                                              ; preds = %158, %146, %90
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %26

168:                                              ; preds = %164
  br label %222

169:                                              ; preds = %84
  %170 = load %struct.file_info*, %struct.file_info** %8, align 8
  %171 = getelementptr inbounds %struct.file_info, %struct.file_info* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AE_IFMT, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @AE_IFDIR, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %221

177:                                              ; preds = %169
  %178 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %179 = load %struct.file_info*, %struct.file_info** %8, align 8
  %180 = call i32 @read_children(%struct.archive_read* %178, %struct.file_info* %179)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @ARCHIVE_OK, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* %4, align 4
  br label %405

186:                                              ; preds = %177
  %187 = load %struct.file_info*, %struct.file_info** %8, align 8
  %188 = getelementptr inbounds %struct.file_info, %struct.file_info* %187, i32 0, i32 9
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = load %struct.file_info*, %struct.file_info** %8, align 8
  %193 = getelementptr inbounds %struct.file_info, %struct.file_info* %192, i32 0, i32 8
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %26

197:                                              ; preds = %191
  br label %220

198:                                              ; preds = %186
  %199 = load %struct.file_info*, %struct.file_info** %8, align 8
  %200 = getelementptr inbounds %struct.file_info, %struct.file_info* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %205 = load %struct.file_info*, %struct.file_info** %8, align 8
  %206 = call i32 @re_add_entry(%struct.iso9660* %204, %struct.file_info* %205)
  br label %26

207:                                              ; preds = %198
  %208 = load %struct.file_info*, %struct.file_info** %8, align 8
  %209 = getelementptr inbounds %struct.file_info, %struct.file_info* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.file_info*, %struct.file_info** %8, align 8
  %214 = call i64 @rede_add_entry(%struct.file_info* %213)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %26

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217, %207
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219, %197
  br label %221

221:                                              ; preds = %220, %169
  br label %222

222:                                              ; preds = %221, %168
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.file_info*, %struct.file_info** %8, align 8
  %225 = getelementptr inbounds %struct.file_info, %struct.file_info* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @AE_IFMT, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @AE_IFREG, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %236, label %231

231:                                              ; preds = %223
  %232 = load %struct.file_info*, %struct.file_info** %8, align 8
  %233 = getelementptr inbounds %struct.file_info, %struct.file_info* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %238

236:                                              ; preds = %231, %223
  %237 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %237, i32* %4, align 4
  br label %405

238:                                              ; preds = %231
  store i32 0, i32* %11, align 4
  %239 = load %struct.file_info*, %struct.file_info** %8, align 8
  %240 = getelementptr inbounds %struct.file_info, %struct.file_info* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %10, align 4
  %242 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %243 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  store %struct.file_info* null, %struct.file_info** %244, align 8
  %245 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %246 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %249 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  store %struct.file_info** %247, %struct.file_info*** %250, align 8
  %251 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  store %struct.file_info* null, %struct.file_info** %251, align 8
  %252 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %253 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  store %struct.file_info** %252, %struct.file_info*** %253, align 8
  br label %254

254:                                              ; preds = %305, %238
  %255 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %256 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %254
  %261 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %262 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %264, i64 0
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %281, label %270

270:                                              ; preds = %260
  %271 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %272 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %274, i64 0
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp eq i32 %278, %279
  br label %281

281:                                              ; preds = %270, %260
  %282 = phi i1 [ true, %260 ], [ %280, %270 ]
  br label %283

283:                                              ; preds = %281, %254
  %284 = phi i1 [ false, %254 ], [ %282, %281 ]
  br i1 %284, label %285, label %308

285:                                              ; preds = %283
  %286 = load %struct.file_info*, %struct.file_info** %8, align 8
  %287 = getelementptr inbounds %struct.file_info, %struct.file_info* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = load %struct.file_info*, %struct.file_info** %8, align 8
  %292 = getelementptr inbounds %struct.file_info, %struct.file_info* %291, i32 0, i32 6
  store %struct.file_info* null, %struct.file_info** %292, align 8
  %293 = load %struct.file_info*, %struct.file_info** %8, align 8
  %294 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %295 = load %struct.file_info**, %struct.file_info*** %294, align 8
  store %struct.file_info* %293, %struct.file_info** %295, align 8
  %296 = load %struct.file_info*, %struct.file_info** %8, align 8
  %297 = getelementptr inbounds %struct.file_info, %struct.file_info* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  store %struct.file_info** %297, %struct.file_info*** %298, align 8
  br label %305

299:                                              ; preds = %285
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %11, align 4
  %302 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %303 = load %struct.file_info*, %struct.file_info** %8, align 8
  %304 = call i32 @cache_add_entry(%struct.iso9660* %302, %struct.file_info* %303)
  br label %305

305:                                              ; preds = %299, %290
  %306 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %307 = call %struct.file_info* @next_entry(%struct.iso9660* %306)
  store %struct.file_info* %307, %struct.file_info** %8, align 8
  br label %254

308:                                              ; preds = %283
  %309 = load i32, i32* %11, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %308
  %312 = load %struct.file_info*, %struct.file_info** %8, align 8
  %313 = load %struct.file_info**, %struct.file_info*** %7, align 8
  store %struct.file_info* %312, %struct.file_info** %313, align 8
  %314 = load %struct.file_info*, %struct.file_info** %8, align 8
  %315 = icmp eq %struct.file_info* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = load i32, i32* @ARCHIVE_EOF, align 4
  br label %320

318:                                              ; preds = %311
  %319 = load i32, i32* @ARCHIVE_OK, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %317, %316 ], [ %319, %318 ]
  store i32 %321, i32* %4, align 4
  br label %405

322:                                              ; preds = %308
  %323 = load %struct.file_info*, %struct.file_info** %8, align 8
  %324 = getelementptr inbounds %struct.file_info, %struct.file_info* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, -1
  br i1 %326, label %327, label %336

327:                                              ; preds = %322
  %328 = load %struct.file_info*, %struct.file_info** %8, align 8
  %329 = getelementptr inbounds %struct.file_info, %struct.file_info* %328, i32 0, i32 6
  store %struct.file_info* null, %struct.file_info** %329, align 8
  %330 = load %struct.file_info*, %struct.file_info** %8, align 8
  %331 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %332 = load %struct.file_info**, %struct.file_info*** %331, align 8
  store %struct.file_info* %330, %struct.file_info** %332, align 8
  %333 = load %struct.file_info*, %struct.file_info** %8, align 8
  %334 = getelementptr inbounds %struct.file_info, %struct.file_info* %333, i32 0, i32 6
  %335 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  store %struct.file_info** %334, %struct.file_info*** %335, align 8
  br label %342

336:                                              ; preds = %322
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %11, align 4
  %339 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %340 = load %struct.file_info*, %struct.file_info** %8, align 8
  %341 = call i32 @cache_add_entry(%struct.iso9660* %339, %struct.file_info* %340)
  br label %342

342:                                              ; preds = %336, %327
  %343 = load i32, i32* %11, align 4
  %344 = icmp sgt i32 %343, 1
  br i1 %344, label %345, label %362

345:                                              ; preds = %342
  %346 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %347 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  %349 = load %struct.file_info*, %struct.file_info** %348, align 8
  store %struct.file_info* %349, %struct.file_info** %8, align 8
  br label %350

350:                                              ; preds = %357, %345
  %351 = load %struct.file_info*, %struct.file_info** %8, align 8
  %352 = icmp ne %struct.file_info* %351, null
  br i1 %352, label %353, label %361

353:                                              ; preds = %350
  %354 = load i32, i32* %11, align 4
  %355 = load %struct.file_info*, %struct.file_info** %8, align 8
  %356 = getelementptr inbounds %struct.file_info, %struct.file_info* %355, i32 0, i32 5
  store i32 %354, i32* %356, align 4
  br label %357

357:                                              ; preds = %353
  %358 = load %struct.file_info*, %struct.file_info** %8, align 8
  %359 = getelementptr inbounds %struct.file_info, %struct.file_info* %358, i32 0, i32 6
  %360 = load %struct.file_info*, %struct.file_info** %359, align 8
  store %struct.file_info* %360, %struct.file_info** %8, align 8
  br label %350

361:                                              ; preds = %350
  br label %362

362:                                              ; preds = %361, %342
  %363 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %364 = load %struct.file_info*, %struct.file_info** %363, align 8
  %365 = icmp ne %struct.file_info* %364, null
  br i1 %365, label %366, label %378

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %368 = load %struct.file_info*, %struct.file_info** %367, align 8
  %369 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %370 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 0
  %372 = load %struct.file_info**, %struct.file_info*** %371, align 8
  store %struct.file_info* %368, %struct.file_info** %372, align 8
  %373 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %374 = load %struct.file_info**, %struct.file_info*** %373, align 8
  %375 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %376 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  store %struct.file_info** %374, %struct.file_info*** %377, align 8
  br label %378

378:                                              ; preds = %366, %362
  %379 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %380 = call %struct.file_info* @cache_get_entry(%struct.iso9660* %379)
  %381 = load %struct.file_info**, %struct.file_info*** %7, align 8
  store %struct.file_info* %380, %struct.file_info** %381, align 8
  %382 = load %struct.file_info**, %struct.file_info*** %7, align 8
  %383 = load %struct.file_info*, %struct.file_info** %382, align 8
  %384 = icmp eq %struct.file_info* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %378
  %386 = load i32, i32* @ARCHIVE_EOF, align 4
  br label %389

387:                                              ; preds = %378
  %388 = load i32, i32* @ARCHIVE_OK, align 4
  br label %389

389:                                              ; preds = %387, %385
  %390 = phi i32 [ %386, %385 ], [ %388, %387 ]
  store i32 %390, i32* %4, align 4
  br label %405

391:                                              ; preds = %144, %134
  %392 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %393 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %392, i32 0, i32 0
  %394 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %395 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %396 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = load %struct.file_info*, %struct.file_info** %8, align 8
  %400 = getelementptr inbounds %struct.file_info, %struct.file_info* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = trunc i64 %401 to i32
  %403 = call i32 @archive_set_error(i32* %393, i32 %394, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %398, i32 %402)
  %404 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %404, i32* %4, align 4
  br label %405

405:                                              ; preds = %391, %389, %320, %236, %184, %82, %77, %21
  %406 = load i32, i32* %4, align 4
  ret i32 %406
}

declare dso_local %struct.file_info* @cache_get_entry(%struct.iso9660*) #1

declare dso_local %struct.file_info* @next_entry(%struct.iso9660*) #1

declare dso_local i32 @cache_add_entry(%struct.iso9660*, %struct.file_info*) #1

declare dso_local %struct.file_info* @re_get_entry(%struct.iso9660*) #1

declare dso_local %struct.file_info* @rede_get_entry(%struct.file_info*) #1

declare dso_local i64 @rede_add_entry(%struct.file_info*) #1

declare dso_local i32 @re_add_entry(%struct.iso9660*, %struct.file_info*) #1

declare dso_local i32 @read_children(%struct.archive_read*, %struct.file_info*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
