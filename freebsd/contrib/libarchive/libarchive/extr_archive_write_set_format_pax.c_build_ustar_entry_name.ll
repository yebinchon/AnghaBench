; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_build_ustar_entry_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_build_ustar_entry_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i8*)* @build_ustar_entry_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_ustar_entry_name(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %17, align 4
  store i64 99, i64* %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i64 0, i64* %19, align 8
  br label %28

23:                                               ; preds = %4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %19, align 8
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %29, 100
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @strncpy(i8* %35, i8* %36, i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %5, align 8
  br label %299

44:                                               ; preds = %31, %28
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %15, align 8
  br label %48

48:                                               ; preds = %78, %58, %44
  %49 = load i8*, i8** %15, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 -1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %15, align 8
  store i32 1, i32* %17, align 4
  br label %48

61:                                               ; preds = %52, %48
  %62 = load i8*, i8** %15, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = icmp ugt i8* %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i8*, i8** %15, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -2
  store i8* %80, i8** %15, align 8
  store i32 1, i32* %17, align 4
  br label %48

81:                                               ; preds = %72, %66, %61
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %18, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %18, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %102, %88
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ugt i8* %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i8*, i8** %14, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 47
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i1 [ false, %91 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %14, align 8
  br label %91

105:                                              ; preds = %100
  %106 = load i8*, i8** %14, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 47
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i8*, i8** %14, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = icmp ult i8* %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %14, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %14, align 8
  br label %118

118:                                              ; preds = %115, %110, %105
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* %18, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %18, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = icmp ugt i8* %122, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load i8*, i8** %14, align 8
  %129 = load i64, i64* %18, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %15, align 8
  br label %131

131:                                              ; preds = %127, %118
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = load i64, i64* %18, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %18, align 8
  %139 = load i8*, i8** %7, align 8
  store i8* %139, i8** %10, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 155
  store i8* %141, i8** %11, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = icmp ugt i8* %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = load i8*, i8** %14, align 8
  store i8* %146, i8** %11, align 8
  br label %147

147:                                              ; preds = %145, %131
  br label %148

148:                                              ; preds = %159, %147
  %149 = load i8*, i8** %11, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = icmp ugt i8* %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 47
  br label %157

157:                                              ; preds = %152, %148
  %158 = phi i1 [ false, %148 ], [ %156, %152 ]
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 -1
  store i8* %161, i8** %11, align 8
  br label %148

162:                                              ; preds = %157
  %163 = load i8*, i8** %11, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = icmp ult i8* %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = load i8*, i8** %11, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 47
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %11, align 8
  br label %174

174:                                              ; preds = %171, %166, %162
  %175 = load i8*, i8** %11, align 8
  store i8* %175, i8** %12, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load i64, i64* %18, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %13, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = icmp ugt i8* %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i8*, i8** %14, align 8
  store i8* %183, i8** %13, align 8
  br label %184

184:                                              ; preds = %182, %174
  %185 = load i8*, i8** %13, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = icmp ult i8* %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i8*, i8** %12, align 8
  store i8* %189, i8** %13, align 8
  br label %190

190:                                              ; preds = %188, %184
  br label %191

191:                                              ; preds = %202, %190
  %192 = load i8*, i8** %13, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = icmp ugt i8* %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i8*, i8** %13, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 47
  br label %200

200:                                              ; preds = %195, %191
  %201 = phi i1 [ false, %191 ], [ %199, %195 ]
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = load i8*, i8** %13, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 -1
  store i8* %204, i8** %13, align 8
  br label %191

205:                                              ; preds = %200
  %206 = load i8*, i8** %13, align 8
  %207 = load i8*, i8** %14, align 8
  %208 = icmp ult i8* %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load i8*, i8** %13, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 47
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i8*, i8** %13, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %13, align 8
  br label %217

217:                                              ; preds = %214, %209, %205
  %218 = load i8*, i8** %6, align 8
  store i8* %218, i8** %16, align 8
  %219 = load i8*, i8** %11, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = icmp ugt i8* %219, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = load i8*, i8** %16, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  %231 = call i32 @strncpy(i8* %223, i8* %224, i32 %230)
  %232 = load i8*, i8** %11, align 8
  %233 = load i8*, i8** %10, align 8
  %234 = ptrtoint i8* %232 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = load i8*, i8** %16, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 %236
  store i8* %238, i8** %16, align 8
  br label %239

239:                                              ; preds = %222, %217
  %240 = load i8*, i8** %13, align 8
  %241 = load i8*, i8** %12, align 8
  %242 = icmp ugt i8* %240, %241
  br i1 %242, label %243, label %260

243:                                              ; preds = %239
  %244 = load i8*, i8** %16, align 8
  %245 = load i8*, i8** %12, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = load i8*, i8** %12, align 8
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = trunc i64 %250 to i32
  %252 = call i32 @strncpy(i8* %244, i8* %245, i32 %251)
  %253 = load i8*, i8** %13, align 8
  %254 = load i8*, i8** %12, align 8
  %255 = ptrtoint i8* %253 to i64
  %256 = ptrtoint i8* %254 to i64
  %257 = sub i64 %255, %256
  %258 = load i8*, i8** %16, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 %257
  store i8* %259, i8** %16, align 8
  br label %260

260:                                              ; preds = %243, %239
  %261 = load i8*, i8** %9, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %274

263:                                              ; preds = %260
  %264 = load i8*, i8** %16, align 8
  %265 = load i8*, i8** %9, align 8
  %266 = call i32 @strcpy(i8* %264, i8* %265)
  %267 = load i8*, i8** %9, align 8
  %268 = call i32 @strlen(i8* %267)
  %269 = load i8*, i8** %16, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %16, align 8
  %272 = load i8*, i8** %16, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %16, align 8
  store i8 47, i8* %272, align 1
  br label %274

274:                                              ; preds = %263, %260
  %275 = load i8*, i8** %16, align 8
  %276 = load i8*, i8** %14, align 8
  %277 = load i8*, i8** %15, align 8
  %278 = load i8*, i8** %14, align 8
  %279 = ptrtoint i8* %277 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  %282 = trunc i64 %281 to i32
  %283 = call i32 @strncpy(i8* %275, i8* %276, i32 %282)
  %284 = load i8*, i8** %15, align 8
  %285 = load i8*, i8** %14, align 8
  %286 = ptrtoint i8* %284 to i64
  %287 = ptrtoint i8* %285 to i64
  %288 = sub i64 %286, %287
  %289 = load i8*, i8** %16, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 %288
  store i8* %290, i8** %16, align 8
  %291 = load i32, i32* %17, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %274
  %294 = load i8*, i8** %16, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %16, align 8
  store i8 47, i8* %294, align 1
  br label %296

296:                                              ; preds = %293, %274
  %297 = load i8*, i8** %16, align 8
  store i8 0, i8* %297, align 1
  %298 = load i8*, i8** %6, align 8
  store i8* %298, i8** %5, align 8
  br label %299

299:                                              ; preds = %296, %34
  %300 = load i8*, i8** %5, align 8
  ret i8* %300
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
