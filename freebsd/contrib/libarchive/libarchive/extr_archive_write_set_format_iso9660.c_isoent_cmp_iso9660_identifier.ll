; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_cmp_iso9660_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_cmp_iso9660_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isoent*, %struct.isoent*)* @isoent_cmp_iso9660_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_cmp_iso9660_identifier(%struct.isoent* %0, %struct.isoent* %1) #0 {
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
  %11 = getelementptr inbounds %struct.isoent, %struct.isoent* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.isoent*, %struct.isoent** %5, align 8
  %14 = getelementptr inbounds %struct.isoent, %struct.isoent* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.isoent*, %struct.isoent** %4, align 8
  %17 = getelementptr inbounds %struct.isoent, %struct.isoent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.isoent*, %struct.isoent** %5, align 8
  %21 = getelementptr inbounds %struct.isoent, %struct.isoent* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.isoent*, %struct.isoent** %5, align 8
  %26 = getelementptr inbounds %struct.isoent, %struct.isoent* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @memcmp(i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %269

37:                                               ; preds = %28
  %38 = load %struct.isoent*, %struct.isoent** %4, align 8
  %39 = getelementptr inbounds %struct.isoent, %struct.isoent* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.isoent*, %struct.isoent** %5, align 8
  %42 = getelementptr inbounds %struct.isoent, %struct.isoent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %7, align 8
  %50 = load %struct.isoent*, %struct.isoent** %5, align 8
  %51 = getelementptr inbounds %struct.isoent, %struct.isoent* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.isoent*, %struct.isoent** %4, align 8
  %54 = getelementptr inbounds %struct.isoent, %struct.isoent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %73, %45
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 32, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 32, %71
  store i32 %72, i32* %3, align 4
  br label %269

73:                                               ; preds = %61
  br label %57

74:                                               ; preds = %57
  br label %114

75:                                               ; preds = %37
  %76 = load %struct.isoent*, %struct.isoent** %4, align 8
  %77 = getelementptr inbounds %struct.isoent, %struct.isoent* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.isoent*, %struct.isoent** %5, align 8
  %80 = getelementptr inbounds %struct.isoent, %struct.isoent* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %6, align 8
  %88 = load %struct.isoent*, %struct.isoent** %4, align 8
  %89 = getelementptr inbounds %struct.isoent, %struct.isoent* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.isoent*, %struct.isoent** %5, align 8
  %92 = getelementptr inbounds %struct.isoent, %struct.isoent* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %111, %83
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 32, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 -1
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 32
  store i32 %110, i32* %3, align 4
  br label %269

111:                                              ; preds = %99
  br label %95

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %75
  br label %114

114:                                              ; preds = %113, %74
  %115 = load %struct.isoent*, %struct.isoent** %4, align 8
  %116 = getelementptr inbounds %struct.isoent, %struct.isoent* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.isoent*, %struct.isoent** %5, align 8
  %121 = getelementptr inbounds %struct.isoent, %struct.isoent* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %269

125:                                              ; preds = %119, %114
  %126 = load %struct.isoent*, %struct.isoent** %4, align 8
  %127 = getelementptr inbounds %struct.isoent, %struct.isoent* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.isoent*, %struct.isoent** %5, align 8
  %132 = getelementptr inbounds %struct.isoent, %struct.isoent* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %269

136:                                              ; preds = %130, %125
  %137 = load %struct.isoent*, %struct.isoent** %4, align 8
  %138 = getelementptr inbounds %struct.isoent, %struct.isoent* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp sle i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %3, align 4
  br label %269

142:                                              ; preds = %136
  %143 = load %struct.isoent*, %struct.isoent** %5, align 8
  %144 = getelementptr inbounds %struct.isoent, %struct.isoent* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %269

148:                                              ; preds = %142
  %149 = load %struct.isoent*, %struct.isoent** %4, align 8
  %150 = getelementptr inbounds %struct.isoent, %struct.isoent* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.isoent*, %struct.isoent** %5, align 8
  %154 = getelementptr inbounds %struct.isoent, %struct.isoent* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.isoent*, %struct.isoent** %5, align 8
  %159 = getelementptr inbounds %struct.isoent, %struct.isoent* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %157, %148
  %162 = load %struct.isoent*, %struct.isoent** %4, align 8
  %163 = getelementptr inbounds %struct.isoent, %struct.isoent* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.isoent*, %struct.isoent** %4, align 8
  %166 = getelementptr inbounds %struct.isoent, %struct.isoent* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  store i8* %169, i8** %6, align 8
  %170 = load %struct.isoent*, %struct.isoent** %5, align 8
  %171 = getelementptr inbounds %struct.isoent, %struct.isoent* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.isoent*, %struct.isoent** %5, align 8
  %174 = getelementptr inbounds %struct.isoent, %struct.isoent* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  store i8* %177, i8** %7, align 8
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %180, label %190

180:                                              ; preds = %161
  %181 = load i8*, i8** %6, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @memcmp(i8* %181, i8* %182, i32 %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %3, align 4
  br label %269

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %161
  %191 = load %struct.isoent*, %struct.isoent** %4, align 8
  %192 = getelementptr inbounds %struct.isoent, %struct.isoent* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.isoent*, %struct.isoent** %5, align 8
  %195 = getelementptr inbounds %struct.isoent, %struct.isoent* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %228

198:                                              ; preds = %190
  %199 = load i32, i32* %9, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %7, align 8
  %203 = load %struct.isoent*, %struct.isoent** %5, align 8
  %204 = getelementptr inbounds %struct.isoent, %struct.isoent* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.isoent*, %struct.isoent** %4, align 8
  %207 = getelementptr inbounds %struct.isoent, %struct.isoent* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %205, %208
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %226, %198
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %9, align 4
  %213 = icmp ne i32 %211, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %210
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  %217 = load i8, i8* %215, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 32, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i8*, i8** %7, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 -1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = sub nsw i32 32, %224
  store i32 %225, i32* %3, align 4
  br label %269

226:                                              ; preds = %214
  br label %210

227:                                              ; preds = %210
  br label %267

228:                                              ; preds = %190
  %229 = load %struct.isoent*, %struct.isoent** %4, align 8
  %230 = getelementptr inbounds %struct.isoent, %struct.isoent* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.isoent*, %struct.isoent** %5, align 8
  %233 = getelementptr inbounds %struct.isoent, %struct.isoent* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp sgt i32 %231, %234
  br i1 %235, label %236, label %266

236:                                              ; preds = %228
  %237 = load i32, i32* %9, align 4
  %238 = load i8*, i8** %6, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %6, align 8
  %241 = load %struct.isoent*, %struct.isoent** %4, align 8
  %242 = getelementptr inbounds %struct.isoent, %struct.isoent* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.isoent*, %struct.isoent** %5, align 8
  %245 = getelementptr inbounds %struct.isoent, %struct.isoent* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %243, %246
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %264, %236
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %9, align 4
  %251 = icmp ne i32 %249, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %248
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %6, align 8
  %255 = load i8, i8* %253, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp ne i32 32, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %252
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 -1
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = sub nsw i32 %262, 32
  store i32 %263, i32* %3, align 4
  br label %269

264:                                              ; preds = %252
  br label %248

265:                                              ; preds = %248
  br label %266

266:                                              ; preds = %265, %228
  br label %267

267:                                              ; preds = %266, %227
  %268 = load i32, i32* %8, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %267, %258, %220, %187, %147, %141, %135, %124, %105, %67, %35
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
