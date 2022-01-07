; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c__hpcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c__hpcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i8**, i32 }

@TRY_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostent* (%struct.hostent*, i32*)* @_hpcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostent* @_hpcopy(%struct.hostent* %0, i32* %1) #0 {
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.hostent*, %struct.hostent** %4, align 8
  %16 = icmp eq %struct.hostent* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.hostent*, %struct.hostent** %4, align 8
  store %struct.hostent* %18, %struct.hostent** %3, align 8
  br label %269

19:                                               ; preds = %2
  store i32 40, i32* %9, align 4
  %20 = load %struct.hostent*, %struct.hostent** %4, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.hostent*, %struct.hostent** %4, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.hostent*, %struct.hostent** %4, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  store i8** %37, i8*** %8, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = add nsw i64 %53, 1
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = load i8**, i8*** %8, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %8, align 8
  br label %40

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ALIGN(i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load %struct.hostent*, %struct.hostent** %4, align 8
  %81 = getelementptr inbounds %struct.hostent, %struct.hostent* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ALIGN(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.hostent*, %struct.hostent** %4, align 8
  %85 = getelementptr inbounds %struct.hostent, %struct.hostent* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  store i8** %86, i8*** %8, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %94, %88
  %90 = load i8**, i8*** %8, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %8, align 8
  %92 = load i8*, i8** %90, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %89

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %68
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 8, %106
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @malloc(i32 %112)
  %114 = inttoptr i64 %113 to %struct.hostent*
  store %struct.hostent* %114, %struct.hostent** %6, align 8
  %115 = icmp eq %struct.hostent* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load i32, i32* @TRY_AGAIN, align 4
  %118 = load i32*, i32** %5, align 8
  store i32 %117, i32* %118, align 4
  store %struct.hostent* null, %struct.hostent** %3, align 8
  br label %269

119:                                              ; preds = %98
  %120 = load %struct.hostent*, %struct.hostent** %6, align 8
  %121 = getelementptr inbounds %struct.hostent, %struct.hostent* %120, i64 1
  %122 = bitcast %struct.hostent* %121 to i8*
  store i8* %122, i8** %7, align 8
  %123 = load %struct.hostent*, %struct.hostent** %4, align 8
  %124 = getelementptr inbounds %struct.hostent, %struct.hostent* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %141

127:                                              ; preds = %119
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.hostent*, %struct.hostent** %6, align 8
  %130 = getelementptr inbounds %struct.hostent, %struct.hostent* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load %struct.hostent*, %struct.hostent** %4, align 8
  %133 = getelementptr inbounds %struct.hostent, %struct.hostent* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strcpy(i8* %131, i8* %134)
  %136 = load i8*, i8** %7, align 8
  %137 = call i64 @strlen(i8* %136)
  %138 = add nsw i64 %137, 1
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 %138
  store i8* %140, i8** %7, align 8
  br label %144

141:                                              ; preds = %119
  %142 = load %struct.hostent*, %struct.hostent** %6, align 8
  %143 = getelementptr inbounds %struct.hostent, %struct.hostent* %142, i32 0, i32 0
  store i8* null, i8** %143, align 8
  br label %144

144:                                              ; preds = %141, %127
  %145 = load %struct.hostent*, %struct.hostent** %6, align 8
  %146 = bitcast %struct.hostent* %145 to i8*
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = bitcast i8* %149 to i8**
  %151 = load %struct.hostent*, %struct.hostent** %6, align 8
  %152 = getelementptr inbounds %struct.hostent, %struct.hostent* %151, i32 0, i32 1
  store i8** %150, i8*** %152, align 8
  %153 = load %struct.hostent*, %struct.hostent** %4, align 8
  %154 = getelementptr inbounds %struct.hostent, %struct.hostent* %153, i32 0, i32 1
  %155 = load i8**, i8*** %154, align 8
  store i8** %155, i8*** %8, align 8
  %156 = icmp ne i8** %155, null
  br i1 %156, label %157, label %191

157:                                              ; preds = %144
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %187, %157
  %159 = load i8**, i8*** %8, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %190

162:                                              ; preds = %158
  %163 = load i8**, i8*** %8, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %162
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.hostent*, %struct.hostent** %6, align 8
  %171 = getelementptr inbounds %struct.hostent, %struct.hostent* %170, i32 0, i32 1
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8*, i8** %172, i64 %175
  store i8* %169, i8** %176, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = load i8**, i8*** %8, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcpy(i8* %177, i8* %179)
  %181 = load i8*, i8** %7, align 8
  %182 = call i64 @strlen(i8* %181)
  %183 = add nsw i64 %182, 1
  %184 = load i8*, i8** %7, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %185, i8** %7, align 8
  br label %186

186:                                              ; preds = %168, %162
  br label %187

187:                                              ; preds = %186
  %188 = load i8**, i8*** %8, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i32 1
  store i8** %189, i8*** %8, align 8
  br label %158

190:                                              ; preds = %158
  br label %191

191:                                              ; preds = %190, %144
  %192 = load %struct.hostent*, %struct.hostent** %6, align 8
  %193 = getelementptr inbounds %struct.hostent, %struct.hostent* %192, i32 0, i32 1
  %194 = load i8**, i8*** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  store i8* null, i8** %197, align 8
  %198 = load %struct.hostent*, %struct.hostent** %6, align 8
  %199 = getelementptr inbounds %struct.hostent, %struct.hostent* %198, i32 0, i32 1
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %200, i64 %203
  %205 = bitcast i8** %204 to i8*
  store i8* %205, i8** %7, align 8
  %206 = load %struct.hostent*, %struct.hostent** %4, align 8
  %207 = getelementptr inbounds %struct.hostent, %struct.hostent* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.hostent*, %struct.hostent** %6, align 8
  %210 = getelementptr inbounds %struct.hostent, %struct.hostent* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.hostent*, %struct.hostent** %4, align 8
  %212 = getelementptr inbounds %struct.hostent, %struct.hostent* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.hostent*, %struct.hostent** %6, align 8
  %215 = getelementptr inbounds %struct.hostent, %struct.hostent* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load i8*, i8** %7, align 8
  %217 = bitcast i8* %216 to i8**
  %218 = load %struct.hostent*, %struct.hostent** %6, align 8
  %219 = getelementptr inbounds %struct.hostent, %struct.hostent* %218, i32 0, i32 3
  store i8** %217, i8*** %219, align 8
  %220 = load %struct.hostent*, %struct.hostent** %4, align 8
  %221 = getelementptr inbounds %struct.hostent, %struct.hostent* %220, i32 0, i32 3
  %222 = load i8**, i8*** %221, align 8
  store i8** %222, i8*** %8, align 8
  %223 = icmp ne i8** %222, null
  br i1 %223, label %224, label %261

224:                                              ; preds = %191
  %225 = load %struct.hostent*, %struct.hostent** %6, align 8
  %226 = getelementptr inbounds %struct.hostent, %struct.hostent* %225, i32 0, i32 3
  %227 = load i8**, i8*** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = bitcast i8** %231 to i8*
  store i8* %232, i8** %7, align 8
  store i32 0, i32* %14, align 4
  br label %233

233:                                              ; preds = %257, %224
  %234 = load i8**, i8*** %8, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %260

237:                                              ; preds = %233
  %238 = load i8*, i8** %7, align 8
  %239 = load %struct.hostent*, %struct.hostent** %6, align 8
  %240 = getelementptr inbounds %struct.hostent, %struct.hostent* %239, i32 0, i32 3
  %241 = load i8**, i8*** %240, align 8
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i8*, i8** %241, i64 %244
  store i8* %238, i8** %245, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = load i8**, i8*** %8, align 8
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.hostent*, %struct.hostent** %4, align 8
  %250 = getelementptr inbounds %struct.hostent, %struct.hostent* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @memcpy(i8* %246, i8* %248, i32 %251)
  %253 = load i32, i32* %10, align 4
  %254 = load i8*, i8** %7, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %7, align 8
  br label %257

257:                                              ; preds = %237
  %258 = load i8**, i8*** %8, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i32 1
  store i8** %259, i8*** %8, align 8
  br label %233

260:                                              ; preds = %233
  br label %261

261:                                              ; preds = %260, %191
  %262 = load %struct.hostent*, %struct.hostent** %6, align 8
  %263 = getelementptr inbounds %struct.hostent, %struct.hostent* %262, i32 0, i32 3
  %264 = load i8**, i8*** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  store i8* null, i8** %267, align 8
  %268 = load %struct.hostent*, %struct.hostent** %6, align 8
  store %struct.hostent* %268, %struct.hostent** %3, align 8
  br label %269

269:                                              ; preds = %261, %116, %17
  %270 = load %struct.hostent*, %struct.hostent** %3, align 8
  ret %struct.hostent* %270
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ALIGN(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
