; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_cmp_joliet_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_cmp_joliet_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isoent*, %struct.isoent*)* @isoent_cmp_joliet_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_cmp_joliet_identifier(%struct.isoent* %0, %struct.isoent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isoent*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isoent* %0, %struct.isoent** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  %10 = load %struct.isoent*, %struct.isoent** %4, align 8
  %11 = getelementptr inbounds %struct.isoent, %struct.isoent* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  %14 = load %struct.isoent*, %struct.isoent** %5, align 8
  %15 = getelementptr inbounds %struct.isoent, %struct.isoent* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load %struct.isoent*, %struct.isoent** %4, align 8
  %19 = getelementptr inbounds %struct.isoent, %struct.isoent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.isoent*, %struct.isoent** %5, align 8
  %23 = getelementptr inbounds %struct.isoent, %struct.isoent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.isoent*, %struct.isoent** %5, align 8
  %28 = getelementptr inbounds %struct.isoent, %struct.isoent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @memcmp(i8* %31, i8* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %271

39:                                               ; preds = %30
  %40 = load %struct.isoent*, %struct.isoent** %4, align 8
  %41 = getelementptr inbounds %struct.isoent, %struct.isoent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.isoent*, %struct.isoent** %5, align 8
  %44 = getelementptr inbounds %struct.isoent, %struct.isoent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %7, align 8
  %52 = load %struct.isoent*, %struct.isoent** %5, align 8
  %53 = getelementptr inbounds %struct.isoent, %struct.isoent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.isoent*, %struct.isoent** %4, align 8
  %56 = getelementptr inbounds %struct.isoent, %struct.isoent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %75, %47
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 0, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %271

75:                                               ; preds = %63
  br label %59

76:                                               ; preds = %59
  br label %115

77:                                               ; preds = %39
  %78 = load %struct.isoent*, %struct.isoent** %4, align 8
  %79 = getelementptr inbounds %struct.isoent, %struct.isoent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.isoent*, %struct.isoent** %5, align 8
  %82 = getelementptr inbounds %struct.isoent, %struct.isoent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %6, align 8
  %90 = load %struct.isoent*, %struct.isoent** %4, align 8
  %91 = getelementptr inbounds %struct.isoent, %struct.isoent* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.isoent*, %struct.isoent** %5, align 8
  %94 = getelementptr inbounds %struct.isoent, %struct.isoent* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %112, %85
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 0, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %271

112:                                              ; preds = %101
  br label %97

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %77
  br label %115

115:                                              ; preds = %114, %76
  %116 = load %struct.isoent*, %struct.isoent** %4, align 8
  %117 = getelementptr inbounds %struct.isoent, %struct.isoent* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.isoent*, %struct.isoent** %5, align 8
  %122 = getelementptr inbounds %struct.isoent, %struct.isoent* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %271

126:                                              ; preds = %120, %115
  %127 = load %struct.isoent*, %struct.isoent** %4, align 8
  %128 = getelementptr inbounds %struct.isoent, %struct.isoent* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.isoent*, %struct.isoent** %5, align 8
  %133 = getelementptr inbounds %struct.isoent, %struct.isoent* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %271

137:                                              ; preds = %131, %126
  %138 = load %struct.isoent*, %struct.isoent** %4, align 8
  %139 = getelementptr inbounds %struct.isoent, %struct.isoent* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 2
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 -1, i32* %3, align 4
  br label %271

143:                                              ; preds = %137
  %144 = load %struct.isoent*, %struct.isoent** %5, align 8
  %145 = getelementptr inbounds %struct.isoent, %struct.isoent* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp sle i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 1, i32* %3, align 4
  br label %271

149:                                              ; preds = %143
  %150 = load %struct.isoent*, %struct.isoent** %4, align 8
  %151 = getelementptr inbounds %struct.isoent, %struct.isoent* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.isoent*, %struct.isoent** %5, align 8
  %155 = getelementptr inbounds %struct.isoent, %struct.isoent* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load %struct.isoent*, %struct.isoent** %5, align 8
  %160 = getelementptr inbounds %struct.isoent, %struct.isoent* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %158, %149
  %163 = load %struct.isoent*, %struct.isoent** %4, align 8
  %164 = getelementptr inbounds %struct.isoent, %struct.isoent* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.isoent*, %struct.isoent** %4, align 8
  %167 = getelementptr inbounds %struct.isoent, %struct.isoent* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %165, %169
  %171 = inttoptr i64 %170 to i8*
  store i8* %171, i8** %6, align 8
  %172 = load %struct.isoent*, %struct.isoent** %5, align 8
  %173 = getelementptr inbounds %struct.isoent, %struct.isoent* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.isoent*, %struct.isoent** %5, align 8
  %176 = getelementptr inbounds %struct.isoent, %struct.isoent* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %174, %178
  %180 = inttoptr i64 %179 to i8*
  store i8* %180, i8** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %193

183:                                              ; preds = %162
  %184 = load i8*, i8** %6, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @memcmp(i8* %184, i8* %185, i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %3, align 4
  br label %271

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %162
  %194 = load %struct.isoent*, %struct.isoent** %4, align 8
  %195 = getelementptr inbounds %struct.isoent, %struct.isoent* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.isoent*, %struct.isoent** %5, align 8
  %198 = getelementptr inbounds %struct.isoent, %struct.isoent* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %231

201:                                              ; preds = %193
  %202 = load i32, i32* %9, align 4
  %203 = load i8*, i8** %7, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %7, align 8
  %206 = load %struct.isoent*, %struct.isoent** %5, align 8
  %207 = getelementptr inbounds %struct.isoent, %struct.isoent* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.isoent*, %struct.isoent** %4, align 8
  %210 = getelementptr inbounds %struct.isoent, %struct.isoent* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %208, %211
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %229, %201
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %9, align 4
  %216 = icmp ne i32 %214, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %7, align 8
  %220 = load i8, i8* %218, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp ne i32 0, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load i8*, i8** %7, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 -1
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %3, align 4
  br label %271

229:                                              ; preds = %217
  br label %213

230:                                              ; preds = %213
  br label %269

231:                                              ; preds = %193
  %232 = load %struct.isoent*, %struct.isoent** %4, align 8
  %233 = getelementptr inbounds %struct.isoent, %struct.isoent* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.isoent*, %struct.isoent** %5, align 8
  %236 = getelementptr inbounds %struct.isoent, %struct.isoent* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp sgt i32 %234, %237
  br i1 %238, label %239, label %268

239:                                              ; preds = %231
  %240 = load i32, i32* %9, align 4
  %241 = load i8*, i8** %6, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %6, align 8
  %244 = load %struct.isoent*, %struct.isoent** %4, align 8
  %245 = getelementptr inbounds %struct.isoent, %struct.isoent* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.isoent*, %struct.isoent** %5, align 8
  %248 = getelementptr inbounds %struct.isoent, %struct.isoent* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %246, %249
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %266, %239
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %9, align 4
  %254 = icmp ne i32 %252, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %251
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %6, align 8
  %258 = load i8, i8* %256, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ne i32 0, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load i8*, i8** %6, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 -1
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  store i32 %265, i32* %3, align 4
  br label %271

266:                                              ; preds = %255
  br label %251

267:                                              ; preds = %251
  br label %268

268:                                              ; preds = %267, %231
  br label %269

269:                                              ; preds = %268, %230
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %269, %261, %223, %190, %148, %142, %136, %125, %107, %69, %37
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
