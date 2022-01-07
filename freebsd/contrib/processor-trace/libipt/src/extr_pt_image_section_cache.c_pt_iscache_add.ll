; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32, i64, %struct.pt_iscache_entry* }
%struct.pt_iscache_entry = type { i32, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_add(%struct.pt_image_section_cache* %0, %struct.pt_section* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_image_section_cache*, align 8
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pt_iscache_entry*, align 8
  %14 = alloca %struct.pt_section*, align 8
  %15 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %5, align 8
  store %struct.pt_section* %1, %struct.pt_section** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %17 = icmp ne %struct.pt_image_section_cache* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %20 = icmp ne %struct.pt_section* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %262

24:                                               ; preds = %18
  %25 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %26 = call i8* @pt_section_filename(%struct.pt_section* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @pte_internal, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %262

32:                                               ; preds = %24
  %33 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %34 = call i32 @pt_section_offset(%struct.pt_section* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %36 = call i32 @pt_section_size(%struct.pt_section* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %38 = call i32 @pt_section_get(%struct.pt_section* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %262

43:                                               ; preds = %32
  %44 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %45 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %46 = call i32 @pt_section_attach(%struct.pt_section* %44, %struct.pt_image_section_cache* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %258

50:                                               ; preds = %43
  %51 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %52 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %251

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %177, %56
  %58 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pt_iscache_find_section_locked(%struct.pt_image_section_cache* %58, i8* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %12, align 4
  br label %248

68:                                               ; preds = %57
  %69 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %70 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %179

75:                                               ; preds = %68
  %76 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %77 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %76, i32 0, i32 2
  %78 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %78, i64 %80
  store %struct.pt_iscache_entry* %81, %struct.pt_iscache_entry** %13, align 8
  %82 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %13, align 8
  %83 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %82, i32 0, i32 1
  %84 = load %struct.pt_section*, %struct.pt_section** %83, align 8
  store %struct.pt_section* %84, %struct.pt_section** %14, align 8
  %85 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  %86 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %87 = icmp eq %struct.pt_section* %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %75
  %89 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %13, align 8
  %90 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %96 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %251

100:                                              ; preds = %94
  %101 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %102 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %103 = call i32 @pt_section_detach(%struct.pt_section* %101, %struct.pt_image_section_cache* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %255

107:                                              ; preds = %100
  %108 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %109 = call i32 @pt_section_put(%struct.pt_section* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %262

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = call i32 @isid_from_index(i64 %116)
  store i32 %117, i32* %4, align 4
  br label %262

118:                                              ; preds = %88
  br label %179

119:                                              ; preds = %75
  %120 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  %121 = call i32 @pt_section_get(%struct.pt_section* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %248

125:                                              ; preds = %119
  %126 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %127 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  %132 = call i32 @pt_section_put(%struct.pt_section* %131)
  br label %251

133:                                              ; preds = %125
  %134 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %135 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %136 = call i32 @pt_section_detach(%struct.pt_section* %134, %struct.pt_image_section_cache* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  %141 = call i32 @pt_section_put(%struct.pt_section* %140)
  br label %255

142:                                              ; preds = %133
  %143 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  %144 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %145 = call i32 @pt_section_attach(%struct.pt_section* %143, %struct.pt_image_section_cache* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  %150 = call i32 @pt_section_put(%struct.pt_section* %149)
  br label %255

151:                                              ; preds = %142
  %152 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %153 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %158 = call i32 @pt_section_put(%struct.pt_section* %157)
  %159 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  store %struct.pt_section* %159, %struct.pt_section** %6, align 8
  br label %251

160:                                              ; preds = %151
  %161 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %162 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %163 = call i32 @pt_iscache_lru_remove(%struct.pt_image_section_cache* %161, %struct.pt_section* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %168 = call i32 @pt_section_put(%struct.pt_section* %167)
  %169 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  store %struct.pt_section* %169, %struct.pt_section** %6, align 8
  br label %248

170:                                              ; preds = %160
  %171 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %172 = call i32 @pt_section_put(%struct.pt_section* %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  store %struct.pt_section* %176, %struct.pt_section** %6, align 8
  br label %248

177:                                              ; preds = %170
  %178 = load %struct.pt_section*, %struct.pt_section** %14, align 8
  store %struct.pt_section* %178, %struct.pt_section** %6, align 8
  br label %57

179:                                              ; preds = %118, %74
  %180 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %181 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %184 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = icmp sle i64 %182, %186
  br i1 %187, label %188, label %219

188:                                              ; preds = %179
  %189 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %190 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %193 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %191, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load i32, i32* @pte_internal, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %12, align 4
  br label %248

200:                                              ; preds = %188
  %201 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %202 = call i32 @pt_iscache_expand(%struct.pt_image_section_cache* %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %248

206:                                              ; preds = %200
  %207 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %208 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %211 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = icmp sle i64 %209, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  %216 = load i32, i32* @pte_internal, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %12, align 4
  br label %248

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %179
  %220 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %221 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = sext i32 %222 to i64
  store i64 %224, i64* %11, align 8
  %225 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %226 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %227 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %226, i32 0, i32 2
  %228 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %227, align 8
  %229 = load i64, i64* %11, align 8
  %230 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %228, i64 %229
  %231 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %230, i32 0, i32 1
  store %struct.pt_section* %225, %struct.pt_section** %231, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %234 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %233, i32 0, i32 2
  %235 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %234, align 8
  %236 = load i64, i64* %11, align 8
  %237 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %235, i64 %236
  %238 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %237, i32 0, i32 0
  store i32 %232, i32* %238, align 8
  %239 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %240 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %239)
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %219
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %4, align 4
  br label %262

245:                                              ; preds = %219
  %246 = load i64, i64* %11, align 8
  %247 = call i32 @isid_from_index(i64 %246)
  store i32 %247, i32* %4, align 4
  br label %262

248:                                              ; preds = %215, %205, %197, %175, %166, %124, %66
  %249 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %250 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %249)
  br label %251

251:                                              ; preds = %248, %156, %130, %99, %55
  %252 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %253 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %254 = call i32 @pt_section_detach(%struct.pt_section* %252, %struct.pt_image_section_cache* %253)
  br label %255

255:                                              ; preds = %251, %148, %139, %106
  %256 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %5, align 8
  %257 = call i32 @pt_iscache_lru_clear(%struct.pt_image_section_cache* %256)
  br label %258

258:                                              ; preds = %255, %49
  %259 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %260 = call i32 @pt_section_put(%struct.pt_section* %259)
  %261 = load i32, i32* %12, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %258, %245, %243, %114, %112, %41, %29, %21
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i8* @pt_section_filename(%struct.pt_section*) #1

declare dso_local i32 @pt_section_offset(%struct.pt_section*) #1

declare dso_local i32 @pt_section_size(%struct.pt_section*) #1

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

declare dso_local i32 @pt_section_attach(%struct.pt_section*, %struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_find_section_locked(%struct.pt_image_section_cache*, i8*, i32, i32, i32) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_section_detach(%struct.pt_section*, %struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

declare dso_local i32 @isid_from_index(i64) #1

declare dso_local i32 @pt_iscache_lru_remove(%struct.pt_image_section_cache*, %struct.pt_section*) #1

declare dso_local i32 @pt_iscache_expand(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_lru_clear(%struct.pt_image_section_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
